// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

var ServerWithTemplatesServerList = []string{
	"http://{hostname}:{port}",
}

type ServerWithTemplatesResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
}

func (o *ServerWithTemplatesResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *ServerWithTemplatesResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *ServerWithTemplatesResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
