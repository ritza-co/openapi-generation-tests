// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/types"
	"openapi/pkg/utils"
)

// RequestBodyPostJSONDataTypesArrayDate200ApplicationJSON - OK
type RequestBodyPostJSONDataTypesArrayDate200ApplicationJSON struct {
	JSON []types.Date `json:"json"`
}

func (r RequestBodyPostJSONDataTypesArrayDate200ApplicationJSON) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(r, "", false)
}

func (r *RequestBodyPostJSONDataTypesArrayDate200ApplicationJSON) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &r, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *RequestBodyPostJSONDataTypesArrayDate200ApplicationJSON) GetJSON() []types.Date {
	if o == nil {
		return []types.Date{}
	}
	return o.JSON
}

type RequestBodyPostJSONDataTypesArrayDateResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	RequestBodyPostJSONDataTypesArrayDate200ApplicationJSONObject *RequestBodyPostJSONDataTypesArrayDate200ApplicationJSON
}

func (o *RequestBodyPostJSONDataTypesArrayDateResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostJSONDataTypesArrayDateResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostJSONDataTypesArrayDateResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostJSONDataTypesArrayDateResponse) GetRequestBodyPostJSONDataTypesArrayDate200ApplicationJSONObject() *RequestBodyPostJSONDataTypesArrayDate200ApplicationJSON {
	if o == nil {
		return nil
	}
	return o.RequestBodyPostJSONDataTypesArrayDate200ApplicationJSONObject
}
