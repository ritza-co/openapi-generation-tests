// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type RequestBodyPostMultipleContentTypesSplitParamApplicationJSON struct {
	Bool bool    `json:"bool"`
	Num  float64 `json:"num"`
	Str  string  `json:"str"`
}

type RequestBodyPostMultipleContentTypesSplitParamJSONRequest struct {
	RequestBody RequestBodyPostMultipleContentTypesSplitParamApplicationJSON `request:"mediaType=application/json"`
	ParamStr    string                                                       `queryParam:"style=form,explode=true,name=paramStr"`
}

// RequestBodyPostMultipleContentTypesSplitParamJSONRes - OK
type RequestBodyPostMultipleContentTypesSplitParamJSONRes struct {
	Args map[string]string      `json:"args,omitempty"`
	Form map[string]interface{} `json:"form,omitempty"`
	JSON map[string]interface{} `json:"json,omitempty"`
}

type RequestBodyPostMultipleContentTypesSplitParamJSONResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	Res *RequestBodyPostMultipleContentTypesSplitParamJSONRes
}
