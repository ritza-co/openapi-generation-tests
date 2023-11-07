// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/v2/pkg/models/shared"
)

type FormQueryParamsRefParamObjectRequest struct {
	RefObjParam         *shared.RefQueryParamObj         `queryParam:"style=form,explode=false,name=refObjParam"`
	RefObjParamExploded *shared.RefQueryParamObjExploded `queryParam:"style=form,explode=true,name=refObjParamExploded"`
}

func (o *FormQueryParamsRefParamObjectRequest) GetRefObjParam() *shared.RefQueryParamObj {
	if o == nil {
		return nil
	}
	return o.RefObjParam
}

func (o *FormQueryParamsRefParamObjectRequest) GetRefObjParamExploded() *shared.RefQueryParamObjExploded {
	if o == nil {
		return nil
	}
	return o.RefObjParamExploded
}

type FormQueryParamsRefParamObjectArgs struct {
	Bool        string `json:"bool"`
	Int         string `json:"int"`
	Num         string `json:"num"`
	RefObjParam string `json:"refObjParam"`
	Str         string `json:"str"`
}

func (o *FormQueryParamsRefParamObjectArgs) GetBool() string {
	if o == nil {
		return ""
	}
	return o.Bool
}

func (o *FormQueryParamsRefParamObjectArgs) GetInt() string {
	if o == nil {
		return ""
	}
	return o.Int
}

func (o *FormQueryParamsRefParamObjectArgs) GetNum() string {
	if o == nil {
		return ""
	}
	return o.Num
}

func (o *FormQueryParamsRefParamObjectArgs) GetRefObjParam() string {
	if o == nil {
		return ""
	}
	return o.RefObjParam
}

func (o *FormQueryParamsRefParamObjectArgs) GetStr() string {
	if o == nil {
		return ""
	}
	return o.Str
}

// FormQueryParamsRefParamObjectRes - OK
type FormQueryParamsRefParamObjectRes struct {
	Args FormQueryParamsRefParamObjectArgs `json:"args"`
	URL  string                            `json:"url"`
}

func (o *FormQueryParamsRefParamObjectRes) GetArgs() FormQueryParamsRefParamObjectArgs {
	if o == nil {
		return FormQueryParamsRefParamObjectArgs{}
	}
	return o.Args
}

func (o *FormQueryParamsRefParamObjectRes) GetURL() string {
	if o == nil {
		return ""
	}
	return o.URL
}

type FormQueryParamsRefParamObjectResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Res *FormQueryParamsRefParamObjectRes
}

func (o *FormQueryParamsRefParamObjectResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *FormQueryParamsRefParamObjectResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *FormQueryParamsRefParamObjectResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *FormQueryParamsRefParamObjectResponse) GetRes() *FormQueryParamsRefParamObjectRes {
	if o == nil {
		return nil
	}
	return o.Res
}
