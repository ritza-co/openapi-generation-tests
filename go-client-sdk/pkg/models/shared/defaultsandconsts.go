// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/ericlagergren/decimal"
	"math/big"
	"openapi/pkg/types"
	"openapi/pkg/utils"
	"time"
)

type DefaultsAndConstsConstEnumInt int64

const (
	DefaultsAndConstsConstEnumIntOne   DefaultsAndConstsConstEnumInt = 1
	DefaultsAndConstsConstEnumIntTwo   DefaultsAndConstsConstEnumInt = 2
	DefaultsAndConstsConstEnumIntThree DefaultsAndConstsConstEnumInt = 3
)

func (e DefaultsAndConstsConstEnumInt) ToPointer() *DefaultsAndConstsConstEnumInt {
	return &e
}

func (e *DefaultsAndConstsConstEnumInt) UnmarshalJSON(data []byte) error {
	var v int64
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case 1:
		fallthrough
	case 2:
		fallthrough
	case 3:
		*e = DefaultsAndConstsConstEnumInt(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DefaultsAndConstsConstEnumInt: %v", v)
	}
}

type DefaultsAndConstsConstEnumStr string

const (
	DefaultsAndConstsConstEnumStrOne   DefaultsAndConstsConstEnumStr = "one"
	DefaultsAndConstsConstEnumStrTwo   DefaultsAndConstsConstEnumStr = "two"
	DefaultsAndConstsConstEnumStrThree DefaultsAndConstsConstEnumStr = "three"
)

func (e DefaultsAndConstsConstEnumStr) ToPointer() *DefaultsAndConstsConstEnumStr {
	return &e
}

func (e *DefaultsAndConstsConstEnumStr) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "one":
		fallthrough
	case "two":
		fallthrough
	case "three":
		*e = DefaultsAndConstsConstEnumStr(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DefaultsAndConstsConstEnumStr: %v", v)
	}
}

type DefaultsAndConstsDefaultEnumInt int64

const (
	DefaultsAndConstsDefaultEnumIntOne   DefaultsAndConstsDefaultEnumInt = 1
	DefaultsAndConstsDefaultEnumIntTwo   DefaultsAndConstsDefaultEnumInt = 2
	DefaultsAndConstsDefaultEnumIntThree DefaultsAndConstsDefaultEnumInt = 3
)

func (e DefaultsAndConstsDefaultEnumInt) ToPointer() *DefaultsAndConstsDefaultEnumInt {
	return &e
}

func (e *DefaultsAndConstsDefaultEnumInt) UnmarshalJSON(data []byte) error {
	var v int64
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case 1:
		fallthrough
	case 2:
		fallthrough
	case 3:
		*e = DefaultsAndConstsDefaultEnumInt(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DefaultsAndConstsDefaultEnumInt: %v", v)
	}
}

type DefaultsAndConstsDefaultEnumStr string

const (
	DefaultsAndConstsDefaultEnumStrOne   DefaultsAndConstsDefaultEnumStr = "one"
	DefaultsAndConstsDefaultEnumStrTwo   DefaultsAndConstsDefaultEnumStr = "two"
	DefaultsAndConstsDefaultEnumStrThree DefaultsAndConstsDefaultEnumStr = "three"
)

func (e DefaultsAndConstsDefaultEnumStr) ToPointer() *DefaultsAndConstsDefaultEnumStr {
	return &e
}

func (e *DefaultsAndConstsDefaultEnumStr) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "one":
		fallthrough
	case "two":
		fallthrough
	case "three":
		*e = DefaultsAndConstsDefaultEnumStr(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DefaultsAndConstsDefaultEnumStr: %v", v)
	}
}

type DefaultsAndConsts struct {
	constBigInt        *big.Int                         `const:"9007199254740991" json:"constBigInt"`
	constBigIntStr     *big.Int                         `const:"9223372036854775807" bigint:"string" json:"constBigIntStr"`
	constBool          bool                             `const:"true" json:"constBool"`
	constDate          types.Date                       `const:"2020-01-01" json:"constDate"`
	constDateTime      time.Time                        `const:"2020-01-01T00:00:00Z" json:"constDateTime"`
	constDecimal       *decimal.Big                     `const:"3.141592653589793" decimal:"number" json:"constDecimal"`
	constDecimalStr    *decimal.Big                     `const:"3.141592653589793238462643383279" json:"constDecimalStr"`
	constEnumInt       DefaultsAndConstsConstEnumInt    `const:"2" json:"constEnumInt"`
	constEnumStr       DefaultsAndConstsConstEnumStr    `const:"two" json:"constEnumStr"`
	constInt           int64                            `const:"123" json:"constInt"`
	constNum           float64                          `const:"123.456" json:"constNum"`
	constStr           string                           `const:"const" json:"constStr"`
	constStrNull       *string                          `const:"null" json:"constStrNull"`
	DefaultBigInt      *big.Int                         `default:"9007199254740991" json:"defaultBigInt"`
	DefaultBigIntStr   *big.Int                         `default:"9223372036854775807" bigint:"string" json:"defaultBigIntStr"`
	DefaultBool        *bool                            `default:"true" json:"defaultBool"`
	DefaultDate        *types.Date                      `default:"2020-01-01" json:"defaultDate"`
	DefaultDateTime    *time.Time                       `default:"2020-01-01T00:00:00Z" json:"defaultDateTime"`
	DefaultDecimal     *decimal.Big                     `default:"3.141592653589793" decimal:"number" json:"defaultDecimal"`
	DefaultDecimalStr  *decimal.Big                     `default:"3.141592653589793238462643383279" json:"defaultDecimalStr"`
	DefaultEnumInt     *DefaultsAndConstsDefaultEnumInt `default:"2" json:"defaultEnumInt"`
	DefaultEnumStr     *DefaultsAndConstsDefaultEnumStr `default:"two" json:"defaultEnumStr"`
	DefaultInt         *int64                           `default:"123" json:"defaultInt"`
	DefaultNum         *float64                         `default:"123.456" json:"defaultNum"`
	DefaultStr         *string                          `default:"default" json:"defaultStr"`
	DefaultStrNullable *string                          `default:"null" json:"defaultStrNullable"`
	DefaultStrOptional *string                          `default:"default" json:"defaultStrOptional"`
	NormalField        string                           `json:"normalField"`
}

