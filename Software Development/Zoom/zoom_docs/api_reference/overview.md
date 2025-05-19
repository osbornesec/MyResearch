# API reference

## Authentication

All API requests require an access token. You can get an access token by authenticating with OAuth or by using server-to-server OAuth.

For OAuth, implement the authorization flow to get user consent and receive an authorization code. Exchange this code for an access token.

For server-to-server OAuth, use your app credentials to directly request an access token. Both methods provide access tokens valid for one hour.

Use the refresh token (for OAuth) or request a new token (for server-to-server) when the current token expires.

Example OAuth 2.0 request:
```curl
curl -X POST https://zoom.us/oauth/token \
 -H "Authorization: Basic BASE64_ENCODED_CLIENT_ID_AND_SECRET" \
 -H "Content-Type: application/x-www-form-urlencoded" \
 -d "grant_type=authorization_code&code=AUTHORIZATION_CODE&redirect_uri=YOUR_REDIRECT_URI"
```

## Make API requests

Send HTTP requests to the base URL `https://api.zoom.us/v2/` with your access token in the Authorization header. Use GET, POST, PATCH, PUT, or DELETE methods as needed for different endpoints.

Example cURL request:
```curl
curl -H "Authorization: Bearer YOUR_ACCESS_TOKEN" \
 -H "Content-Type: application/json" \
 https://api.zoom.us/v2/users/me
```

## Subscribe to events

Zoom sends real-time notifications to your endpoint when events occur. To subscribe to events:
- Set up event subscriptions in your app
- Specify an HTTPS endpoint URL that can accept POST requests with JSON payloads
- Implement verification to ensure webhook authenticity
- Respond with a 200 or 204 status code within 3 seconds

## Rate limits

The Zoom API uses rate limits to manage API request traffic. Exceeding rate limits returns an HTTP 429 status code.

## Pagination

Zoom APIs use `next_page_token` for pagination. Specify `page_size` to control results per page and use the returned `next_page_token` for subsequent requests