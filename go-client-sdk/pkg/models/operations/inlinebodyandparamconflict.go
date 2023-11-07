// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type InlineBodyAndParamConflictRequestBody struct {
	Str string `json:"str"`
}

func (o *InlineBodyAndParamConflictRequestBody) GetStr() string {
	if o == nil {
		return ""
	}
	return o.Str
}

type InlineBodyAndParamConflictRequest struct {
	RequestBody InlineBodyAndParamConflictRequestBody `request:"mediaType=application/json"`
	Str         string                                `queryParam:"style=form,explode=true,name=str"`
}

func (o *InlineBodyAndParamConflictRequest) GetRequestBody() InlineBodyAndParamConflictRequestBody {
	if o == nil {
		return InlineBodyAndParamConflictRequestBody{}
	}
	return o.RequestBody
}

func (o *InlineBodyAndParamConflictRequest) GetStr() string {
	if o == nil {
		return ""
	}
	return o.Str
}

type JSON struct {
	Str string `json:"str"`
}

func (o *JSON) GetStr() string {
	if o == nil {
		return ""
	}
	return o.Str
}

// InlineBodyAndParamConflictRes - OK
type InlineBodyAndParamConflictRes struct {
	Args map[string]string `json:"args"`
	JSON JSON              `json:"json"`
}

func (o *InlineBodyAndParamConflictRes) GetArgs() map[string]string {
	if o == nil {
		return map[string]string{}
	}
	return o.Args
}

func (o *InlineBodyAndParamConflictRes) GetJSON() JSON {
	if o == nil {
		return JSON{}
	}
	return o.JSON
}

type InlineBodyAndParamConflictResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Res *InlineBodyAndParamConflictRes
}

func (o *InlineBodyAndParamConflictResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *InlineBodyAndParamConflictResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *InlineBodyAndParamConflictResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *InlineBodyAndParamConflictResponse) GetRes() *InlineBodyAndParamConflictRes {
	if o == nil {
		return nil
	}
	return o.Res
}
