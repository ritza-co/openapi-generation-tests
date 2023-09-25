// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/utils"
	"time"
)

// RequestBodyPostJSONDataTypesDateTime200ApplicationJSON - OK
type RequestBodyPostJSONDataTypesDateTime200ApplicationJSON struct {
	JSON time.Time `json:"json"`
}

func (r RequestBodyPostJSONDataTypesDateTime200ApplicationJSON) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(r, "", false)
}

func (r *RequestBodyPostJSONDataTypesDateTime200ApplicationJSON) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &r, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *RequestBodyPostJSONDataTypesDateTime200ApplicationJSON) GetJSON() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.JSON
}

type RequestBodyPostJSONDataTypesDateTimeResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	RequestBodyPostJSONDataTypesDateTime200ApplicationJSONObject *RequestBodyPostJSONDataTypesDateTime200ApplicationJSON
}

func (o *RequestBodyPostJSONDataTypesDateTimeResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostJSONDataTypesDateTimeResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostJSONDataTypesDateTimeResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostJSONDataTypesDateTimeResponse) GetRequestBodyPostJSONDataTypesDateTime200ApplicationJSONObject() *RequestBodyPostJSONDataTypesDateTime200ApplicationJSON {
	if o == nil {
		return nil
	}
	return o.RequestBodyPostJSONDataTypesDateTime200ApplicationJSONObject
}
