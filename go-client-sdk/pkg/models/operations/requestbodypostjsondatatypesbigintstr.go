// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"math/big"
	"net/http"
	"openapi/pkg/utils"
)

// RequestBodyPostJSONDataTypesBigIntStr200ApplicationJSON - OK
type RequestBodyPostJSONDataTypesBigIntStr200ApplicationJSON struct {
	JSON *big.Int `bigint:"string" json:"json"`
}

func (r RequestBodyPostJSONDataTypesBigIntStr200ApplicationJSON) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(r, "", false)
}

func (r *RequestBodyPostJSONDataTypesBigIntStr200ApplicationJSON) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &r, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *RequestBodyPostJSONDataTypesBigIntStr200ApplicationJSON) GetJSON() *big.Int {
	if o == nil {
		return big.NewInt(0)
	}
	return o.JSON
}

type RequestBodyPostJSONDataTypesBigIntStrResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	RequestBodyPostJSONDataTypesBigIntStr200ApplicationJSONObject *RequestBodyPostJSONDataTypesBigIntStr200ApplicationJSON
}

func (o *RequestBodyPostJSONDataTypesBigIntStrResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostJSONDataTypesBigIntStrResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostJSONDataTypesBigIntStrResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostJSONDataTypesBigIntStrResponse) GetRequestBodyPostJSONDataTypesBigIntStr200ApplicationJSONObject() *RequestBodyPostJSONDataTypesBigIntStr200ApplicationJSON {
	if o == nil {
		return nil
	}
	return o.RequestBodyPostJSONDataTypesBigIntStr200ApplicationJSONObject
}
