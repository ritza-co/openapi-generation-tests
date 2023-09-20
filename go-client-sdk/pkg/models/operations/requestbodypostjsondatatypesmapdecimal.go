// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"github.com/ericlagergren/decimal"
	"net/http"
	"openapi/pkg/utils"
)

// RequestBodyPostJSONDataTypesMapDecimal200ApplicationJSON - OK
type RequestBodyPostJSONDataTypesMapDecimal200ApplicationJSON struct {
	JSON map[string]*decimal.Big `decimal:"number" json:"json"`
}

func (r RequestBodyPostJSONDataTypesMapDecimal200ApplicationJSON) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(r, "", false)
}

func (r *RequestBodyPostJSONDataTypesMapDecimal200ApplicationJSON) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &r, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *RequestBodyPostJSONDataTypesMapDecimal200ApplicationJSON) GetJSON() map[string]*decimal.Big {
	if o == nil {
		return map[string]*decimal.Big{}
	}
	return o.JSON
}

type RequestBodyPostJSONDataTypesMapDecimalResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	RequestBodyPostJSONDataTypesMapDecimal200ApplicationJSONObject *RequestBodyPostJSONDataTypesMapDecimal200ApplicationJSON
}

func (o *RequestBodyPostJSONDataTypesMapDecimalResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostJSONDataTypesMapDecimalResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostJSONDataTypesMapDecimalResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostJSONDataTypesMapDecimalResponse) GetRequestBodyPostJSONDataTypesMapDecimal200ApplicationJSONObject() *RequestBodyPostJSONDataTypesMapDecimal200ApplicationJSON {
	if o == nil {
		return nil
	}
	return o.RequestBodyPostJSONDataTypesMapDecimal200ApplicationJSONObject
}
