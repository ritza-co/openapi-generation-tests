// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

var RequestBodyPostApplicationJSONMapOfPrimitiveServerList = []string{
	"http://localhost:35456",
}

type RequestBodyPostApplicationJSONMapOfPrimitiveResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	Res map[string]string
}

func (o *RequestBodyPostApplicationJSONMapOfPrimitiveResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostApplicationJSONMapOfPrimitiveResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostApplicationJSONMapOfPrimitiveResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostApplicationJSONMapOfPrimitiveResponse) GetRes() map[string]string {
	if o == nil {
		return nil
	}
	return o.Res
}
