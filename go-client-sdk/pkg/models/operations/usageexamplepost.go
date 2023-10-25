// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"encoding/json"
	"fmt"
	"github.com/ericlagergren/decimal"
	"math/big"
	"net/http"
	"openapi/pkg/models/shared"
	"openapi/pkg/types"
	"openapi/pkg/utils"
	"time"
)

type UsageExamplePostSecurity struct {
	Password string `security:"scheme,type=http,subtype=basic,name=password"`
	Username string `security:"scheme,type=http,subtype=basic,name=username"`
}

func (o *UsageExamplePostSecurity) GetPassword() string {
	if o == nil {
		return ""
	}
	return o.Password
}

func (o *UsageExamplePostSecurity) GetUsername() string {
	if o == nil {
		return ""
	}
	return o.Username
}

// UsageExamplePostRequestBody - A request body that contains fields with different formats for testing example generation
type UsageExamplePostRequestBody struct {
	// A set of strings with format values that lead to relevant examples being generated for them
	FakerFormattedStrings *shared.FakerFormattedStrings `json:"fakerFormattedStrings,omitempty"`
	// A set of strings with fieldnames that lead to relevant examples being generated for them
	FakerStrings *shared.FakerStrings `json:"fakerStrings,omitempty"`
	// A simple object that uses all our supported primitive types and enums and has optional properties.
	SimpleObject *shared.SimpleObject `json:"simpleObject,omitempty"`
}

func (o *UsageExamplePostRequestBody) GetFakerFormattedStrings() *shared.FakerFormattedStrings {
	if o == nil {
		return nil
	}
	return o.FakerFormattedStrings
}

func (o *UsageExamplePostRequestBody) GetFakerStrings() *shared.FakerStrings {
	if o == nil {
		return nil
	}
	return o.FakerStrings
}

func (o *UsageExamplePostRequestBody) GetSimpleObject() *shared.SimpleObject {
	if o == nil {
		return nil
	}
	return o.SimpleObject
}

// UsageExamplePostEnumParameter - An enum type
type UsageExamplePostEnumParameter string

const (
	UsageExamplePostEnumParameterValue1 UsageExamplePostEnumParameter = "value1"
	UsageExamplePostEnumParameterValue2 UsageExamplePostEnumParameter = "value2"
	UsageExamplePostEnumParameterValue3 UsageExamplePostEnumParameter = "value3"
)

func (e UsageExamplePostEnumParameter) ToPointer() *UsageExamplePostEnumParameter {
	return &e
}

func (e *UsageExamplePostEnumParameter) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "value1":
		fallthrough
	case "value2":
		fallthrough
	case "value3":
		*e = UsageExamplePostEnumParameter(v)
		return nil
	default:
		return fmt.Errorf("invalid value for UsageExamplePostEnumParameter: %v", v)
	}
}

// UsageExamplePostOptEnumParameter - An enum type
type UsageExamplePostOptEnumParameter string

const (
	UsageExamplePostOptEnumParameterValue1 UsageExamplePostOptEnumParameter = "value1"
	UsageExamplePostOptEnumParameterValue2 UsageExamplePostOptEnumParameter = "value2"
	UsageExamplePostOptEnumParameterValue3 UsageExamplePostOptEnumParameter = "value3"
)

func (e UsageExamplePostOptEnumParameter) ToPointer() *UsageExamplePostOptEnumParameter {
	return &e
}

func (e *UsageExamplePostOptEnumParameter) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "value1":
		fallthrough
	case "value2":
		fallthrough
	case "value3":
		*e = UsageExamplePostOptEnumParameter(v)
		return nil
	default:
		return fmt.Errorf("invalid value for UsageExamplePostOptEnumParameter: %v", v)
	}
}

