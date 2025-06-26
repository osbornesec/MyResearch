# Understanding Code Assistance in Zed

---
**Source URL**: https://southbridge-research.notion.site/Understanding-Code-Assistance-in-Zed-1775fec70db1808996ffdd42a5dc7554
**Capture Date**: 2025-06-20
**Content Type**: Technical Analysis / Code Architecture Documentation
**Publisher**: Southbridge Research

---

## 1. Extraction

Zed's code extraction focuses on extracting code from the buffer, code blocks, and metadata from LLM output. Here's how they do it, illustrated with TypeScript examples:

### Extracting Code Context from Buffer:

**Concept**: Before sending to the LLM, Zed extracts relevant code snippets around the user's cursor. This is done by using the Buffer's API to get text and position information.

**TypeScript Analogy**:
```typescript
interface TextRange {
  start: number;
  end: number;
}

function extractCodeSnippet(
    bufferText: string,
    selectionRange: TextRange
): string {
    const codeBefore = bufferText.slice(0, selectionRange.start);
    const codeAfter = bufferText.slice(selectionRange.end);

    return `${codeBefore}\n<selection>\n${codeAfter}`;
}

const bufferText = `
    function add(a: number, b: number) {
      console.log("start");
      const sum = a + b;
      return sum;
    }
    console.log("end")
  `;
const selectionRange = { start: 45, end: 60 };
const codeSnippet = extractCodeSnippet(bufferText, selectionRange);
// `codeSnippet` will be:
// `
//     function add(a: number, b: number) {
//       console.log("start");
//       <selection>
//       return sum;
//     }
//     console.log("end")
//   `
```

**Zed Implementation**: This is reflected in BufferCodegen's logic, where the code extracts the text around the selection range and inserts it into the LanguageModelRequest.

### Extracting Text from Code Blocks:

**Concept**: Zed parses the buffer using tree-sitter to understand the structure of code. This is particularly important when the user has a code block selected, because it allows extracting the text from the code block instead of sending the surrounding fence (e.g., ```).

**TypeScript Analogy**:
```typescript
interface CodeBlockNode {
  start: number;
  end: number;
  kind: string;
  children?: CodeBlockNode[];
}

function extractCodeFromBlock(bufferText: string, offset: number, rootNode: CodeBlockNode): string | null {
  if(rootNode.kind === "fenced_code_block") {
      for (const child of rootNode.children || []) {
          if (child.kind === "code_fence_content" && child.start <= offset && offset <= child.end) {
            return bufferText.slice(child.start, child.end);
          }
      }
    }
    return null;
}

const bufferText = `
    \`\`\`typescript
    function add(a: number, b: number): number {
      return a + b;
    }
    \`\`\`
  `;
 const rootNode : CodeBlockNode = {
     kind: "fenced_code_block",
      start: 0,
      end: 100,
      children: [{
         kind: "code_fence_content",
         start: 19,
         end: 85
     }]
 }

const code = extractCodeFromBlock(bufferText, 40, rootNode);
// code will be:
// `
//     function add(a: number, b: number): number {
//       return a + b;
//     }
//  `
```

**Zed Implementation**: This logic is used in find_surrounding_code_block in crates/assistant/src/assistant_panel.rs and in crates/assistant2/src/buffer_codegen.rs.

### Extracting Tool Call Data:

**Concept**: When the LLM indicates a tool should be used, Zed extracts the tool name and input parameters from the completion.

**TypeScript Analogy**:
```typescript
interface ToolUseEvent {
  toolName: string;
  input: string;
}

function extractToolUse(llmOutput: string): ToolUseEvent | null {
  const toolUseRegex = /<tool name="(.*?)".*?input="(.*?)"/g;
  const match = toolUseRegex.exec(llmOutput);
  if (match) {
      return {
          toolName: match[1],
          input: match[2],
      }
  } else {
    return null;
  }
}

const llmOutput = "This is a text with <tool name='search' input='hello world'/>";
const toolUse = extractToolUse(llmOutput);
// toolUse will be: { toolName: 'search', input: 'hello world' }
```

**Zed Implementation**: This process is done in crates/assistant2/src/thread.rs and crates/language_models/src/provider/anthropic.rs.

### Parsing Structured Output:

**Concept**: When performing a code edit, Zed expects a JSON-like output from the LLM, which it then deserializes using serde.

**TypeScript Analogy**:
```typescript
interface EditInstruction {
  path: string;
  oldText: string;
  newText: string;
  operation: "insert" | "replace" | "delete";
}

