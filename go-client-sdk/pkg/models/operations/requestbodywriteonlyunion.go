// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/models/shared"
)

var RequestBodyWriteOnlyUnionServerList = []string{
	"http://localhost:35456",
}

type RequestBodyWriteOnlyUnionResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	WeaklyTypedOneOfWriteOnlyObject *shared.WeaklyTypedOneOfWriteOnlyObjectOutput
}

func (o *RequestBodyWriteOnlyUnionResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyWriteOnlyUnionResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyWriteOnlyUnionResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyWriteOnlyUnionResponse) GetWeaklyTypedOneOfWriteOnlyObject() *shared.WeaklyTypedOneOfWriteOnlyObjectOutput {
	if o == nil {
		return nil
	}
	return o.WeaklyTypedOneOfWriteOnlyObject
}
