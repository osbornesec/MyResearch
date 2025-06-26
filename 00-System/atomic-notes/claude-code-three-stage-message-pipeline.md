---
state: permanent
type: atomic-note
created: 2025-06-20
last-reviewed: 2025-06-20
connections: 3
review-frequency: weekly
source-credibility: 9
tags: [claude-code, message-architecture, data-flow, api-design]
---

# Claude Code Three-Stage Message Pipeline

## Core Concept

Sophisticated message transformation architecture that maintains UI state while preserving API compatibility, enabling rich CLI interactions without protocol changes through three distinct representation stages.

## Stage Architecture

### Stage 1: CLI Representation (CliMessage)
**Purpose**: Rich terminal interface with progress tracking and cost monitoring
```typescript
interface CliMessage {
  uuid: string;
  role: 'user' | 'assistant' | 'system';
  content: ContentBlock[];
  metadata: {
    progress?: ProgressIndicator;
    cost?: TokenCost;
    timestamp: number;
    ui_state?: UIState;
  };
}
```

**Features**:
- **Progress Tracking**: Real-time operation progress visualization
- **Cost Monitoring**: Token usage and API cost tracking
- **UI State Management**: Terminal-specific display information
- **Rich Content**: Supports multiple content block types

### Stage 2: API Wire Format (ApiMessage)
**Purpose**: Standardized communication with Claude API
```typescript
interface ApiMessage {
  role: string;
  content: string | ContentBlock[];
  tool_calls?: ToolCall[];
  tool_results?: ToolResult[];
}
```

**Characteristics**:
- **API Compatibility**: Conforms to Claude API specifications
- **Simplified Structure**: Minimal overhead for network transmission
- **Tool Integration**: Native support for tool calling protocol
- **Efficient Serialization**: Optimized for network performance

### Stage 3: Internal Processing (ProcessingMessage)
**Purpose**: Enhanced format for internal AI reasoning and tool orchestration
```typescript
interface ProcessingMessage {
  id: string;
  role: MessageRole;
  content: EnhancedContent;
  context: ConversationContext;
  tools: ToolSet;
  permissions: PermissionScope;
  execution_state: ExecutionState;
}
```

**Enhanced Capabilities**:
- **Extended Context**: Full conversation history and state
- **Tool Orchestration**: Rich tool metadata and execution tracking
- **Permission Management**: Granular security and access control
- **Execution Tracking**: Detailed operation state and progress

## Transformation Benefits

### 1. Separation of Concerns
- **UI Layer**: Rich visual representation with progress and cost information
- **Network Layer**: Efficient API communication without unnecessary metadata
- **Processing Layer**: Full context and capabilities for AI reasoning

### 2. Performance Optimization
- **Selective Data**: Each stage contains only necessary information
- **Memory Efficiency**: Staged representation prevents data bloat
- **Network Optimization**: Minimal wire format reduces bandwidth usage
- **Processing Speed**: Rich internal format enables sophisticated reasoning

### 3. Maintainability
- **Clear Boundaries**: Well-defined responsibilities for each representation
- **API Independence**: UI changes don't affect API compatibility
- **Extensibility**: New features can be added without breaking existing stages
- **Testing**: Each stage can be validated independently

## ContentBlock Polymorphism

### Multiple Content Types
```typescript
type ContentBlock = 
  | TextBlock
  | ToolCallBlock
  | ToolResultBlock
  | ImageBlock
  | CodeBlock
  | ProgressBlock;

interface TextBlock {
  type: 'text';
  content: string;
  formatting?: TextFormatting;
}

interface ToolCallBlock {
  type: 'tool_call';
  tool_name: string;
  parameters: Record<string, any>;
  call_id: string;
}

interface ProgressBlock {
  type: 'progress';
  operation: string;
  percentage: number;
  status: 'running' | 'completed' | 'error';
}
```

### Dynamic Content Handling
- **Type Safety**: Strong typing prevents runtime errors
- **Extensible Design**: New block types can be added without breaking existing code
- **Rich Rendering**: Each block type has optimized display logic
- **Streaming Support**: Progressive content updates during generation

## Memory Management Strategy

### Weak References Pattern
```typescript
class MessageManager {
  private activeMessages = new WeakMap<MessageId, CliMessage>();
  private uiState = new WeakMap<MessageId, UIState>();
  
  addMessage(message: CliMessage): void {
    // Automatic cleanup when message is no longer referenced
    this.activeMessages.set(message.uuid, message);
  }
}
```

**Benefits**:
- **Automatic Cleanup**: Messages garbage collected when no longer needed
- **Memory Efficiency**: Prevents memory leaks in long conversations
- **Performance**: Reduces memory pressure during extended sessions
- **Simplicity**: No manual memory management required

## State Synchronization

### Cross-Stage Consistency
- **UUID Tracking**: Messages maintain identity across transformations
- **State Propagation**: Important state changes sync across all representations
- **Version Control**: Transformations preserve message versioning
- **Rollback Capability**: Can reconstruct previous states when needed

### Error Handling
- **Transformation Validation**: Each stage transition validated for correctness
- **Partial Failure Recovery**: System continues operating with partial message data
- **State Reconciliation**: Automatic correction of inconsistent states
- **Debug Information**: Rich error context for troubleshooting

## Implementation Patterns

### Message Factory Pattern
```typescript
class MessageFactory {
  static createFromUser(input: string): CliMessage {
    return {
      uuid: generateUUID(),
      role: 'user',
      content: [{ type: 'text', content: input }],
      metadata: { timestamp: Date.now() }
    };
  }
  
  static toApiFormat(cliMessage: CliMessage): ApiMessage {
    return {
      role: cliMessage.role,
      content: this.extractTextContent(cliMessage.content)
    };
  }
}
```

### Stream Processing
- **Incremental Updates**: Messages can be updated during streaming
- **Partial Rendering**: UI updates with incomplete message data
- **Progressive Enhancement**: Rich features added as data becomes available
- **Real-time Feedback**: Users see immediate progress on long operations

## Innovation Significance

### Technical Breakthroughs
- **CLI/UI Hybrid**: Unprecedented combination of terminal and rich UI paradigms
- **Streaming Architecture**: Real-time updates throughout message pipeline
- **API Abstraction**: Clean separation of presentation and communication concerns
- **Memory Optimization**: Sophisticated memory management for long conversations

### Development Impact
- **Maintainable Code**: Clear architectural boundaries improve code quality
- **Extensible Design**: New features integrate cleanly without architectural changes
- **Performance**: Optimized data flow enables responsive user experience
- **Reliability**: Strong typing and validation prevent runtime errors

## Source Attribution

Based on detailed analysis of Claude Code's three-stage message pipeline architecture, demonstrating sophisticated data transformation patterns that enable rich CLI interactions while maintaining API compatibility and optimal performance through staged data representation.