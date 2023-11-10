// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/v2/pkg/models/shared"
)

type RequestBodyPostApplicationJSONArrayObjCamelCaseResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	ArrObjValueCamelCase *shared.ArrObjValueCamelCase
}

func (o *RequestBodyPostApplicationJSONArrayObjCamelCaseResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostApplicationJSONArrayObjCamelCaseResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostApplicationJSONArrayObjCamelCaseResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostApplicationJSONArrayObjCamelCaseResponse) GetArrObjValueCamelCase() *shared.ArrObjValueCamelCase {
	if o == nil {
		return nil
	}
	return o.ArrObjValueCamelCase
}