function parseEditInstructions(llmOutput: string): EditInstruction[] {
  try {
    return JSON.parse(llmOutput);
  } catch (e) {
    console.error("Failed to parse", llmOutput);
    return [];
  }
}

const llmOutput = `
    [
      {
        "path": "src/main.rs",
        "oldText": "console.log",
        "newText": "console.info",
        "operation": "replace"
      }
    ]
  `;
const editInstructions = parseEditInstructions(llmOutput);
// `editInstructions` will be:
// `
// [
//     {
//       path: 'src/main.rs',
//       oldText: 'console.log',
//       newText: 'console.info',
//       operation: 'replace'
//     }
//   ]
// `
```

**Zed Implementation**: This logic can be found in crates/assistant2/src/buffer_codegen.rs.

### XML Tag Parsing:

**Concept**: Zed also uses XML-like tags to parse the output from LLMs to provide information about the output, like if it contains a patch or a title.

**TypeScript Analogy**:
```typescript
interface XmlTag {
  kind: string;
  range: { start: number; end: number };
  isOpenTag: boolean;
}

function parseXmlTags(text: string): XmlTag[] {
  const xmlTagRegex = /<(\/)?(\\w+)(.*?)>/g;
  const tags = [];
  let match;
  while ((match = xmlTagRegex.exec(text)) !== null) {
    const isOpenTag = match[1] !== "/";
    tags.push({
      kind: match[2],
      range: { start: match.index, end: match.index + match[0].length },
      isOpenTag,
    });
  }
  return tags;
}

const text = `
<patch>
    <title>Refactor foo</title>
    <edit>
        <path>src/main.rs</path>
        <oldText>console.log</oldText>
        <newText>console.info</newText>
        <operation>replace</operation>
    </edit>
</patch>
`;
const tags = parseXmlTags(text);
// tags will contain objects representing the different tags in the xml-like text.
```

**Zed Implementation**: The parsing of these XML tags is found in crates/assistant2/src/context.rs.

## 2. Prompt Engineering

Zed uses a PromptBuilder to dynamically create prompts. Here's how prompt engineering is happening:

- **Context Inclusion**: Prompts include code snippets before and after the user selection. This context is captured using MultiBuffer and Range<Offset> and converted into text.
- **Structured Output**: The prompts are written in a way that encourages structured output (e.g., JSON) from the LLM, allowing for easier parsing and application of edits.
- **User Intent**: The user_prompt is included in the generated prompt, allowing the user to guide the LLM's behavior. The user prompt can be just the key binding that is pressed or a text written in the editor.
- **System Prompt**: A system prompt is added to the request when summarizing conversations in crates/assistant2/src/thread.rs using the summarize function.
- **Prompt Templates**: In the prompts module, you can see a specific template used for generating the inline transformation prompt. This template will be used to generate the prompt, taking in a user prompt, language, and the content of the buffer.

**TypeScript Analogy**:
```typescript
function buildEditPrompt(
    codeBefore: string,
    userPrompt: string,
    codeAfter: string,
    language?: string
): string {
  let language_line = ""
  if (language) {
    language_line = `\`\`\`${language}\n`
  }
    return `
    Given the following code snippet, perform the requested change.

    ${language_line}
    ${codeBefore}
    ${language_line.trim()}
    User: ${userPrompt}

    ${language_line}
    ${codeAfter}
    ${language_line.trim()}
    `;
}
const prompt = buildEditPrompt(
`
    function add(a: number, b: number) {
      console.log("start");`,
"change console.log to console.info",
`
      return sum;
    }
`,
    "typescript"
);
  // prompt will be a string that combines the context with the user's instruction.
