// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type RequestBodyPostFormDeepResForm struct {
	Arr  string `json:"arr"`
	Bool string `json:"bool"`
	Int  string `json:"int"`
	Map  string `json:"map"`
	Num  string `json:"num"`
	Obj  string `json:"obj"`
	Str  string `json:"str"`
}

func (o *RequestBodyPostFormDeepResForm) GetArr() string {
	if o == nil {
		return ""
	}
	return o.Arr
}

func (o *RequestBodyPostFormDeepResForm) GetBool() string {
	if o == nil {
		return ""
	}
	return o.Bool
}

func (o *RequestBodyPostFormDeepResForm) GetInt() string {
	if o == nil {
		return ""
	}
	return o.Int
}

func (o *RequestBodyPostFormDeepResForm) GetMap() string {
	if o == nil {
		return ""
	}
	return o.Map
}

func (o *RequestBodyPostFormDeepResForm) GetNum() string {
	if o == nil {
		return ""
	}
	return o.Num
}

func (o *RequestBodyPostFormDeepResForm) GetObj() string {
	if o == nil {
		return ""
	}
	return o.Obj
}

func (o *RequestBodyPostFormDeepResForm) GetStr() string {
	if o == nil {
		return ""
	}
	return o.Str
}

// RequestBodyPostFormDeepRes - OK
type RequestBodyPostFormDeepRes struct {
	Form RequestBodyPostFormDeepResForm `json:"form"`
}

func (o *RequestBodyPostFormDeepRes) GetForm() RequestBodyPostFormDeepResForm {
	if o == nil {
		return RequestBodyPostFormDeepResForm{}
	}
	return o.Form
}

type RequestBodyPostFormDeepResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	Res *RequestBodyPostFormDeepRes
}

func (o *RequestBodyPostFormDeepResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostFormDeepResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostFormDeepResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostFormDeepResponse) GetRes() *RequestBodyPostFormDeepRes {
	if o == nil {
		return nil
	}
	return o.Res
}
