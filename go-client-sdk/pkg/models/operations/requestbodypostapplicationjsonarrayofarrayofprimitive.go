// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

var RequestBodyPostApplicationJSONArrayOfArrayOfPrimitiveServerList = []string{
	"http://localhost:35456",
}

type RequestBodyPostApplicationJSONArrayOfArrayOfPrimitiveResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	Arrs [][]string
}
