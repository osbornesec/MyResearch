## List all the recordings

List all the recordings

> Definition

```shell
GET https://api.zoom.us/v2/users/{userId}/recordings
```

> Example Request

```shell
$ curl https://api.zoom.us/v2/users/{userId}/recordings?from=string&to=string
```

> Example Response

```text
200 OK
```

```json
{
    "from": "string [date]",
    "to": "string [date]",
    "page_count": "integer",
    "page_size": "integer",
    "total_records": "integer",
    "next_page_token": "string",
    "meetings": [
        {
            "uuid": "string",
            "id": "string",
            "account_id": "string",
            "host_id": "string",
            "topic": "string",
            "start_time": "string [date-time]",
            "duration": "integer",
            "total_size": "string",
            "recording_count": "string",
            "recording_files": [
                {
                    "id": "string",
                    "meeting_id": "string",
                    "recording_start": "string",
                    "recording_end": "string",
                    "file_type": "string",
                    "file_size": "number",
                    "play_url": "string",
                    "download_url": "string",
                    "status": "string",
                    "deleted_time": "string",
                    "recording_type": "string"
                }
            ]
        }
    ]
}
```

## Path Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| **userId** *(required)* | string | The user ID or email address |

## Query Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| **from** *(required)* | string (date) | Start Date |
| **to** *(required)* | string (date) | End Date |
| **page_size** *(optional)* | integer | The number of records returned within a single API call<br>**Default:** 30<br>**Maximum:** 300 |
| **next_page_token** *(optional)* | string | Next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceed the current page size. The expiration period for this token is 15 minutes. |
| **mc** *(optional)* | boolean | Query mc<br>**Default:** false |
| **trash** *(optional)* | boolean | Query trash<br>**Default:** false | 

