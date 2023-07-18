// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/models/shared"
)

// WeaklyTypedOneOfPostRes - OK
type WeaklyTypedOneOfPostRes struct {
	JSON shared.WeaklyTypedOneOfObject `json:"json"`
}

func (o *WeaklyTypedOneOfPostRes) GetJSON() shared.WeaklyTypedOneOfObject {
	if o == nil {
		return shared.WeaklyTypedOneOfObject{}
	}
	return o.JSON
}

type WeaklyTypedOneOfPostResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	Res *WeaklyTypedOneOfPostRes
}

func (o *WeaklyTypedOneOfPostResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *WeaklyTypedOneOfPostResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *WeaklyTypedOneOfPostResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *WeaklyTypedOneOfPostResponse) GetRes() *WeaklyTypedOneOfPostRes {
	if o == nil {
		return nil
	}
	return o.Res
}
