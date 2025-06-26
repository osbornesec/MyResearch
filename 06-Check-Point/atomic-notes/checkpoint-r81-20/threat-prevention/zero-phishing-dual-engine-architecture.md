---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-threat-prevention-guide-r81-20
validation-status: verified
domain: checkpoint-security-architecture
---

# Zero Phishing Dual Engine Architecture

## Core Concept
Zero Phishing employs a dual-engine architecture combining real-time URL-based phishing prevention with in-browser JavaScript injection for comprehensive protection against both known and unknown phishing attacks.

## Engine 1: Real-Time URL Analysis
- Analyzes various URL features in real-time
- Examines brand similarity patterns and non-ASCII characters
- Evaluates domain registration timing and characteristics
- Sends URL information to cloud reputation service for ML analysis
- Calculates risk scores and blocks phishing URLs automatically

## Engine 2: In-Browser Zero Phishing
- Performs patented JavaScript injection into web pages
- Scans HTML forms when loaded in browsers
- Monitors dynamic form creation and modification
- Analyzes HTML components in real-time during user interaction
- Sends form data to Check Point cloud for AI-based analysis

## Detection Methodology
- Multi-layered analysis combining URL and content inspection
- Real-time risk calculation using machine learning algorithms
- Dynamic protection against evolving phishing techniques
- Comprehensive coverage of known and zero-day threats

## Research Context
This dual-engine approach provides comprehensive phishing protection by analyzing both initial access patterns and interactive content behavior.

## Source Quality
- **Primary Source**: Check Point R81.20 Threat Prevention Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation verification

## Connection Potential
- Links to machine learning threat detection systems
- Integrates with cloud-based security analysis platforms
- Connects to web traffic inspection technologies
- Related to browser security and content analysis frameworks