func (d DefaultsAndConsts) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DefaultsAndConsts) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *DefaultsAndConsts) GetConstBigInt() *big.Int {
	return big.NewInt(9007199254740991)
}

func (o *DefaultsAndConsts) GetConstBigIntStr() *big.Int {
	return types.MustNewBigIntFromString("9223372036854775807")
}

func (o *DefaultsAndConsts) GetConstBool() bool {
	return true
}

func (o *DefaultsAndConsts) GetConstDate() types.Date {
	return types.MustDateFromString("2020-01-01")
}

func (o *DefaultsAndConsts) GetConstDateTime() time.Time {
	return types.MustTimeFromString("2020-01-01T00:00:00Z")
}

func (o *DefaultsAndConsts) GetConstDecimal() *decimal.Big {
	return types.MustNewDecimalFromString("3.141592653589793")
}

func (o *DefaultsAndConsts) GetConstDecimalStr() *decimal.Big {
	return types.MustNewDecimalFromString("3.141592653589793238462643383279")
}

func (o *DefaultsAndConsts) GetConstEnumInt() DefaultsAndConstsConstEnumInt {
	return DefaultsAndConstsConstEnumIntTwo
}

func (o *DefaultsAndConsts) GetConstEnumStr() DefaultsAndConstsConstEnumStr {
	return DefaultsAndConstsConstEnumStrTwo
}

func (o *DefaultsAndConsts) GetConstInt() int64 {
	return 123
}

func (o *DefaultsAndConsts) GetConstNum() float64 {
	return 123.456
}

func (o *DefaultsAndConsts) GetConstStr() string {
	return "const"
}

func (o *DefaultsAndConsts) GetConstStrNull() *string {
	return nil
}

func (o *DefaultsAndConsts) GetDefaultBigInt() *big.Int {
	if o == nil {
		return nil
	}
	return o.DefaultBigInt
}

func (o *DefaultsAndConsts) GetDefaultBigIntStr() *big.Int {
	if o == nil {
		return nil
	}
	return o.DefaultBigIntStr
}

func (o *DefaultsAndConsts) GetDefaultBool() *bool {
	if o == nil {
		return nil
	}
	return o.DefaultBool
}

func (o *DefaultsAndConsts) GetDefaultDate() *types.Date {
	if o == nil {
		return nil
	}
	return o.DefaultDate
}

func (o *DefaultsAndConsts) GetDefaultDateTime() *time.Time {
	if o == nil {
		return nil
	}
	return o.DefaultDateTime
}

func (o *DefaultsAndConsts) GetDefaultDecimal() *decimal.Big {
	if o == nil {
		return nil
	}
	return o.DefaultDecimal
}

func (o *DefaultsAndConsts) GetDefaultDecimalStr() *decimal.Big {
	if o == nil {
		return nil
	}
	return o.DefaultDecimalStr
}

func (o *DefaultsAndConsts) GetDefaultEnumInt() *DefaultsAndConstsDefaultEnumInt {
	if o == nil {
		return nil
	}
	return o.DefaultEnumInt
}

func (o *DefaultsAndConsts) GetDefaultEnumStr() *DefaultsAndConstsDefaultEnumStr {
	if o == nil {
		return nil
	}
	return o.DefaultEnumStr
}

func (o *DefaultsAndConsts) GetDefaultInt() *int64 {
	if o == nil {
		return nil
	}
	return o.DefaultInt
}

func (o *DefaultsAndConsts) GetDefaultNum() *float64 {
	if o == nil {
		return nil
	}
	return o.DefaultNum
}

func (o *DefaultsAndConsts) GetDefaultStr() *string {
	if o == nil {
		return nil
	}
	return o.DefaultStr
}

func (o *DefaultsAndConsts) GetDefaultStrNullable() *string {
	if o == nil {
		return nil
	}
	return o.DefaultStrNullable
}

func (o *DefaultsAndConsts) GetDefaultStrOptional() *string {
	if o == nil {
		return nil
	}
	return o.DefaultStrOptional
}

func (o *DefaultsAndConsts) GetNormalField() string {
	if o == nil {
		return ""
	}
	return o.NormalField
}
