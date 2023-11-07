// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

// RequestBodyPostJSONDataTypesIntegerResponseBody - OK
type RequestBodyPostJSONDataTypesIntegerResponseBody struct {
	JSON int64 `json:"json"`
}

func (o *RequestBodyPostJSONDataTypesIntegerResponseBody) GetJSON() int64 {
	if o == nil {
		return 0
	}
	return o.JSON
}

type RequestBodyPostJSONDataTypesIntegerResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Object *RequestBodyPostJSONDataTypesIntegerResponseBody
}

func (o *RequestBodyPostJSONDataTypesIntegerResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostJSONDataTypesIntegerResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostJSONDataTypesIntegerResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostJSONDataTypesIntegerResponse) GetObject() *RequestBodyPostJSONDataTypesIntegerResponseBody {
	if o == nil {
		return nil
	}
	return o.Object
}