```

## 3. System Prompt Logic

- **Limited System Prompts**: The primary use of system prompts is for summarizing threads using the summarize function in crates/assistant2/src/thread.rs, which adds a system prompt that instructs the LLM to summarize the conversation in a few words.
- **No Explicit System Prompt Customization**: The code does not show evidence of a mechanism for users to define or customize system prompts. The prompts are primarily used internally by Zed.

**TypeScript Analogy**:
```javascript
function buildSystemPromptForSummary(): string {
    return "Generate a concise 3-7 word title for this conversation, omitting punctuation. Go straight to the title, without any preamble and prefix like `Here's a concise suggestion:...` or `Title:`";
}

const prompt = buildSystemPromptForSummary();
// prompt will be a string that instructs the LLM to generate a short title.
```

## 4. Structured Output

Zed leverages structured output, primarily in the form of JSON, to process LLM responses efficiently:

- **Tool Call Arguments**: The input for tools is passed as a JSON object, and the output is expected to be in JSON format. The code uses serde_json to serialize the input and deserialize the result.
- **Code Edits**: The code expects LLMs to return code edits in a structured format, which can be deserialized to generate changes to the buffer. This structured format often includes path, oldText, newText, and operation properties.

**TypeScript Analogy**:
```javascript
interface ToolUseResponse {
    tool_use_id: string;
    content: string;
}

interface CodeEdit {
    path: string;
    oldText: string;
    newText: string;
    operation: "insert" | "replace" | "delete";
}

function processLlmOutput(llmOutput: string): ToolUseResponse | CodeEdit[] {
    try {
      const json = JSON.parse(llmOutput);
        if (Array.isArray(json)) {
            return json as CodeEdit[];
        } else {
            return json as ToolUseResponse;
        }
    } catch(e) {
        console.error("Invalid json: ", llmOutput)
    }
    return null;
}

const llmOutputForToolUse = '{"tool_use_id": "123", "content": "search result"}';
const toolUseResponse = processLlmOutput(llmOutputForToolUse) as ToolUseResponse;
// toolUseResponse will be: { tool_use_id: '123', content: 'search result' }

const llmOutputForCodeEdit = `
    [
      {
        "path": "src/main.rs",
        "oldText": "console.log",
        "newText": "console.info",
        "operation": "replace"
      }
    ]
  `;
const editInstructions = processLlmOutput(llmOutputForCodeEdit) as CodeEdit[];
// editInstructions will be:
// `
// [
//     {
//       path: 'src/main.rs',
//       oldText: 'console.log',
//       newText: 'console.info',
//       operation: 'replace'
//     }
//   ]
// `
```

## 5. Tool Calling

Zed implements tool calling to allow the LLM to use external functionality. Here's how this works:

- **Tool Definition**: The Tool trait in the assistant_tool crate defines the interface for a tool, including its name, description, and schema for its input.
- **Tool Registration**: The ToolWorkingSet keeps track of all available tools.
- **Tool Use**: When a tool call is received from the LLM (via LanguageModelCompletionEvent::ToolUse), it is added to the pending_tool_uses_by_id map in the Thread.
- **Execution**: The Thread struct will invoke the relevant tool via the run method on the struct that implements the Tool trait.
- **Tool Results**: The result of a tool call is inserted into the buffer as a ToolResult, which is also passed back to the LLM in subsequent prompts.

**TypeScript Analogy**:
```typescript
    interface Tool {
        name: string;
        description: string;
        schema: any;
        run(input: any): Promise<string>;
    }

    async function processToolUse(toolUse: LanguageModelToolUse, availableTools: Tool[]): Promise<string | null> {
        const tool = availableTools.find(tool => tool.name === toolUse.name);
        if (!tool) {
            console.error("tool not found")
            return null
        }
        return tool.run(toolUse.input);
    }

    const searchTool : Tool = {
        name: "search",
        description: "Search the web",
        schema: {},
        run: async (input: string) => {
            console.log("Searching for", input);
            return "search result"
        }
    };
    const toolUse: LanguageModelToolUse = {
        id: "123",
        name: "search",
        input: JSON.parse('{"query": "hello"}'),
    };
    processToolUse(toolUse, [searchTool])
    // the result of processToolUse will be: "search result", and will be inserted into the buffer.