type UsageExamplePostRequest struct {
	// A request body that contains fields with different formats for testing example generation
	RequestBody *UsageExamplePostRequestBody `request:"mediaType=application/json"`
	// An bigint parameter
	BigintParameter *big.Int `queryParam:"style=form,explode=true,name=bigintParameter"`
	// An bigint parameter
	BigintParameterOptional *big.Int `queryParam:"style=form,explode=true,name=bigintParameterOptional"`
	// An bigint parameter
	BigintStrParameter *big.Int `bigint:"string" queryParam:"style=form,explode=true,name=bigintStrParameter"`
	// An bigint parameter
	BigintStrParameterOptional *big.Int `bigint:"string" queryParam:"style=form,explode=true,name=bigintStrParameterOptional"`
	// A boolean parameter
	BoolParameter bool `queryParam:"style=form,explode=true,name=boolParameter"`
	// A date parameter
	DateParameter types.Date `queryParam:"style=form,explode=true,name=dateParameter"`
	// A date time parameter with a default value
	DateTimeDefaultParameter time.Time `queryParam:"style=form,explode=true,name=dateTimeDefaultParameter"`
	// A date time parameter
	DateTimeParameter time.Time `queryParam:"style=form,explode=true,name=dateTimeParameter"`
	// A decimal parameter
	DecimalParameter *decimal.Big `decimal:"number" queryParam:"style=form,explode=true,name=decimalParameter"`
	// A decimal parameter
	DecimalParameterOptional *decimal.Big `decimal:"number" queryParam:"style=form,explode=true,name=decimalParameterOptional"`
	// A decimal parameter
	DecimalStrParameter *decimal.Big `queryParam:"style=form,explode=true,name=decimalStrParameter"`
	// A decimal parameter
	DecimalStrParameterOptional *decimal.Big `queryParam:"style=form,explode=true,name=decimalStrParameterOptional"`
	// A double parameter
	DoubleParameter float64 `queryParam:"style=form,explode=true,name=doubleParameter"`
	// An enum parameter
	EnumParameter UsageExamplePostEnumParameter `queryParam:"style=form,explode=true,name=enumParameter"`
	// A number parameter that contains a falsey example value
	FalseyNumberParameter float64 `queryParam:"style=form,explode=true,name=falseyNumberParameter"`
	// A float32 parameter
	Float32Parameter float32 `queryParam:"style=form,explode=true,name=float32Parameter"`
	// A float parameter
	FloatParameter float64 `queryParam:"style=form,explode=true,name=floatParameter"`
	// An int64 parameter
	Int64Parameter int64 `queryParam:"style=form,explode=true,name=int64Parameter"`
	// An integer parameter
	IntParameter int `queryParam:"style=form,explode=true,name=intParameter"`
	// An enum parameter
	OptEnumParameter *UsageExamplePostOptEnumParameter `queryParam:"style=form,explode=true,name=optEnumParameter"`
	// A string parameter
	StrParameter string `queryParam:"style=form,explode=true,name=strParameter"`
}

func (u UsageExamplePostRequest) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(u, "", false)
}

func (u *UsageExamplePostRequest) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &u, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *UsageExamplePostRequest) GetRequestBody() *UsageExamplePostRequestBody {
	if o == nil {
		return nil
	}
	return o.RequestBody
}

func (o *UsageExamplePostRequest) GetBigintParameter() *big.Int {
	if o == nil {
		return big.NewInt(0)
	}
	return o.BigintParameter
}

func (o *UsageExamplePostRequest) GetBigintParameterOptional() *big.Int {
	if o == nil {
		return nil
	}
	return o.BigintParameterOptional
}

func (o *UsageExamplePostRequest) GetBigintStrParameter() *big.Int {
	if o == nil {
		return big.NewInt(0)
	}
	return o.BigintStrParameter
}

func (o *UsageExamplePostRequest) GetBigintStrParameterOptional() *big.Int {
	if o == nil {
		return nil
	}
	return o.BigintStrParameterOptional
}

func (o *UsageExamplePostRequest) GetBoolParameter() bool {
	if o == nil {
		return false
	}
	return o.BoolParameter
}

func (o *UsageExamplePostRequest) GetDateParameter() types.Date {
	if o == nil {
		return types.Date{}
	}
	return o.DateParameter
}

func (o *UsageExamplePostRequest) GetDateTimeDefaultParameter() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.DateTimeDefaultParameter
}

func (o *UsageExamplePostRequest) GetDateTimeParameter() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.DateTimeParameter
}

func (o *UsageExamplePostRequest) GetDecimalParameter() *decimal.Big {
	if o == nil {
		return new(decimal.Big).SetFloat64(0.0)
	}
	return o.DecimalParameter
}

