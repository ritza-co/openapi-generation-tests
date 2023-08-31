// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type MixedParametersCamelCaseRequest struct {
	HeaderParam      string `header:"style=simple,explode=false,name=header_param"`
	PathParam        string `pathParam:"style=simple,explode=false,name=path_param"`
	QueryStringParam string `queryParam:"style=form,explode=true,name=query_string_param"`
}

func (o *MixedParametersCamelCaseRequest) GetHeaderParam() string {
	if o == nil {
		return ""
	}
	return o.HeaderParam
}

func (o *MixedParametersCamelCaseRequest) GetPathParam() string {
	if o == nil {
		return ""
	}
	return o.PathParam
}

func (o *MixedParametersCamelCaseRequest) GetQueryStringParam() string {
	if o == nil {
		return ""
	}
	return o.QueryStringParam
}

type MixedParametersCamelCaseResArgs struct {
	QueryStringParam string `json:"query_string_param"`
}

func (o *MixedParametersCamelCaseResArgs) GetQueryStringParam() string {
	if o == nil {
		return ""
	}
	return o.QueryStringParam
}

type MixedParametersCamelCaseResHeaders struct {
	HeaderParam string `json:"Header-Param"`
}

func (o *MixedParametersCamelCaseResHeaders) GetHeaderParam() string {
	if o == nil {
		return ""
	}
	return o.HeaderParam
}

// MixedParametersCamelCaseRes - OK
type MixedParametersCamelCaseRes struct {
	Args    MixedParametersCamelCaseResArgs    `json:"args"`
	Headers MixedParametersCamelCaseResHeaders `json:"headers"`
	URL     string                             `json:"url"`
}

func (o *MixedParametersCamelCaseRes) GetArgs() MixedParametersCamelCaseResArgs {
	if o == nil {
		return MixedParametersCamelCaseResArgs{}
	}
	return o.Args
}

func (o *MixedParametersCamelCaseRes) GetHeaders() MixedParametersCamelCaseResHeaders {
	if o == nil {
		return MixedParametersCamelCaseResHeaders{}
	}
	return o.Headers
}

func (o *MixedParametersCamelCaseRes) GetURL() string {
	if o == nil {
		return ""
	}
	return o.URL
}

type MixedParametersCamelCaseResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	Res *MixedParametersCamelCaseRes
}

func (o *MixedParametersCamelCaseResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *MixedParametersCamelCaseResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *MixedParametersCamelCaseResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *MixedParametersCamelCaseResponse) GetRes() *MixedParametersCamelCaseRes {
	if o == nil {
		return nil
	}
	return o.Res
}
