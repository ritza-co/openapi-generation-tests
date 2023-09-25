// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/models/shared"
)

// ResponseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSON - OK
type ResponseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSON struct {
	JSON shared.ObjWithComplexNumbersAdditionlProperties `json:"json"`
}

func (o *ResponseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSON) GetJSON() shared.ObjWithComplexNumbersAdditionlProperties {
	if o == nil {
		return shared.ObjWithComplexNumbersAdditionlProperties{}
	}
	return o.JSON
}

type ResponseBodyAdditionalPropertiesComplexNumbersPostResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	ResponseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSONObject *ResponseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSON
}

func (o *ResponseBodyAdditionalPropertiesComplexNumbersPostResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *ResponseBodyAdditionalPropertiesComplexNumbersPostResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *ResponseBodyAdditionalPropertiesComplexNumbersPostResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *ResponseBodyAdditionalPropertiesComplexNumbersPostResponse) GetResponseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSONObject() *ResponseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSON {
	if o == nil {
		return nil
	}
	return o.ResponseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSONObject
}
