// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"github.com/ericlagergren/decimal"
	"math/big"
	"net/http"
	"openapi/pkg/models/shared"
	"openapi/pkg/utils"
)

type RequestBodyPostComplexNumberTypesRequest struct {
	ComplexNumberTypes shared.ComplexNumberTypes `request:"mediaType=application/json"`
	PathBigInt         *big.Int                  `pathParam:"style=simple,explode=false,name=pathBigInt"`
	PathBigIntStr      *big.Int                  `bigint:"string" pathParam:"style=simple,explode=false,name=pathBigIntStr"`
	PathDecimal        *decimal.Big              `decimal:"number" pathParam:"style=simple,explode=false,name=pathDecimal"`
	PathDecimalStr     *decimal.Big              `pathParam:"style=simple,explode=false,name=pathDecimalStr"`
	QueryBigInt        *big.Int                  `queryParam:"style=form,explode=true,name=queryBigInt"`
	QueryBigIntStr     *big.Int                  `bigint:"string" queryParam:"style=form,explode=true,name=queryBigIntStr"`
	QueryDecimal       *decimal.Big              `decimal:"number" queryParam:"style=form,explode=true,name=queryDecimal"`
	QueryDecimalStr    *decimal.Big              `queryParam:"style=form,explode=true,name=queryDecimalStr"`
}

func (r RequestBodyPostComplexNumberTypesRequest) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(r, "", false)
}

func (r *RequestBodyPostComplexNumberTypesRequest) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &r, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *RequestBodyPostComplexNumberTypesRequest) GetComplexNumberTypes() shared.ComplexNumberTypes {
	if o == nil {
		return shared.ComplexNumberTypes{}
	}
	return o.ComplexNumberTypes
}

func (o *RequestBodyPostComplexNumberTypesRequest) GetPathBigInt() *big.Int {
	if o == nil {
		return big.NewInt(0)
	}
	return o.PathBigInt
}

func (o *RequestBodyPostComplexNumberTypesRequest) GetPathBigIntStr() *big.Int {
	if o == nil {
		return big.NewInt(0)
	}
	return o.PathBigIntStr
}

func (o *RequestBodyPostComplexNumberTypesRequest) GetPathDecimal() *decimal.Big {
	if o == nil {
		return new(decimal.Big).SetFloat64(0.0)
	}
	return o.PathDecimal
}

func (o *RequestBodyPostComplexNumberTypesRequest) GetPathDecimalStr() *decimal.Big {
	if o == nil {
		return new(decimal.Big).SetFloat64(0.0)
	}
	return o.PathDecimalStr
}

func (o *RequestBodyPostComplexNumberTypesRequest) GetQueryBigInt() *big.Int {
	if o == nil {
		return big.NewInt(0)
	}
	return o.QueryBigInt
}

func (o *RequestBodyPostComplexNumberTypesRequest) GetQueryBigIntStr() *big.Int {
	if o == nil {
		return big.NewInt(0)
	}
	return o.QueryBigIntStr
}

func (o *RequestBodyPostComplexNumberTypesRequest) GetQueryDecimal() *decimal.Big {
	if o == nil {
		return new(decimal.Big).SetFloat64(0.0)
	}
	return o.QueryDecimal
}

func (o *RequestBodyPostComplexNumberTypesRequest) GetQueryDecimalStr() *decimal.Big {
	if o == nil {
		return new(decimal.Big).SetFloat64(0.0)
	}
	return o.QueryDecimalStr
}

// RequestBodyPostComplexNumberTypes200ApplicationJSON - OK
type RequestBodyPostComplexNumberTypes200ApplicationJSON struct {
	JSON shared.ComplexNumberTypes `json:"json"`
	URL  string                    `json:"url"`
}

func (o *RequestBodyPostComplexNumberTypes200ApplicationJSON) GetJSON() shared.ComplexNumberTypes {
	if o == nil {
		return shared.ComplexNumberTypes{}
	}
	return o.JSON
}

func (o *RequestBodyPostComplexNumberTypes200ApplicationJSON) GetURL() string {
	if o == nil {
		return ""
	}
	return o.URL
}

type RequestBodyPostComplexNumberTypesResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	RequestBodyPostComplexNumberTypes200ApplicationJSONObject *RequestBodyPostComplexNumberTypes200ApplicationJSON
}

func (o *RequestBodyPostComplexNumberTypesResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *RequestBodyPostComplexNumberTypesResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *RequestBodyPostComplexNumberTypesResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *RequestBodyPostComplexNumberTypesResponse) GetRequestBodyPostComplexNumberTypes200ApplicationJSONObject() *RequestBodyPostComplexNumberTypes200ApplicationJSON {
	if o == nil {
		return nil
	}
	return o.RequestBodyPostComplexNumberTypes200ApplicationJSONObject
}
