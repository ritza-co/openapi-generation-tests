// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/models/shared"
)

type IgnoresPostApplicationJSON struct {
	CallbackURL *string `json:"callbackUrl,omitempty"`
	TestProp    *string `json:"testProp,omitempty"`
}

type IgnoresPostRequest struct {
	RequestBody *IgnoresPostApplicationJSON `request:"mediaType=application/json"`
	TestParam   *string                     `queryParam:"style=form,explode=true,name=testParam"`
}

type IgnoresPostResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	HTTPBinSimpleJSONObject *shared.HTTPBinSimpleJSONObject
}
