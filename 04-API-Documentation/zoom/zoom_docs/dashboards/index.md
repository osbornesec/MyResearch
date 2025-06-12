# Dashboards

## Overview

The Dashboard API provides comprehensive analytics and reporting data for Zoom accounts. Access detailed metrics about meetings, webinars, instant messaging, Zoom Rooms, and Cloud Recording Console (CRC) usage to gain insights into your organization's Zoom usage patterns.

## Available Endpoints

### Meeting Analytics
- **[Get Meeting Reports](get_meetings.md)** - Retrieve meeting analytics and usage metrics
- **[Get Meeting Details](get_meetings_meetingId.md)** - Get detailed information for a specific meeting
- **[Get Meeting Participants](get_meetings_meetingId_participants.md)** - List participants for a specific meeting

### Meeting Quality of Service (QoS)
- **[Get Meeting Participants QoS](get_meetings_meetingId_participants_qos.md)** - Quality metrics for all meeting participants
- **[Get Participant QoS](get_meetings_meetingId_participants_participantId_qos.md)** - Quality metrics for a specific participant

### Meeting Screen Sharing
- **[Get Meeting Sharing Details](get_meetings_meetingId_participants_sharing.md)** - Screen sharing data for all participants
- **[Get Participant Sharing Details](get_meetings_meetingId_participants_participantId_sharing.md)** - Screen sharing data for a specific participant

### Webinar Analytics
- **[Get Webinar Reports](get_webinars.md)** - Retrieve webinar analytics and usage metrics  
- **[Get Webinar Details](get_webinars_webinarId.md)** - Get detailed information for a specific webinar
- **[Get Webinar Participants](get_webinars_webinarId_participants.md)** - List participants for a specific webinar

### Webinar Quality of Service (QoS)
- **[Get Webinar Participants QoS](get_webinars_webinarId_participants_qos.md)** - Quality metrics for all webinar participants
- **[Get Webinar Participant QoS](get_webinars_webinarId_participants_participantId_qos.md)** - Quality metrics for a specific webinar participant

### Webinar Screen Sharing
- **[Get Webinar Sharing Details](get_webinars_webinarId_participants_sharing.md)** - Screen sharing data for all webinar participants
- **[Get Webinar Participant Sharing Details](get_webinars_webinarId_participants_participantId_sharing.md)** - Screen sharing data for a specific webinar participant

### Zoom Rooms Analytics
- **[Get Zoom Rooms Reports](get_zoomrooms.md)** - Retrieve Zoom Rooms usage analytics
- **[Get Zoom Room Details](get_zoomrooms_zoomroomId.md)** - Get detailed metrics for a specific Zoom Room

### Additional Services
- **[Get IM Reports](get_im.md)** - Instant messaging usage analytics
- **[Get CRC Reports](get_crc.md)** - Cloud Recording Console usage metrics

## Key Metrics and Data Points

### Meeting Metrics
- **Usage Statistics**: Total meetings, participants, duration
- **Attendance Patterns**: Join/leave times, participant engagement
- **Technical Performance**: Audio/video quality, connection stability
- **Feature Usage**: Screen sharing, recording, breakout rooms

### Quality of Service (QoS) Data
- **Audio Quality**: Jitter, latency, packet loss for audio streams
- **Video Quality**: Resolution, frame rate, packet loss for video
- **Screen Sharing**: Performance metrics for screen sharing sessions
- **Network Performance**: Bandwidth usage, connection quality

### Webinar Insights
- **Attendance Metrics**: Registration vs attendance rates
- **Engagement Data**: Q&A participation, polling responses
- **Performance Metrics**: Stream quality, technical issues
- **Host Analytics**: Presentation effectiveness, audience interaction

### Zoom Rooms Data
- **Room Utilization**: Usage frequency, peak times
- **Technical Health**: Hardware status, connectivity issues
- **Meeting Quality**: Audio/video performance in conference rooms
- **Resource Management**: Room booking patterns, efficiency

## Common Use Cases

### Usage Analytics
```javascript
// Get meeting reports for the last 30 days
GET /v2/report/meetings?from=2024-11-01&to=2024-12-01
```

### Quality Monitoring
```javascript
// Check QoS data for a specific meeting
GET /v2/metrics/meetings/{meetingId}/participants/qos
```

### Performance Optimization
```javascript
// Analyze Zoom Rooms utilization
GET /v2/metrics/zoomrooms?from=2024-11-01&to=2024-12-01
```

## Data Retention and Availability

### Retention Periods
- **Meeting Data**: Available for 6 months
- **QoS Metrics**: Retained for 3 months  
- **Webinar Analytics**: Available for 6 months
- **Zoom Rooms Data**: Retained for 6 months

### Data Freshness
- **Real-time Metrics**: Available within 15 minutes
- **Historical Reports**: Updated hourly
- **Aggregated Data**: Processed daily

## Authentication and Permissions

### Required Scopes
- **dashboard:read**: Basic dashboard metrics access
- **dashboard_meetings:read**: Meeting-specific analytics
- **dashboard_webinars:read**: Webinar-specific analytics
- **dashboard_zoomrooms:read**: Zoom Rooms analytics

### User Permissions
- **Account Admin**: Full access to all dashboard data
- **Dashboard Viewer**: Read-only access to assigned metrics
- **Room Admin**: Zoom Rooms specific analytics

## Rate Limits

Dashboard endpoints have specific rate limits:
- **GET requests**: 60 requests per minute per account
- **Complex queries**: 30 requests per minute per account
- **QoS endpoints**: 20 requests per minute per account

## Best Practices

### Data Collection
1. **Batch Requests**: Use date ranges to minimize API calls
2. **Caching**: Cache frequently accessed reports
3. **Filtering**: Use filters to reduce data volume
4. **Pagination**: Handle large datasets with proper pagination

### Performance Optimization
1. **Time Ranges**: Request appropriate time windows
2. **Specific Metrics**: Focus on relevant KPIs
3. **Scheduled Reports**: Automate regular data collection
4. **Data Processing**: Process data asynchronously

### Analytics Implementation
1. **Trend Analysis**: Track metrics over time
2. **Alerting**: Set up notifications for anomalies
3. **Reporting**: Create executive summaries
4. **Action Items**: Use data to drive improvements

## Error Handling

Common dashboard API errors:
- **400 Bad Request**: Invalid date range or parameters
- **403 Forbidden**: Insufficient dashboard permissions
- **404 Not Found**: Meeting, webinar, or room not found
- **429 Too Many Requests**: Rate limit exceeded
- **503 Service Unavailable**: Dashboard service temporarily unavailable

## Integration Examples

### Business Intelligence Tools
- Export data to Tableau, Power BI, or similar platforms
- Create automated reporting dashboards
- Integrate with existing analytics workflows

### Monitoring Systems
- Set up alerts for poor meeting quality
- Monitor Zoom Rooms health status
- Track usage trends and capacity planning

### Custom Applications
- Build internal analytics dashboards
- Create usage reports for management
- Implement quality monitoring tools

