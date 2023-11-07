// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"math/big"
	"net/http"
	"openapi/v2/pkg/utils"
)

// RequestBodyPostJSONDataTypesMapBigIntStrResponseBody - OK
type RequestBodyPostJSONDataTypesMapBigIntStrResponseBody struct {
	Data string              `json:"data"`
	JSON map[string]*big.Int `bigint:"string" json:"json"`
}

func (r RequestBodyPostJSONDataTypesMapBigIntStrResponseBody) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(r, "", false)
}

func (r *RequestBodyPostJSONDataTypesMapBigIntStrResponseBody) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &r, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *RequestBodyPostJSONDataTypesMapBigIntStrResponseBody) GetData() string {
	if o == nil {
		return ""
	}
	return o.Data
}

func (o *RequestBodyPostJSONDataTypesMapBigIntStrResponseBody) GetJSON() map[string]*big.Int {
	if o == nil {
		return map[string]*big.Int{}
	}
	return o.JSON
}

type RequestBodyPostJSONDataTypesMapBigIntStrResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Object *RequestBodyPostJSONDataTypesMapBigIntStrResponseBody
}

func (o *RequestBodyPostJSONDataTypesMapBigIntStrResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostJSONDataTypesMapBigIntStrResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostJSONDataTypesMapBigIntStrResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostJSONDataTypesMapBigIntStrResponse) GetObject() *RequestBodyPostJSONDataTypesMapBigIntStrResponseBody {
	if o == nil {
		return nil
	}
	return o.Object
}
