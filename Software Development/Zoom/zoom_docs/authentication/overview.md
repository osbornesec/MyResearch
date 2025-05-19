# Authentication

Requests to the Zoom API are authenticated through a Bearer token in an Authorization header.

```
curl -H "Authorization: Bearer YOUR_ACCESS_TOKEN" https://api.zoom.us/v2/users/me
```

## Choosing the right authentication method

- Use **OAuth 2.0 for apps that need user authorization** and for all apps that publish on the Zoom App Marketplace.
- Use **server-to-server OAuth for backend services on your own account** that don't require user interaction.

## OAuth 2.0 for user-based authentication