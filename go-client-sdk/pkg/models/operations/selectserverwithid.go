// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

const (
	// The default server.
	SelectServerWithIDServerValid string = "valid"
	// A server url to a non-existent server.
	SelectServerWithIDServerBroken string = "broken"
)

var SelectServerWithIDServerList = map[string]string{
	// The default server.
	SelectServerWithIDServerValid: "http://localhost:35123",
	// A server url to a non-existent server.
	SelectServerWithIDServerBroken: "http://broken",
}

type SelectServerWithIDResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
}

func (o *SelectServerWithIDResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *SelectServerWithIDResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *SelectServerWithIDResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
