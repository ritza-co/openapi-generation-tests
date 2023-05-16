// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type DeepObjectQueryParamsMapRequest struct {
	MapParam    map[string]string   `queryParam:"style=deepObject,explode=true,name=mapParam"`
	MapArrParam map[string][]string `queryParam:"style=deepObject,explode=true,name=mapArrParam"`
}

// DeepObjectQueryParamsMapRes - OK
type DeepObjectQueryParamsMapRes struct {
	Args map[string]interface{} `json:"args"`
	URL  string                 `json:"url"`
}

type DeepObjectQueryParamsMapResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	Res *DeepObjectQueryParamsMapRes
}
