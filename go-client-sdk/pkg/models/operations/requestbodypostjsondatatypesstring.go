// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

// RequestBodyPostJSONDataTypesString200ApplicationJSON - OK
type RequestBodyPostJSONDataTypesString200ApplicationJSON struct {
	JSON string `json:"json"`
}

func (o *RequestBodyPostJSONDataTypesString200ApplicationJSON) GetJSON() string {
	if o == nil {
		return ""
	}
	return o.JSON
}

type RequestBodyPostJSONDataTypesStringResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	RequestBodyPostJSONDataTypesString200ApplicationJSONObject *RequestBodyPostJSONDataTypesString200ApplicationJSON
}

func (o *RequestBodyPostJSONDataTypesStringResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostJSONDataTypesStringResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostJSONDataTypesStringResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostJSONDataTypesStringResponse) GetRequestBodyPostJSONDataTypesString200ApplicationJSONObject() *RequestBodyPostJSONDataTypesString200ApplicationJSON {
	if o == nil {
		return nil
	}
	return o.RequestBodyPostJSONDataTypesString200ApplicationJSONObject
}
