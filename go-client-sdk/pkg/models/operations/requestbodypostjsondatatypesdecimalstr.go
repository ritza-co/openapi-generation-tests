// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"github.com/ericlagergren/decimal"
	"net/http"
	"openapi/v2/pkg/utils"
)

// RequestBodyPostJSONDataTypesDecimalStrResponseBody - OK
type RequestBodyPostJSONDataTypesDecimalStrResponseBody struct {
	Data string       `json:"data"`
	JSON *decimal.Big `json:"json"`
}

func (r RequestBodyPostJSONDataTypesDecimalStrResponseBody) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(r, "", false)
}

func (r *RequestBodyPostJSONDataTypesDecimalStrResponseBody) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &r, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *RequestBodyPostJSONDataTypesDecimalStrResponseBody) GetData() string {
	if o == nil {
		return ""
	}
	return o.Data
}

func (o *RequestBodyPostJSONDataTypesDecimalStrResponseBody) GetJSON() *decimal.Big {
	if o == nil {
		return new(decimal.Big).SetFloat64(0.0)
	}
	return o.JSON
}

type RequestBodyPostJSONDataTypesDecimalStrResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Object *RequestBodyPostJSONDataTypesDecimalStrResponseBody
}

func (o *RequestBodyPostJSONDataTypesDecimalStrResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostJSONDataTypesDecimalStrResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostJSONDataTypesDecimalStrResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostJSONDataTypesDecimalStrResponse) GetObject() *RequestBodyPostJSONDataTypesDecimalStrResponseBody {
	if o == nil {
		return nil
	}
	return o.Object
}
