// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

// RequestBodyPutBytesRes - OK
type RequestBodyPutBytesRes struct {
	Data string `json:"data"`
}

type RequestBodyPutBytesResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	Res *RequestBodyPutBytesRes
}
