// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/models/shared"
)

type MixedQueryParamsRequest struct {
	// A simple object that uses all our supported primitive types and enums and has optional properties.
	DeepObjectParam shared.SimpleObject `queryParam:"style=deepObject,explode=true,name=deepObjectParam"`
	// A simple object that uses all our supported primitive types and enums and has optional properties.
	FormParam shared.SimpleObject `queryParam:"style=form,explode=true,name=formParam"`
	// A simple object that uses all our supported primitive types and enums and has optional properties.
	JSONParam shared.SimpleObject `queryParam:"serialization=json,name=jsonParam"`
}

func (o *MixedQueryParamsRequest) GetDeepObjectParam() shared.SimpleObject {
	if o == nil {
		return shared.SimpleObject{}
	}
	return o.DeepObjectParam
}

func (o *MixedQueryParamsRequest) GetFormParam() shared.SimpleObject {
	if o == nil {
		return shared.SimpleObject{}
	}
	return o.FormParam
}

func (o *MixedQueryParamsRequest) GetJSONParam() shared.SimpleObject {
	if o == nil {
		return shared.SimpleObject{}
	}
	return o.JSONParam
}

// MixedQueryParamsRes - OK
type MixedQueryParamsRes struct {
	Args map[string]string `json:"args"`
	URL  string            `json:"url"`
}

func (o *MixedQueryParamsRes) GetArgs() map[string]string {
	if o == nil {
		return map[string]string{}
	}
	return o.Args
}

func (o *MixedQueryParamsRes) GetURL() string {
	if o == nil {
		return ""
	}
	return o.URL
}

type MixedQueryParamsResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Res *MixedQueryParamsRes
}

func (o *MixedQueryParamsResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *MixedQueryParamsResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *MixedQueryParamsResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *MixedQueryParamsResponse) GetRes() *MixedQueryParamsRes {
	if o == nil {
		return nil
	}
	return o.Res
}
