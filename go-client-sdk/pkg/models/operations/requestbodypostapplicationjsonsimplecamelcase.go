// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/v2/pkg/models/shared"
)

// RequestBodyPostApplicationJSONSimpleCamelCaseRes - OK
type RequestBodyPostApplicationJSONSimpleCamelCaseRes struct {
	// A simple object that uses all our supported primitive types and enums and has optional properties.
	JSON shared.SimpleObjectCamelCase `json:"json"`
}

func (o *RequestBodyPostApplicationJSONSimpleCamelCaseRes) GetJSON() shared.SimpleObjectCamelCase {
	if o == nil {
		return shared.SimpleObjectCamelCase{}
	}
	return o.JSON
}

type RequestBodyPostApplicationJSONSimpleCamelCaseResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Res *RequestBodyPostApplicationJSONSimpleCamelCaseRes
}

func (o *RequestBodyPostApplicationJSONSimpleCamelCaseResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostApplicationJSONSimpleCamelCaseResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostApplicationJSONSimpleCamelCaseResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostApplicationJSONSimpleCamelCaseResponse) GetRes() *RequestBodyPostApplicationJSONSimpleCamelCaseRes {
	if o == nil {
		return nil
	}
	return o.Res
}
