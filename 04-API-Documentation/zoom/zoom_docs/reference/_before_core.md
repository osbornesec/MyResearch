# Core Resources

## Overview

This section covers the fundamental resources and concepts that form the foundation of the Zoom API. Understanding these core elements is essential for effective API integration.

## Core Resource Types

### Account Management
- **Accounts** - Organization-level settings and configuration
- **Users** - Individual user accounts and profiles
- **Groups** - User organization and permission management

### Meeting Resources
- **Meetings** - Scheduled and instant meeting management
- **Webinars** - Large-scale presentation and broadcasting
- **Personal Conference Numbers** - Dedicated dial-in numbers

### Communication Tools
- **IM Chat** - In-platform messaging and chat sessions
- **IM Groups** - Group messaging and collaboration spaces

### Infrastructure
- **Devices** - Hardware integration and management
- **Cloud Recording** - Meeting recording and storage

## Resource Relationships

### Hierarchical Structure
```
Account
├── Users
│   ├── Meetings
│   ├── Webinars
│   └── Personal Conference Numbers
├── Groups
│   └── Group Members
└── Devices
```

### Cross-Resource Dependencies
- **Users** can be members of multiple **Groups**
- **Meetings** and **Webinars** are owned by **Users**
- **Cloud Recordings** are associated with **Meetings** or **Webinars**
- **Devices** are managed at the **Account** level

## Getting Started

1. **Authentication** - Set up API credentials and access tokens
2. **Account Access** - Understand your account structure and permissions
3. **User Management** - Learn to create and manage user accounts
4. **Core Operations** - Master basic CRUD operations for meetings and users

## Next Steps

Once you understand these core concepts, explore specific API endpoints in the detailed documentation sections.