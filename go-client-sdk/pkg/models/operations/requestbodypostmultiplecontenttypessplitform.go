// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type RequestBodyPostMultipleContentTypesSplitApplicationXWwwFormUrlencoded struct {
	Bool3 bool    `form:"name=bool3"`
	Num3  float64 `form:"name=num3"`
	Str3  string  `form:"name=str3"`
}

func (o *RequestBodyPostMultipleContentTypesSplitApplicationXWwwFormUrlencoded) GetBool3() bool {
	if o == nil {
		return false
	}
	return o.Bool3
}

func (o *RequestBodyPostMultipleContentTypesSplitApplicationXWwwFormUrlencoded) GetNum3() float64 {
	if o == nil {
		return 0.0
	}
	return o.Num3
}

func (o *RequestBodyPostMultipleContentTypesSplitApplicationXWwwFormUrlencoded) GetStr3() string {
	if o == nil {
		return ""
	}
	return o.Str3
}

// RequestBodyPostMultipleContentTypesSplitFormRes - OK
type RequestBodyPostMultipleContentTypesSplitFormRes struct {
	Form map[string]interface{} `json:"form,omitempty"`
	JSON map[string]interface{} `json:"json,omitempty"`
}

func (o *RequestBodyPostMultipleContentTypesSplitFormRes) GetForm() map[string]interface{} {
	if o == nil {
		return nil
	}
	return o.Form
}

func (o *RequestBodyPostMultipleContentTypesSplitFormRes) GetJSON() map[string]interface{} {
	if o == nil {
		return nil
	}
	return o.JSON
}

type RequestBodyPostMultipleContentTypesSplitFormResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Res *RequestBodyPostMultipleContentTypesSplitFormRes
}

func (o *RequestBodyPostMultipleContentTypesSplitFormResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostMultipleContentTypesSplitFormResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostMultipleContentTypesSplitFormResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostMultipleContentTypesSplitFormResponse) GetRes() *RequestBodyPostMultipleContentTypesSplitFormRes {
	if o == nil {
		return nil
	}
	return o.Res
}
