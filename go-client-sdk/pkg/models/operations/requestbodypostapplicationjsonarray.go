// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/models/shared"
)

var RequestBodyPostApplicationJSONArrayServerList = []string{
	"http://localhost:35456",
}

type RequestBodyPostApplicationJSONArrayResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	SimpleObjects []shared.SimpleObject
}
