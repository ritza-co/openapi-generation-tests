// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type SimplePathParameterMapsRequest struct {
	MapParam         map[string]string `pathParam:"style=simple,explode=false,name=mapParam"`
	MapParamExploded map[string]int64  `pathParam:"style=simple,explode=true,name=mapParamExploded"`
}

func (o *SimplePathParameterMapsRequest) GetMapParam() map[string]string {
	if o == nil {
		return map[string]string{}
	}
	return o.MapParam
}

func (o *SimplePathParameterMapsRequest) GetMapParamExploded() map[string]int64 {
	if o == nil {
		return map[string]int64{}
	}
	return o.MapParamExploded
}

// SimplePathParameterMapsRes - OK
type SimplePathParameterMapsRes struct {
	URL string `json:"url"`
}

func (o *SimplePathParameterMapsRes) GetURL() string {
	if o == nil {
		return ""
	}
	return o.URL
}

type SimplePathParameterMapsResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Res *SimplePathParameterMapsRes
}

func (o *SimplePathParameterMapsResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *SimplePathParameterMapsResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *SimplePathParameterMapsResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *SimplePathParameterMapsResponse) GetRes() *SimplePathParameterMapsRes {
	if o == nil {
		return nil
	}
	return o.Res
}
