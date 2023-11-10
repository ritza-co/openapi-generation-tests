// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/v2/pkg/models/shared"
)

var RequestBodyPostApplicationJSONMapOfMapCamelCaseServerList = []string{
	"http://localhost:35456",
}

type RequestBodyPostApplicationJSONMapOfMapCamelCaseResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Res map[string]map[string]shared.SimpleObjectCamelCase
}

func (o *RequestBodyPostApplicationJSONMapOfMapCamelCaseResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostApplicationJSONMapOfMapCamelCaseResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostApplicationJSONMapOfMapCamelCaseResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostApplicationJSONMapOfMapCamelCaseResponse) GetRes() map[string]map[string]shared.SimpleObjectCamelCase {
	if o == nil {
		return nil
	}
	return o.Res
}
