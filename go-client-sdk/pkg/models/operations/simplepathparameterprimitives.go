// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type SimplePathParameterPrimitivesRequest struct {
	BoolParam bool    `pathParam:"style=simple,explode=false,name=boolParam"`
	IntParam  int64   `pathParam:"style=simple,explode=false,name=intParam"`
	NumParam  float64 `pathParam:"style=simple,explode=false,name=numParam"`
	StrParam  string  `pathParam:"style=simple,explode=false,name=strParam"`
}

// SimplePathParameterPrimitivesRes - OK
type SimplePathParameterPrimitivesRes struct {
	URL string `json:"url"`
}

type SimplePathParameterPrimitivesResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	Res *SimplePathParameterPrimitivesRes
}
