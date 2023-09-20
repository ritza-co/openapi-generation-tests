// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/utils"
	"time"
)

// RequestBodyPostJSONDataTypesMapDateTime200ApplicationJSON - OK
type RequestBodyPostJSONDataTypesMapDateTime200ApplicationJSON struct {
	JSON map[string]time.Time `json:"json"`
}

func (r RequestBodyPostJSONDataTypesMapDateTime200ApplicationJSON) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(r, "", false)
}

func (r *RequestBodyPostJSONDataTypesMapDateTime200ApplicationJSON) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &r, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *RequestBodyPostJSONDataTypesMapDateTime200ApplicationJSON) GetJSON() map[string]time.Time {
	if o == nil {
		return map[string]time.Time{}
	}
	return o.JSON
}

type RequestBodyPostJSONDataTypesMapDateTimeResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	RequestBodyPostJSONDataTypesMapDateTime200ApplicationJSONObject *RequestBodyPostJSONDataTypesMapDateTime200ApplicationJSON
}

func (o *RequestBodyPostJSONDataTypesMapDateTimeResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostJSONDataTypesMapDateTimeResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostJSONDataTypesMapDateTimeResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostJSONDataTypesMapDateTimeResponse) GetRequestBodyPostJSONDataTypesMapDateTime200ApplicationJSONObject() *RequestBodyPostJSONDataTypesMapDateTime200ApplicationJSON {
	if o == nil {
		return nil
	}
	return o.RequestBodyPostJSONDataTypesMapDateTime200ApplicationJSONObject
}
