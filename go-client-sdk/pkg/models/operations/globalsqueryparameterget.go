// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type GlobalsQueryParameterGetRequest struct {
	GlobalQueryParam *string `queryParam:"style=form,explode=true,name=globalQueryParam"`
}

func (o *GlobalsQueryParameterGetRequest) GetGlobalQueryParam() *string {
	if o == nil {
		return nil
	}
	return o.GlobalQueryParam
}

type Args struct {
	GlobalQueryParam string `json:"globalQueryParam"`
}

func (o *Args) GetGlobalQueryParam() string {
	if o == nil {
		return ""
	}
	return o.GlobalQueryParam
}

// GlobalsQueryParameterGetRes - OK
type GlobalsQueryParameterGetRes struct {
	Args Args `json:"args"`
}

func (o *GlobalsQueryParameterGetRes) GetArgs() Args {
	if o == nil {
		return Args{}
	}
	return o.Args
}

type GlobalsQueryParameterGetResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Res *GlobalsQueryParameterGetRes
}

func (o *GlobalsQueryParameterGetResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *GlobalsQueryParameterGetResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *GlobalsQueryParameterGetResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *GlobalsQueryParameterGetResponse) GetRes() *GlobalsQueryParameterGetRes {
	if o == nil {
		return nil
	}
	return o.Res
}
