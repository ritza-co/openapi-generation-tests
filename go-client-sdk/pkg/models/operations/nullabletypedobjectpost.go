// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/models/shared"
)

// NullableTypedObjectPostRes - OK
type NullableTypedObjectPostRes struct {
	JSON *shared.TypedObject1 `json:"json"`
}

func (o *NullableTypedObjectPostRes) GetJSON() *shared.TypedObject1 {
	if o == nil {
		return nil
	}
	return o.JSON
}

type NullableTypedObjectPostResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Res *NullableTypedObjectPostRes
}

func (o *NullableTypedObjectPostResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *NullableTypedObjectPostResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *NullableTypedObjectPostResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *NullableTypedObjectPostResponse) GetRes() *NullableTypedObjectPostRes {
	if o == nil {
		return nil
	}
	return o.Res
}