func (o *UsageExamplePostRequest) GetDecimalParameterOptional() *decimal.Big {
	if o == nil {
		return nil
	}
	return o.DecimalParameterOptional
}

func (o *UsageExamplePostRequest) GetDecimalStrParameter() *decimal.Big {
	if o == nil {
		return new(decimal.Big).SetFloat64(0.0)
	}
	return o.DecimalStrParameter
}

func (o *UsageExamplePostRequest) GetDecimalStrParameterOptional() *decimal.Big {
	if o == nil {
		return nil
	}
	return o.DecimalStrParameterOptional
}

func (o *UsageExamplePostRequest) GetDoubleParameter() float64 {
	if o == nil {
		return 0.0
	}
	return o.DoubleParameter
}

func (o *UsageExamplePostRequest) GetEnumParameter() UsageExamplePostEnumParameter {
	if o == nil {
		return UsageExamplePostEnumParameter("")
	}
	return o.EnumParameter
}

func (o *UsageExamplePostRequest) GetFalseyNumberParameter() float64 {
	if o == nil {
		return 0.0
	}
	return o.FalseyNumberParameter
}

func (o *UsageExamplePostRequest) GetFloat32Parameter() float32 {
	if o == nil {
		return 0.0
	}
	return o.Float32Parameter
}

func (o *UsageExamplePostRequest) GetFloatParameter() float64 {
	if o == nil {
		return 0.0
	}
	return o.FloatParameter
}

func (o *UsageExamplePostRequest) GetInt64Parameter() int64 {
	if o == nil {
		return 0
	}
	return o.Int64Parameter
}

func (o *UsageExamplePostRequest) GetIntParameter() int {
	if o == nil {
		return 0
	}
	return o.IntParameter
}

func (o *UsageExamplePostRequest) GetOptEnumParameter() *UsageExamplePostOptEnumParameter {
	if o == nil {
		return nil
	}
	return o.OptEnumParameter
}

func (o *UsageExamplePostRequest) GetStrParameter() string {
	if o == nil {
		return ""
	}
	return o.StrParameter
}

type UsageExamplePost200ApplicationJSONJSON struct {
	// A set of strings with format values that lead to relevant examples being generated for them
	FakerFormattedStrings *shared.FakerFormattedStrings `json:"fakerFormattedStrings,omitempty"`
	// A set of strings with fieldnames that lead to relevant examples being generated for them
	FakerStrings *shared.FakerStrings `json:"fakerStrings,omitempty"`
	// A simple object that uses all our supported primitive types and enums and has optional properties.
	SimpleObject *shared.SimpleObject `json:"simpleObject,omitempty"`
}

func (o *UsageExamplePost200ApplicationJSONJSON) GetFakerFormattedStrings() *shared.FakerFormattedStrings {
	if o == nil {
		return nil
	}
	return o.FakerFormattedStrings
}

func (o *UsageExamplePost200ApplicationJSONJSON) GetFakerStrings() *shared.FakerStrings {
	if o == nil {
		return nil
	}
	return o.FakerStrings
}

func (o *UsageExamplePost200ApplicationJSONJSON) GetSimpleObject() *shared.SimpleObject {
	if o == nil {
		return nil
	}
	return o.SimpleObject
}

// UsageExamplePost200ApplicationJSON - A response body that contains the simpleObject sent in the request body
type UsageExamplePost200ApplicationJSON struct {
	JSON UsageExamplePost200ApplicationJSONJSON `json:"json"`
}

func (o *UsageExamplePost200ApplicationJSON) GetJSON() UsageExamplePost200ApplicationJSONJSON {
	if o == nil {
		return UsageExamplePost200ApplicationJSONJSON{}
	}
	return o.JSON
}

type UsageExamplePostResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// A successful response that contains the simpleObject sent in the request body
	UsageExamplePost200ApplicationJSONObject *UsageExamplePost200ApplicationJSON
}

func (o *UsageExamplePostResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *UsageExamplePostResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *UsageExamplePostResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *UsageExamplePostResponse) GetUsageExamplePost200ApplicationJSONObject() *UsageExamplePost200ApplicationJSON {
	if o == nil {
		return nil
	}
	return o.UsageExamplePost200ApplicationJSONObject
}
