// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/v2/pkg/models/shared"
)

// RequestBodyPostDefaultsAndConstsResponseBody - OK
type RequestBodyPostDefaultsAndConstsResponseBody struct {
	JSON shared.DefaultsAndConstsOutput `json:"json"`
}

func (o *RequestBodyPostDefaultsAndConstsResponseBody) GetJSON() shared.DefaultsAndConstsOutput {
	if o == nil {
		return shared.DefaultsAndConstsOutput{}
	}
	return o.JSON
}

type RequestBodyPostDefaultsAndConstsResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Object *RequestBodyPostDefaultsAndConstsResponseBody
}

func (o *RequestBodyPostDefaultsAndConstsResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostDefaultsAndConstsResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostDefaultsAndConstsResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostDefaultsAndConstsResponse) GetObject() *RequestBodyPostDefaultsAndConstsResponseBody {
	if o == nil {
		return nil
	}
	return o.Object
}
