// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"io"
	"net/http"
)

type ResponseBodyBytesGetResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	// The Close method must be called on this field, even if it is not used, to prevent resource leaks.
	Bytes io.ReadCloser
}

func (o *ResponseBodyBytesGetResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *ResponseBodyBytesGetResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *ResponseBodyBytesGetResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *ResponseBodyBytesGetResponse) GetBytes() io.ReadCloser {
	if o == nil {
		return nil
	}
	return o.Bytes
}
