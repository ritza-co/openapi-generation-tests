// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"math/big"
	"net/http"
	"openapi/v2/pkg/utils"
)

// RequestBodyPostJSONDataTypesArrayBigIntResponseBody - OK
type RequestBodyPostJSONDataTypesArrayBigIntResponseBody struct {
	Data string     `json:"data"`
	JSON []*big.Int `json:"json"`
}

func (r RequestBodyPostJSONDataTypesArrayBigIntResponseBody) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(r, "", false)
}

func (r *RequestBodyPostJSONDataTypesArrayBigIntResponseBody) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &r, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *RequestBodyPostJSONDataTypesArrayBigIntResponseBody) GetData() string {
	if o == nil {
		return ""
	}
	return o.Data
}

func (o *RequestBodyPostJSONDataTypesArrayBigIntResponseBody) GetJSON() []*big.Int {
	if o == nil {
		return []*big.Int{}
	}
	return o.JSON
}

type RequestBodyPostJSONDataTypesArrayBigIntResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Object *RequestBodyPostJSONDataTypesArrayBigIntResponseBody
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

func (o *RequestBodyPostJSONDataTypesArrayBigIntResponse) GetObject() *RequestBodyPostJSONDataTypesArrayBigIntResponseBody {
	if o == nil {
		return nil
	}
	return o.Object
}