```

## 6. Streaming

Zed uses streaming extensively for a more responsive user experience. Here's how they handle it:

- **LLM Streaming**: LLMs that support streaming (e.g., Anthropic) return results as a stream of LanguageModelCompletionEvents.
- **Incremental Rendering**: The code processes these events as they are received and applies incremental updates to the UI and buffer.
- **Diffing**: The StreamingDiff struct in crates/assistant2/src/streaming_diff.rs efficiently calculates the changes required for each incoming chunk of text.
- **UI Updates**: The ActiveThread struct in crates/assistant2/src/active_thread.rs renders messages as a list, so that when a stream comes in and a text update occurs, the UI is also updated incrementally.

**TypeScript Analogy**:
```typescript
    interface LlmStreamEvent {
        text?: string;
          toolUse?: {
             id: string;
             name: string;
             input: any;
          };
          done?: boolean
      }

          async function processLlmStream(llmStream: AsyncGenerator<LlmStreamEvent>): Promise<void> {
            for await (const event of llmStream) {
              if (event.text) {
                console.log("LLM text:", event.text);
                // Update the UI or buffer with this text
              }
              if (event.toolUse) {
                console.log("LLM tool use:", event.toolUse)
                // Execute tool call
              }
              if(event.done){
                  console.log("LLM stream finished");
              }
            }
          }

          // Example usage (assuming llmStream is obtained from an API call):
          // processLlmStream(llmStream);
