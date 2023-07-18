// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/models/shared"
)

var RequestBodyPostApplicationJSONArrayOfMapServerList = []string{
	"http://localhost:35456",
}

type RequestBodyPostApplicationJSONArrayOfMapResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	Maps []map[string]shared.SimpleObject
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

func (o *RequestBodyPostApplicationJSONArrayOfMapResponse) GetMaps() []map[string]shared.SimpleObject {
	if o == nil {
		return nil
	}
	return o.Maps
}
