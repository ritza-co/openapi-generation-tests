// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/models/shared"
)

// ResponseBodyAdditionalPropertiesPost200ApplicationJSON - OK
type ResponseBodyAdditionalPropertiesPost200ApplicationJSON struct {
	JSON shared.ObjWithStringAdditionlProperties `json:"json"`
}

func (o *ResponseBodyAdditionalPropertiesPost200ApplicationJSON) GetJSON() shared.ObjWithStringAdditionlProperties {
	if o == nil {
		return shared.ObjWithStringAdditionlProperties{}
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
	ResponseBodyAdditionalPropertiesPost200ApplicationJSONObject *ResponseBodyAdditionalPropertiesPost200ApplicationJSON
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

func (o *ResponseBodyAdditionalPropertiesPostResponse) GetResponseBodyAdditionalPropertiesPost200ApplicationJSONObject() *ResponseBodyAdditionalPropertiesPost200ApplicationJSON {
	if o == nil {
		return nil
	}
	return o.ResponseBodyAdditionalPropertiesPost200ApplicationJSONObject
}
