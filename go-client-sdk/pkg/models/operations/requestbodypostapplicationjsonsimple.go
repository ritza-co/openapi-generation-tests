// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/models/shared"
)

// RequestBodyPostApplicationJSONSimpleRes - OK
type RequestBodyPostApplicationJSONSimpleRes struct {
	// A simple object that uses all our supported primitive types and enums and has optional properties.
	JSON shared.SimpleObject `json:"json"`
}

type RequestBodyPostApplicationJSONSimpleResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	Res *RequestBodyPostApplicationJSONSimpleRes
}
