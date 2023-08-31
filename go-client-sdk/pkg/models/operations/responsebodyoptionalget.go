// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/models/shared"
)

var ResponseBodyOptionalGetServerList = []string{
	"http://localhost:35456",
}

type ResponseBodyOptionalGetResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	ResponseBodyOptionalGet200TextPlainString *string
	// OK
	TypedObject1 *shared.TypedObject1
}

func (o *ResponseBodyOptionalGetResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *ResponseBodyOptionalGetResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *ResponseBodyOptionalGetResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *ResponseBodyOptionalGetResponse) GetResponseBodyOptionalGet200TextPlainString() *string {
	if o == nil {
		return nil
	}
	return o.ResponseBodyOptionalGet200TextPlainString
}

func (o *ResponseBodyOptionalGetResponse) GetTypedObject1() *shared.TypedObject1 {
	if o == nil {
		return nil
	}
	return o.TypedObject1
}
