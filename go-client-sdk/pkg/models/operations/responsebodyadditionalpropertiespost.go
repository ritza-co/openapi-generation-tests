// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/v2/pkg/models/shared"
)

// ResponseBodyAdditionalPropertiesPostResponseBody - OK
type ResponseBodyAdditionalPropertiesPostResponseBody struct {
	JSON shared.ObjWithStringAdditionalProperties `json:"json"`
}

func (o *ResponseBodyAdditionalPropertiesPostResponseBody) GetJSON() shared.ObjWithStringAdditionalProperties {
	if o == nil {
		return shared.ObjWithStringAdditionalProperties{}
	}
	return o.JSON
}

type ResponseBodyAdditionalPropertiesPostResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Object *ResponseBodyAdditionalPropertiesPostResponseBody
}

func (o *ResponseBodyAdditionalPropertiesPostResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *ResponseBodyAdditionalPropertiesPostResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *ResponseBodyAdditionalPropertiesPostResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *ResponseBodyAdditionalPropertiesPostResponse) GetObject() *ResponseBodyAdditionalPropertiesPostResponseBody {
	if o == nil {
		return nil
	}
	return o.Object
}
