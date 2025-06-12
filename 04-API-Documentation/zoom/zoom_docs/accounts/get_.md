## List sub accounts

List all the sub accounts under the master account

> Definition

```shell
GET https://api.zoom.us/v2/accounts
```

> Example Request

```shell
$ curl https://api.zoom.us/v2/accounts
```

> Example Response

```text
200 OK
```

```json
{
    "page_count": "integer",
    "page_number": "integer",
    "page_size": "integer",
    "total_records": "integer",
    "accounts": [
        {
            "id": "string [uuid]",
            "account_name": "string",
            "owner_email": "string",
            "account_type": "string",
            "seats": "integer",
            "subscription_start_time": "string [date-time]",
            "subscription_end_time": "string [date-time]",
            "created_at": "string [date-time]"
        }
    ]
}
```

## Query Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| **page_size** *(optional)* | integer | The number of records returned within a single API call<br>**Default:** 30<br>**Maximum:** 300 |
| **page_number** *(optional)* | integer | Current page number of returned records<br>**Default:** 1 |

