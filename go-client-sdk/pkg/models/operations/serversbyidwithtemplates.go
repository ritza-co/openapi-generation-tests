// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

const (
	ServersByIDWithTemplatesServerMain string = "main"
)

var ServersByIDWithTemplatesServerList = map[string]string{
	// A server url to a non-existent server.
	ServersByIDWithTemplatesServerMain: "http://{hostname}:{port}",
}

type ServersByIDWithTemplatesResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
}

func (o *ServersByIDWithTemplatesResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *ServersByIDWithTemplatesResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *ServersByIDWithTemplatesResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
