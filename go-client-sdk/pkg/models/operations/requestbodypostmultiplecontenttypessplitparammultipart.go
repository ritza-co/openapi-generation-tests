// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type RequestBodyPostMultipleContentTypesSplitParamMultipartRequestBody struct {
	Bool2 bool    `multipartForm:"name=bool2"`
	Num2  float64 `multipartForm:"name=num2"`
	Str2  string  `multipartForm:"name=str2"`
}

func (o *RequestBodyPostMultipleContentTypesSplitParamMultipartRequestBody) GetBool2() bool {
	if o == nil {
		return false
	}
	return o.Bool2
}

func (o *RequestBodyPostMultipleContentTypesSplitParamMultipartRequestBody) GetNum2() float64 {
	if o == nil {
		return 0.0
	}
	return o.Num2
}

func (o *RequestBodyPostMultipleContentTypesSplitParamMultipartRequestBody) GetStr2() string {
	if o == nil {
		return ""
	}
	return o.Str2
}

type RequestBodyPostMultipleContentTypesSplitParamMultipartRequest struct {
	RequestBody RequestBodyPostMultipleContentTypesSplitParamMultipartRequestBody `request:"mediaType=multipart/form-data"`
	ParamStr    string                                                            `queryParam:"style=form,explode=true,name=paramStr"`
}

func (o *RequestBodyPostMultipleContentTypesSplitParamMultipartRequest) GetRequestBody() RequestBodyPostMultipleContentTypesSplitParamMultipartRequestBody {
	if o == nil {
		return RequestBodyPostMultipleContentTypesSplitParamMultipartRequestBody{}
	}
	return o.RequestBody
}

func (o *RequestBodyPostMultipleContentTypesSplitParamMultipartRequest) GetParamStr() string {
	if o == nil {
		return ""
	}
	return o.ParamStr
}

// RequestBodyPostMultipleContentTypesSplitParamMultipartRes - OK
type RequestBodyPostMultipleContentTypesSplitParamMultipartRes struct {
	Args map[string]string      `json:"args,omitempty"`
	Form map[string]interface{} `json:"form,omitempty"`
	JSON map[string]interface{} `json:"json,omitempty"`
}

func (o *RequestBodyPostMultipleContentTypesSplitParamMultipartRes) GetArgs() map[string]string {
	if o == nil {
		return nil
	}
	return o.Args
}

func (o *RequestBodyPostMultipleContentTypesSplitParamMultipartRes) GetForm() map[string]interface{} {
	if o == nil {
		return nil
	}
	return o.Form
}

func (o *RequestBodyPostMultipleContentTypesSplitParamMultipartRes) GetJSON() map[string]interface{} {
	if o == nil {
		return nil
	}
	return o.JSON
}

type RequestBodyPostMultipleContentTypesSplitParamMultipartResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Res *RequestBodyPostMultipleContentTypesSplitParamMultipartRes
}

func (o *RequestBodyPostMultipleContentTypesSplitParamMultipartResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostMultipleContentTypesSplitParamMultipartResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostMultipleContentTypesSplitParamMultipartResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostMultipleContentTypesSplitParamMultipartResponse) GetRes() *RequestBodyPostMultipleContentTypesSplitParamMultipartRes {
	if o == nil {
		return nil
	}
	return o.Res
}
