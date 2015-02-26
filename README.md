Pleased.io API
---
#### Overview
> Endpoints: You can curl the base url to get the list of endpoints.

`$ curl https://api.pleased.io/v1`

Response

	[
  	 {
      "base_url": "https://api.pleased.io/v1"
  	 }
	]

#### Authentication
- Basic HTTP Authentication

```bash
$ curl http://api.pleased.io/v1 -H 'Authorization: Token token="80c0ce108fe7c0b89b7c999e2fbb6fff"'
```


### HTTP Status Code Summary

Code | Status
----------------------------- | --------------------------------------
200 | OK	Everything worked as expected.
400 | Bad Request	Often missing a required parameter.
401 | Unauthorized	No valid API key provided.
402 | Request Failed	Parameters were valid but request failed.
404 | Not Found	The requested item doesn't exist.
500, 502, 503, 504 | Server Errors	Something went wrong on our end.



### Errors

Types | Reason
----------------------------- | --------------------------------------
email_error | Not a valid email address.
api_error | Temporary problem with our API.
survey_error | Invalid Survey ID error.
time_error | Invalid Time given.



### Parameters

Parameter | Example | Desctiption
--------- | ------- | ------------
`token` | `80c0ce108fe7c0b89b7c999e2fbb6fff` | Api Key
`email` | `customer@email.com` | Your Customer Email / Email To
`survey`| `1001` | Survey ID, this ID is available after creating the survey.
`wait_for` | `1.hour` or `2.days` | It allows you to wait before sending the survey. Accepts, day(s), week(s), month(s).




### Send Survey
- Send the survey right away.

```bash
$ curl http://api.pleased.io/v1/survey/send -H \
      Authorization: Token token="80c0ce108fe7c0b89b7c999e2fbb6fff" \
      "Content-Type: application/json" -X POST \
     -d '{,"survey":"1001", "email":"fake@email.com"}'
```
- Send email after certain time.
```bash
$ curl http://api.pleased.io/v1/survey/send -H \
      Authorization: Token token="80c0ce108fe7c0b89b7c999e2fbb6fff" \
      "Content-Type: application/json" -X POST \
     -d '{,"survey":"1001", "email":"fake@email.com", "wait_for": "2.days"}'
```
