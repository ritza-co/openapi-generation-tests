// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type RequestBodyPostMultipleContentTypesSplitParamApplicationXWwwFormUrlencoded struct {
	Bool3 bool    `form:"name=bool3"`
	Num3  float64 `form:"name=num3"`
	Str3  string  `form:"name=str3"`
}

type RequestBodyPostMultipleContentTypesSplitParamFormRequest struct {
	RequestBody RequestBodyPostMultipleContentTypesSplitParamApplicationXWwwFormUrlencoded `request:"mediaType=application/x-www-form-urlencoded"`
	ParamStr    string                                                                     `queryParam:"style=form,explode=true,name=paramStr"`
}

// RequestBodyPostMultipleContentTypesSplitParamFormRes - OK
type RequestBodyPostMultipleContentTypesSplitParamFormRes struct {
	Args map[string]string      `json:"args,omitempty"`
	Form map[string]interface{} `json:"form,omitempty"`
	JSON map[string]interface{} `json:"json,omitempty"`
}

type RequestBodyPostMultipleContentTypesSplitParamFormResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	Res *RequestBodyPostMultipleContentTypesSplitParamFormRes
}