```

This illustrates how a stream of events would be processed, applying text changes and handling tool calls as they arrive.

## 7. XML vs. JSON for Structured Output

You asked if Zed switches between XML and JSON or if it uses the same format for different use cases. Based on the code, here's what I can infer:

### JSON for Tool Calls and Responses
Zed primarily uses JSON for structured communication with the LLM when it comes to tool calls and their responses.
This makes sense because JSON is a common format for data interchange and has good support for deserialization in Rust via the serde_json crate.

### XML-Like Tags for Code Edits and Context Structure
Zed uses custom parsing logic to extract XML-like tags from the text in order to define edits and structured context.
The specific tags are defined in crates/assistant/src/context.rs and include tags like `<patch>`, `<edit>`, `<title>`, `<path>`, `<oldText>`, `<newText>`, `<operation>`, `<description>`.

### Why not just use JSON for everything?
- **Text-Based Inlining**: The XML tags are used for edits that are injected back into the code. It's easier to inline these tags within a text string, rather than have a JSON object, which would require parsing, more complicated diffing, and would be difficult to work with in a text-based editor.
- **Custom Parsing**: The custom parsing logic allows them to have more control over how the output is structured and to enforce specific requirements.
- **Simplicity**: The XML tags are simpler to parse than JSON in cases where the structure is not too complex.
- **Historical Reasons**: This decision could have been made based on historical reasons or to match an existing system.

### Specific Usage of XML-Like Tags:
- `<patch>`: This tag defines a block of code that can be applied to the editor. It may contain edits or other relevant information.
- `<edit>`: This tag represents a single edit to a file. Inside of it, you'll find information on the file path, the old text that needs to be removed, and the new text that should replace it, and the operation to apply.
- `<title>`: The title of the patch.
- `<path>`: The file path for an edit.
- `<oldText>`: The text that will be removed by an edit.
- `<newText>`: The text that will replace the oldText in an edit.
- `<operation>`: The type of edit to perform (e.g., insert, replace, or delete).
- `<description>`: A description of an edit.

**TypeScript Analogy**:
```typescript
function extractEditsFromXml(xmlText: string): { path: string, oldText: string, newText: string, operation: string}[] {
    const edits = [];
    const editRegex = /<edit>(.*?)<\\/edit>/gs;
    let editMatch;
    while ((editMatch = editRegex.exec(xmlText)) !== null) {
        let path = "";
        let oldText = "";
        let newText = "";
        let operation = "";

        const pathRegex = /<path>(.*?)<\\/path>/g;
         let pathMatch = pathRegex.exec(editMatch[1]);
         if (pathMatch) {
             path = pathMatch[1];
         }
        const oldTextRegex = /<oldText>(.*?)<\\/oldText>/g;
         let oldTextMatch = oldTextRegex.exec(editMatch[1]);
         if (oldTextMatch) {
             oldText = oldTextMatch[1];
         }
        const newTextRegex = /<newText>(.*?)<\\/newText>/g;
         let newTextMatch = newTextRegex.exec(editMatch[1]);
         if (newTextMatch) {
             newText = newTextMatch[1];
         }
        const operationRegex = /<operation>(.*?)<\\/operation>/g;
         let operationMatch = operationRegex.exec(editMatch[1]);
        if (operationMatch) {
            operation = operationMatch[1];
        }
         edits.push({
            path,
            oldText,
            newText,
            operation,
        });
    }
    return edits;
}
```

## Code Understanding

### Files involved
```python
crates/assistant2/src/active_thread.rs 
crates/assistant2/src/thread.rs 
crates/assistant2/src/inline_assistant.rs 
crates/assistant2/src/buffer_codegen.rs 
crates/assistant2/src/terminal_codegen.rs 
crates/language_model 
crates/language_models 
crates/copilot 
crates/language_models/src/provider/anthropic.rs 
crates/language_models/src/provider/open_ai.rs 
crates/assistant/src/assistant.rs 
crates/assistant/src/context.rs 
crates/assistant/src/assistant_panel.rs 
crates/assistant/src/slash_command/file_command.rs 
crates/assistant_slash_command/src/extension_slash_command.rs 
crates/assistant2/src/context_store.rs 
crates/assistant2/src/context_strip.rs 
crates/semantic_index/src/embedding/open_ai.rs
```

### Key Areas and Concepts

Based on the files, here's a breakdown of the main areas involved in AI-powered code completion and editing within Zed:

- **crates/assistant2/src/active_thread.rs**: This file defines ActiveThread, which manages the state of a conversation thread with an LLM. Crucially, it uses a Model<Thread>, which is the core of the interaction. It also includes logic for rendering the UI of an active thread and a list of messages. This is the main user-facing UI component.

- **crates/assistant2/src/thread.rs**: This file defines Thread, which models the state of a conversation with the LLM. It holds messages, context, and performs the actual communication with a language model. Crucially, the Thread also has the logic for parsing and running slash commands (/) and tool calls.

- **crates/assistant2/src/inline_assistant.rs**: This defines InlineAssistant, which provides inline code suggestions. It also includes logic for authenticating, handling errors, and displaying those inline assists.

- **crates/assistant2/src/buffer_codegen.rs**: This file houses BufferCodegen, which is used to generate code completions in the editor. It's a core component for performing edits and interacting with language_model crate.

- **crates/assistant2/src/terminal_codegen.rs**: This file houses TerminalCodegen, which generates code completions within terminal views. It is similar to BufferCodegen but operates within a terminal context.

- **crates/language_model**: This crate defines the core interfaces for interacting with language models, including LanguageModel, LanguageModelRequest, LanguageModelCompletionEvent, and so on.

- **crates/language_models**: This crate contains the implementations for various LLMs. For example, crates/language_models/src/provider/anthropic.rs implements the interface for Anthropic models and crates/language_models/src/provider/open_ai.rs implements the interface for Open AI models.

- **crates/copilot**: This crate handles the Copilot language server integration, including authentication and code completion.

### How AI-Based Code Completion & Editing Works

Let's break down the process of how the AI-based code completion and editing would work in Zed, based on the code:

1. **Triggering a Completion**:
   - In crates/assistant2/src/inline_assistant.rs, the assist function is triggered when a user initiates an inline assist via a keybinding (like zed_actions::InlineAssist). The resolve_inline_assist_target function determines if the focus is on the editor or terminal.
   - If the focus is on the editor, the relevant Editor is passed to InlineAssistant::assist
   - If the focus is on a terminal, the relevant TerminalView is passed to TerminalInlineAssistant::assist
   - The assist function then initiates a Codegen or TerminalCodegen to generate code changes.

2. **Generating Code Completions**:
   - The BufferCodegen struct in crates/assistant2/src/buffer_codegen.rs receives a LanguageModelRequest (built in the assist function) and uses a specific LanguageModel to generate completions.
   - The stream_completion method of the LanguageModel is called.
   - This method is defined in the provider crates like crates/language_models/src/provider/anthropic.rs or crates/language_models/src/provider/open_ai.rs, and interacts with the LLM's API.
   - The response is streamed back as LanguageModelCompletionEvents.
   - BufferCodegen applies those changes using Editor's edit API.
   - In the case of Terminal, the TerminalCodegen struct in crates/assistant2/src/terminal_codegen.rs will take a LanguageModelRequest, send it to a language model, and insert the results into the terminal.

3. **Displaying Inline Completions**:
   - The InlineAssistant struct in crates/assistant2/src/inline_assistant.rs keeps track of active assists.
   - When a completion is available, it uses the Editor's APIs to render the completion inline with the existing code. The editor's display map will include a FoldPlaceholder that renders the inline suggestions.
   - If the completion is confirmed, the editor's buffer is modified using the new code from the InlineAssistant.

4. **Generating Edits**:
   - The edit function (in crates/assistant/src/assistant.rs) also constructs a LanguageModelRequest but it specifies RequestType::SuggestEdits. This is picked up in crates/assistant/src/context.rs and an appropriate preamble is added to the prompt.
   - The Thread in crates/assistant2/src/thread.rs handles the LLM response by parsing the structured output. It will then update the buffer accordingly.

5. **Slash Commands**:
   - The Thread in crates/assistant2/src/thread.rs has the logic for parsing and running slash commands.
   - When a slash command is run, the run_command function in crates/assistant/src/assistant_panel.rs will call the relevant run function in a struct that implements the SlashCommand trait.
   - For example, the /file slash command is handled by the FileSlashCommand struct in crates/assistant/src/slash_command/file_command.rs.
   - Slash commands can also be implemented as extensions (e.g. crates/assistant_slash_command/src/extension_slash_command.rs) and registered via ExtensionHostProxy.

6. **Context Management**:
   - The Context struct in crates/assistant/src/context.rs manages the text and other context that is passed to the LLM.
   - The ContextStore in crates/assistant2/src/context_store.rs is used to store and manage contexts across the application, and has logic for loading and saving context data.
   - The ContextStrip in crates/assistant2/src/context_strip.rs renders the UI that shows and allows for the selection of available contexts.

7. **Tool Calls**:
   - The LLM responses can also include tool calls, which are handled by the Thread struct. The code for how the tools are executed is implemented in the assistant_tool crate.
   - The Tool trait defines how a tool should be called and have its response inserted.
   - The ToolWorkingSet is used to keep track of available tools.

### Code Examples:

**crates/assistant2/src/inline_assistant.rs (Triggering and Passing to LLM)**
```rust
pub fn assist(
    &mut self,
    editor: &View<Editor>,
    workspace: Option<WeakView<Workspace>>,
    assistant_panel: Option<&View<AssistantPanel>>,
    initial_prompt: Option<String>,
    cx: &mut WindowContext,
) {
    let (snapshot, initial_selections) = editor.update(cx, |editor, cx| {
        (
            editor.buffer().read(cx).snapshot(cx),
            editor.selections.all::<Point>(cx),
        )
    });

    // ... logic to process the selections and create ranges ...

    let assist_group_id = self.next_assist_group_id.post_inc();
    let prompt_buffer =
        cx.new_model(|cx| Buffer::local(initial_prompt.unwrap_or_default(), cx));
    let prompt_buffer = cx.new_model(|cx| MultiBuffer::singleton(prompt_buffer, cx));

    // ... logic to create a `Codegen` for each range ...

    if assistant_panel.update(cx, |assistant, cx| assistant.is_authenticated(cx)) {
            match inline_assist_target {
                InlineAssistTarget::Editor(active_editor, include_context) => {
                    InlineAssistant::update_global(cx, |assistant, cx| {
                        assistant.assist(
                            &active_editor,
                            Some(cx.view().downgrade()),
                            include_context.then_some(&assistant_panel),
                            initial_prompt,
                            cx,
                        )
                    })
                }
                InlineAssistTarget::Terminal(active_terminal) => {
                    TerminalInlineAssistant::update_global(cx, |assistant, cx| {
                        assistant.assist(
                            &active_terminal,
                            Some(cx.view().downgrade()),
                            Some(&assistant_panel),
                            initial_prompt,
                            cx,
                        )
                    })
                }
            }
        }
    }
