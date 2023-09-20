// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"math/big"
	"net/http"
	"openapi/pkg/utils"
)

// RequestBodyPostJSONDataTypesArrayBigInt200ApplicationJSON - OK
type RequestBodyPostJSONDataTypesArrayBigInt200ApplicationJSON struct {
	JSON []*big.Int `json:"json"`
}

func (r RequestBodyPostJSONDataTypesArrayBigInt200ApplicationJSON) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(r, "", false)
}

func (r *RequestBodyPostJSONDataTypesArrayBigInt200ApplicationJSON) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &r, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *RequestBodyPostJSONDataTypesArrayBigInt200ApplicationJSON) GetJSON() []*big.Int {
	if o == nil {
		return []*big.Int{}
	}
	return o.JSON
}

type RequestBodyPostJSONDataTypesArrayBigIntResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	RequestBodyPostJSONDataTypesArrayBigInt200ApplicationJSONObject *RequestBodyPostJSONDataTypesArrayBigInt200ApplicationJSON
}

func (o *RequestBodyPostJSONDataTypesArrayBigIntResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostJSONDataTypesArrayBigIntResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostJSONDataTypesArrayBigIntResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostJSONDataTypesArrayBigIntResponse) GetRequestBodyPostJSONDataTypesArrayBigInt200ApplicationJSONObject() *RequestBodyPostJSONDataTypesArrayBigInt200ApplicationJSON {
	if o == nil {
		return nil
	}
	return o.RequestBodyPostJSONDataTypesArrayBigInt200ApplicationJSONObject
}
