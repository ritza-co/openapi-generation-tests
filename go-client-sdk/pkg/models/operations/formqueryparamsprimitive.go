// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type FormQueryParamsPrimitiveRequest struct {
	BoolParam bool    `queryParam:"style=form,explode=true,name=boolParam"`
	IntParam  int64   `queryParam:"style=form,explode=true,name=intParam"`
	NumParam  float64 `queryParam:"style=form,explode=true,name=numParam"`
	StrParam  string  `queryParam:"style=form,explode=true,name=strParam"`
}

func (o *FormQueryParamsPrimitiveRequest) GetBoolParam() bool {
	if o == nil {
		return false
	}
	return o.BoolParam
}

func (o *FormQueryParamsPrimitiveRequest) GetIntParam() int64 {
	if o == nil {
		return 0
	}
	return o.IntParam
}

func (o *FormQueryParamsPrimitiveRequest) GetNumParam() float64 {
	if o == nil {
		return 0.0
	}
	return o.NumParam
}

func (o *FormQueryParamsPrimitiveRequest) GetStrParam() string {
	if o == nil {
		return ""
	}
	return o.StrParam
}

type FormQueryParamsPrimitiveArgs struct {
	BoolParam string `json:"boolParam"`
	IntParam  string `json:"intParam"`
	NumParam  string `json:"numParam"`
	StrParam  string `json:"strParam"`
}

func (o *FormQueryParamsPrimitiveArgs) GetBoolParam() string {
	if o == nil {
		return ""
	}
	return o.BoolParam
}

func (o *FormQueryParamsPrimitiveArgs) GetIntParam() string {
	if o == nil {
		return ""
	}
	return o.IntParam
}

func (o *FormQueryParamsPrimitiveArgs) GetNumParam() string {
	if o == nil {
		return ""
	}
	return o.NumParam
}

func (o *FormQueryParamsPrimitiveArgs) GetStrParam() string {
	if o == nil {
		return ""
	}
	return o.StrParam
}

// FormQueryParamsPrimitiveRes - OK
type FormQueryParamsPrimitiveRes struct {
	Args FormQueryParamsPrimitiveArgs `json:"args"`
	URL  string                       `json:"url"`
}

func (o *FormQueryParamsPrimitiveRes) GetArgs() FormQueryParamsPrimitiveArgs {
	if o == nil {
		return FormQueryParamsPrimitiveArgs{}
	}
	return o.Args
}

func (o *FormQueryParamsPrimitiveRes) GetURL() string {
	if o == nil {
		return ""
	}
	return o.URL
}

type FormQueryParamsPrimitiveResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Res *FormQueryParamsPrimitiveRes
}

func (o *FormQueryParamsPrimitiveResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *FormQueryParamsPrimitiveResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *FormQueryParamsPrimitiveResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *FormQueryParamsPrimitiveResponse) GetRes() *FormQueryParamsPrimitiveRes {
	if o == nil {
		return nil
	}
	return o.Res
}
