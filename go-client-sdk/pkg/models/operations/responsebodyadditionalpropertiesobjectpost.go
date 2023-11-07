// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/v2/pkg/models/shared"
)

// ResponseBodyAdditionalPropertiesObjectPostResponseBody - OK
type ResponseBodyAdditionalPropertiesObjectPostResponseBody struct {
	JSON shared.ObjWithObjAdditionalProperties `json:"json"`
}

func (o *ResponseBodyAdditionalPropertiesObjectPostResponseBody) GetJSON() shared.ObjWithObjAdditionalProperties {
	if o == nil {
		return shared.ObjWithObjAdditionalProperties{}
	}
	return o.JSON
}

type ResponseBodyAdditionalPropertiesObjectPostResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Object *ResponseBodyAdditionalPropertiesObjectPostResponseBody
}

func (o *ResponseBodyAdditionalPropertiesObjectPostResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *ResponseBodyAdditionalPropertiesObjectPostResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *ResponseBodyAdditionalPropertiesObjectPostResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *ResponseBodyAdditionalPropertiesObjectPostResponse) GetObject() *ResponseBodyAdditionalPropertiesObjectPostResponseBody {
	if o == nil {
		return nil
	}
	return o.Object
}