```

**crates/assistant2/src/buffer_codegen.rs (Using Language Model to get Completions)**
```rust
fn send_to_model(&mut self, request_type: RequestType, cx: &mut ViewContext<Self>) {
    let provider = LanguageModelRegistry::read_global(cx).active_provider();
    if provider
        .as_ref()
        .map_or(false, |provider| provider.must_accept_terms(cx))
    {
        self.show_accept_terms = true;
        cx.notify();
        return;
    }

    if self.focus_active_patch(cx) {
        return;
    }

    self.last_error = None;

    if request_type == RequestType::SuggestEdits && !self.context.read(cx).contains_files(cx) {
        self.last_error = Some(AssistError::FileRequired);
        cx.notify();
    } else if let Some(user_message) = self
        .context
        .update(cx, |context, cx| context.assist(request_type, cx))
    {
        let new_selection = {
            let cursor = user_message
                .start
                .to_offset(self.context.read(cx).buffer().read(cx));
            cursor..cursor
        };
        self.editor.update(cx, |editor, cx| {
            editor.change_selections(
                Some(Autoscroll::Strategy(AutoscrollStrategy::Fit)),
                cx,
                |selections| selections.select_ranges([new_selection]),
            );
        });
        // Avoid scrolling to the new cursor position so the assistant's output is stable.
        cx.defer(|this, _| this.scroll_position = None);
    }

    cx.notify();
}
```

**crates/language_models/src/provider/anthropic.rs (Example of Calling an LLM API)**
```rust
 async fn stream_completion(
    &self,
    request: Request,
    cx: &AsyncAppContext,
) -> BoxFuture<'static, Result<BoxStream<'static, Result<Event, AnthropicError>>>> {
    let http_client = self.http_client.clone();
    let Ok((api_key, api_url)) = cx.read_model(&self.state, |state, cx| {
        let settings = &AllLanguageModelSettings::get_global(cx).anthropic;
        (state.api_key.clone(), settings.api_url.clone())
    }) else {
        return futures::future::ready(Err(anyhow!("App state dropped"))).boxed();
    };

    async move {
        let api_key = api_key.ok_or_else(|| anyhow!("Missing Anthropic API Key"))?;
        let request =
            anthropic::stream_completion(http_client.as_ref(), &api_url, &api_key, request);
        request.await.context("failed to stream completion")
    }
    .boxed()
}
```

**crates/semantic_index/src/embedding/open_ai.rs (Example of calling embedding API)**
```rust
fn embed<'a>(&'a self, texts: &'a [TextToEmbed<'a>]) -> BoxFuture<'a, Result<Vec<Embedding>>> {
    let embed = open_ai::embed(
        self.client.as_ref(),
        &self.api_url,
        &self.api_key,
        self.model,
        texts.iter().map(|to_embed| to_embed.text),
    );
    async move {
        let response = embed.await?;
        Ok(response
            .data
            .into_iter()
            .map(|data| Embedding::new(data.embedding))
            .collect())
    }
    .boxed()
}
```

### Observations & Patterns

- **Modularity**: The code is structured into separate crates, which makes it easier to manage the different components of the system.
- **Flexibility**: The use of traits and enums allows for different language models to be plugged into the system.
- **Asynchronous Operations**: Asynchronous programming (using async and await) is extensively used to handle network requests and other non-blocking operations.
- **State Management**: The code uses Model and ModelContext for managing the application's state, which makes it easier to update the UI and data.
- **Text Manipulation**: The code uses the rope crate for efficient text manipulation.
- **Code Actions**: The use of CodeActionProvider allows for integrating Copilot with editor's code action mechanism.

### Where to Look for More Details

To understand more, you'll want to look deeper into:

- The specific LanguageModel implementations in crates/language_models/src/provider: Each model will have different logic for interacting with its corresponding LLM API.
- The assist and other functions in crates/assistant2/src/inline_assistant.rs: These functions are the central points where the logic for generating code completions is triggered.
- The Codegen struct and its methods in crates/assistant2/src/buffer_codegen.rs: This struct handles the actual process of applying the suggestions from the LLM to the buffer.
- The Thread struct in crates/assistant2/src/thread.rs: This struct handles the logic for parsing LLM responses and executing commands.

The code uses a variety of techniques to achieve this goal, including:
- Abstraction of Language Models with traits
- Modular code using separate crates
- Asynchronous programming
- State management with Model and ModelContext
- Text manipulation using rope
- Integration with editor's code action mechanism