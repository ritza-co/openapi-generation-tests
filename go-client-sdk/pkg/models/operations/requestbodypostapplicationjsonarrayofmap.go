// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/v2/pkg/models/shared"
)

var RequestBodyPostApplicationJSONArrayOfMapServerList = []string{
	"http://localhost:35456",
}

type RequestBodyPostApplicationJSONArrayOfMapResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Res []map[string]shared.SimpleObject
}

func (o *RequestBodyPostApplicationJSONArrayOfMapResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostApplicationJSONArrayOfMapResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostApplicationJSONArrayOfMapResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostApplicationJSONArrayOfMapResponse) GetRes() []map[string]shared.SimpleObject {
	if o == nil {
		return nil
	}
	return o.Res
}
