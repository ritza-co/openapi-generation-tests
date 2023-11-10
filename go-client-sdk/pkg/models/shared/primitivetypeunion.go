// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"errors"
	"openapi/v2/pkg/utils"
)

type PrimitiveTypeUnionType string

const (
	PrimitiveTypeUnionTypeStr     PrimitiveTypeUnionType = "str"
	PrimitiveTypeUnionTypeInteger PrimitiveTypeUnionType = "integer"
	PrimitiveTypeUnionTypeInt32   PrimitiveTypeUnionType = "int32"
	PrimitiveTypeUnionTypeNumber  PrimitiveTypeUnionType = "number"
	PrimitiveTypeUnionTypeFloat32 PrimitiveTypeUnionType = "float32"
	PrimitiveTypeUnionTypeBoolean PrimitiveTypeUnionType = "boolean"
)

type PrimitiveTypeUnion struct {
	Str     *string
	Integer *int64
	Int32   *int
	Number  *float64
	Float32 *float32
	Boolean *bool

	Type PrimitiveTypeUnionType
}

func CreatePrimitiveTypeUnionStr(str string) PrimitiveTypeUnion {
	typ := PrimitiveTypeUnionTypeStr

	return PrimitiveTypeUnion{
		Str:  &str,
		Type: typ,
	}
}

func CreatePrimitiveTypeUnionInteger(integer int64) PrimitiveTypeUnion {
	typ := PrimitiveTypeUnionTypeInteger

	return PrimitiveTypeUnion{
		Integer: &integer,
		Type:    typ,
	}
}

func CreatePrimitiveTypeUnionInt32(int32T int) PrimitiveTypeUnion {
	typ := PrimitiveTypeUnionTypeInt32

	return PrimitiveTypeUnion{
		Int32: &int32T,
		Type:  typ,
	}
}

func CreatePrimitiveTypeUnionNumber(number float64) PrimitiveTypeUnion {
	typ := PrimitiveTypeUnionTypeNumber

	return PrimitiveTypeUnion{
		Number: &number,
		Type:   typ,
	}
}

func CreatePrimitiveTypeUnionFloat32(float32T float32) PrimitiveTypeUnion {
	typ := PrimitiveTypeUnionTypeFloat32

	return PrimitiveTypeUnion{
		Float32: &float32T,
		Type:    typ,
	}
}

func CreatePrimitiveTypeUnionBoolean(boolean bool) PrimitiveTypeUnion {
	typ := PrimitiveTypeUnionTypeBoolean

	return PrimitiveTypeUnion{
		Boolean: &boolean,
		Type:    typ,
	}
}

func (u *PrimitiveTypeUnion) UnmarshalJSON(data []byte) error {

	str := ""
	if err := utils.UnmarshalJSON(data, &str, "", true, true); err == nil {
		u.Str = &str
		u.Type = PrimitiveTypeUnionTypeStr
		return nil
	}

	integer := int64(0)
	if err := utils.UnmarshalJSON(data, &integer, "", true, true); err == nil {
		u.Integer = &integer
		u.Type = PrimitiveTypeUnionTypeInteger
		return nil
	}

	int32Var := 0
	if err := utils.UnmarshalJSON(data, &int32Var, "", true, true); err == nil {
		u.Int32 = &int32Var
		u.Type = PrimitiveTypeUnionTypeInt32
		return nil
	}

	number := float64(0)
	if err := utils.UnmarshalJSON(data, &number, "", true, true); err == nil {
		u.Number = &number
		u.Type = PrimitiveTypeUnionTypeNumber
		return nil
	}

	float32Var := float32(0)
	if err := utils.UnmarshalJSON(data, &float32Var, "", true, true); err == nil {
		u.Float32 = &float32Var
		u.Type = PrimitiveTypeUnionTypeFloat32
		return nil
	}

	boolean := false
	if err := utils.UnmarshalJSON(data, &boolean, "", true, true); err == nil {
		u.Boolean = &boolean
		u.Type = PrimitiveTypeUnionTypeBoolean
		return nil
	}

	return errors.New("could not unmarshal into supported union types")
}

func (u PrimitiveTypeUnion) MarshalJSON() ([]byte, error) {
	if u.Str != nil {
		return utils.MarshalJSON(u.Str, "", true)
	}

	if u.Integer != nil {
		return utils.MarshalJSON(u.Integer, "", true)
	}

	if u.Int32 != nil {
		return utils.MarshalJSON(u.Int32, "", true)
	}

	if u.Number != nil {
		return utils.MarshalJSON(u.Number, "", true)
	}

	if u.Float32 != nil {
		return utils.MarshalJSON(u.Float32, "", true)
	}

	if u.Boolean != nil {
		return utils.MarshalJSON(u.Boolean, "", true)
	}

	return nil, errors.New("could not marshal union type: all fields are null")
}
