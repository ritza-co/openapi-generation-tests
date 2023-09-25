// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type RequestBodyPutStringWithParamsRequest struct {
	RequestBody      string `request:"mediaType=text/plain"`
	QueryStringParam string `queryParam:"style=form,explode=true,name=queryStringParam"`
}

func (o *RequestBodyPutStringWithParamsRequest) GetRequestBody() string {
	if o == nil {
		return ""
	}
	return o.RequestBody
}

func (o *RequestBodyPutStringWithParamsRequest) GetQueryStringParam() string {
	if o == nil {
		return ""
	}
	return o.QueryStringParam
}

type RequestBodyPutStringWithParamsResArgs struct {
	QueryStringParam string `json:"queryStringParam"`
}

func (o *RequestBodyPutStringWithParamsResArgs) GetQueryStringParam() string {
	if o == nil {
		return ""
	}
	return o.QueryStringParam
}

// RequestBodyPutStringWithParamsRes - OK
type RequestBodyPutStringWithParamsRes struct {
	Args RequestBodyPutStringWithParamsResArgs `json:"args"`
	Data string                                `json:"data"`
}

func (o *RequestBodyPutStringWithParamsRes) GetArgs() RequestBodyPutStringWithParamsResArgs {
	if o == nil {
		return RequestBodyPutStringWithParamsResArgs{}
	}
	return o.Args
}

func (o *RequestBodyPutStringWithParamsRes) GetData() string {
	if o == nil {
		return ""
	}
	return o.Data
}

type RequestBodyPutStringWithParamsResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Res *RequestBodyPutStringWithParamsRes
}

func (o *RequestBodyPutStringWithParamsResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPutStringWithParamsResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPutStringWithParamsResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPutStringWithParamsResponse) GetRes() *RequestBodyPutStringWithParamsRes {
	if o == nil {
		return nil
	}
	return o.Res
}
