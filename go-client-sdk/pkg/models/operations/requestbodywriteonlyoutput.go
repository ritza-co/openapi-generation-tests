// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/models/shared"
)

var RequestBodyWriteOnlyOutputServerList = []string{
	"http://localhost:35456",
}

type RequestBodyWriteOnlyOutputResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	WriteOnlyObject *shared.WriteOnlyObjectOutput
}

func (o *RequestBodyWriteOnlyOutputResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyWriteOnlyOutputResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyWriteOnlyOutputResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyWriteOnlyOutputResponse) GetWriteOnlyObject() *shared.WriteOnlyObjectOutput {
	if o == nil {
		return nil
	}
	return o.WriteOnlyObject
}
