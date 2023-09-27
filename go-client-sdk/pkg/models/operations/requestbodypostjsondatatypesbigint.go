// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"math/big"
	"net/http"
	"openapi/pkg/utils"
)

// RequestBodyPostJSONDataTypesBigInt200ApplicationJSON - OK
type RequestBodyPostJSONDataTypesBigInt200ApplicationJSON struct {
	Data string   `json:"data"`
	JSON *big.Int `json:"json"`
}

func (r RequestBodyPostJSONDataTypesBigInt200ApplicationJSON) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(r, "", false)
}

func (r *RequestBodyPostJSONDataTypesBigInt200ApplicationJSON) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &r, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *RequestBodyPostJSONDataTypesBigInt200ApplicationJSON) GetData() string {
	if o == nil {
		return ""
	}
	return o.Data
}

func (o *RequestBodyPostJSONDataTypesBigInt200ApplicationJSON) GetJSON() *big.Int {
	if o == nil {
		return big.NewInt(0)
	}
	return o.JSON
}

type RequestBodyPostJSONDataTypesBigIntResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	RequestBodyPostJSONDataTypesBigInt200ApplicationJSONObject *RequestBodyPostJSONDataTypesBigInt200ApplicationJSON
}

func (o *RequestBodyPostJSONDataTypesBigIntResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostJSONDataTypesBigIntResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostJSONDataTypesBigIntResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostJSONDataTypesBigIntResponse) GetRequestBodyPostJSONDataTypesBigInt200ApplicationJSONObject() *RequestBodyPostJSONDataTypesBigInt200ApplicationJSON {
	if o == nil {
		return nil
	}
	return o.RequestBodyPostJSONDataTypesBigInt200ApplicationJSONObject
}
