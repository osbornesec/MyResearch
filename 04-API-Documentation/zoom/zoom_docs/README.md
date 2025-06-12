# Zoom API Documentation

This repository contains the Zoom API documentation converted to markdown format. The documentation is based on Zoom's API v2 documentation from their [GitHub repository](https://github.com/zoom/api).

## Repository Structure

The documentation is organized into the following main sections:

- **reference**: Core API concepts including authentication, error handling, and rate limits
- **accounts**: Account management endpoints
- **billing**: Billing management endpoints
- **users**: User management endpoints
- **meetings**: Meeting management endpoints
- **webinars**: Webinar management endpoints
- **groups**: Group management endpoints
- **im_groups**: Instant messaging group endpoints
- **im_chat**: Chat management endpoints
- **cloud_recording**: Recording management endpoints
- **reports**: Reporting endpoints
- **dashboards**: Dashboard endpoints
- **webhooks**: Webhook configuration endpoints
- **tsp**: Telephony Service Provider endpoints
- **pac**: Personal Audio Conference endpoints
- **devices**: Device management endpoints
- **appendix**: Supplementary information including recurrence, plans, and country/timezone lists

## File Naming Convention

Files are named according to the HTTP method and endpoint path:
- `index.md`: Overview and object definitions for a section
- `get_.md`: GET endpoints with no path parameters
- `get_userId.md`: GET endpoints with path parameters
- `post_`, `put_`, `patch_`, `delete_`: Other HTTP methods

## Documentation Version

This documentation is for Zoom API Version 2. Note that Zoom's current API documentation is now hosted at [https://developers.zoom.us/docs/api/](https://developers.zoom.us/docs/api/).

## Important Links

- Current Zoom API Documentation: [https://developers.zoom.us/docs/api/](https://developers.zoom.us/docs/api/)
- Zoom Developer Forum: [https://devforum.zoom.us/](https://devforum.zoom.us/)
- Zoom Developer Support: [https://devsupport.zoom.us/](https://devsupport.zoom.us/)

## Disclaimer

This is an archived version of Zoom's API documentation. For the most up-to-date information, please refer to Zoom's official developer documentation.