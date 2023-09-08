// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"math/big"
	"net/http"
	"openapi/pkg/types"
)

type TypedParameterGenerationGetObj struct {
	Bool bool    `queryParam:"name=bool"`
	Num  float64 `queryParam:"name=num"`
	Str  string  `queryParam:"name=str"`
}

func (o *TypedParameterGenerationGetObj) GetBool() bool {
	if o == nil {
		return false
	}
	return o.Bool
}

func (o *TypedParameterGenerationGetObj) GetNum() float64 {
	if o == nil {
		return 0.0
	}
	return o.Num
}

func (o *TypedParameterGenerationGetObj) GetStr() string {
	if o == nil {
		return ""
	}
	return o.Str
}

type TypedParameterGenerationGetRequest struct {
	Bigint  *big.Int                        `queryParam:"style=form,explode=true,name=bigint"`
	Date    *types.Date                     `queryParam:"style=form,explode=true,name=date"`
	Decimal *types.Decimal                  `queryParam:"style=form,explode=true,name=decimal"`
	Obj     *TypedParameterGenerationGetObj `queryParam:"style=form,explode=true,name=obj"`
}

func (o *TypedParameterGenerationGetRequest) GetBigint() *big.Int {
	if o == nil {
		return nil
	}
	return o.Bigint
}

func (o *TypedParameterGenerationGetRequest) GetDate() *types.Date {
	if o == nil {
		return nil
	}
	return o.Date
}

func (o *TypedParameterGenerationGetRequest) GetDecimal() *types.Decimal {
	if o == nil {
		return nil
	}
	return o.Decimal
}

func (o *TypedParameterGenerationGetRequest) GetObj() *TypedParameterGenerationGetObj {
	if o == nil {
		return nil
	}
	return o.Obj
}

type TypedParameterGenerationGetResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
}

func (o *TypedParameterGenerationGetResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *TypedParameterGenerationGetResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *TypedParameterGenerationGetResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
