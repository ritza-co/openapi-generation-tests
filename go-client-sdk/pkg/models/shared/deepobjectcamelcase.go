// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"errors"
	"openapi/pkg/utils"
)

type DeepObjectCamelCaseAnyValType string

const (
	DeepObjectCamelCaseAnyValTypeSimpleObjectCamelCase DeepObjectCamelCaseAnyValType = "simpleObjectCamelCase"
	DeepObjectCamelCaseAnyValTypeStr                   DeepObjectCamelCaseAnyValType = "str"
)

type DeepObjectCamelCaseAnyVal struct {
	SimpleObjectCamelCase *SimpleObjectCamelCase
	Str                   *string

	Type DeepObjectCamelCaseAnyValType
}

func CreateDeepObjectCamelCaseAnyValSimpleObjectCamelCase(simpleObjectCamelCase SimpleObjectCamelCase) DeepObjectCamelCaseAnyVal {
	typ := DeepObjectCamelCaseAnyValTypeSimpleObjectCamelCase

	return DeepObjectCamelCaseAnyVal{
		SimpleObjectCamelCase: &simpleObjectCamelCase,
		Type:                  typ,
	}
}

func CreateDeepObjectCamelCaseAnyValStr(str string) DeepObjectCamelCaseAnyVal {
	typ := DeepObjectCamelCaseAnyValTypeStr

	return DeepObjectCamelCaseAnyVal{
		Str:  &str,
		Type: typ,
	}
}

func (u *DeepObjectCamelCaseAnyVal) UnmarshalJSON(data []byte) error {

	simpleObjectCamelCase := SimpleObjectCamelCase{}
	if err := utils.UnmarshalJSON(data, &simpleObjectCamelCase, "", true, true); err == nil {
		u.SimpleObjectCamelCase = &simpleObjectCamelCase
		u.Type = DeepObjectCamelCaseAnyValTypeSimpleObjectCamelCase
		return nil
	}

	str := ""
	if err := utils.UnmarshalJSON(data, &str, "", true, true); err == nil {
		u.Str = &str
		u.Type = DeepObjectCamelCaseAnyValTypeStr
		return nil
	}

	return errors.New("could not unmarshal into supported union types")
}

func (u DeepObjectCamelCaseAnyVal) MarshalJSON() ([]byte, error) {
	if u.SimpleObjectCamelCase != nil {
		return utils.MarshalJSON(u.SimpleObjectCamelCase, "", true)
	}

	if u.Str != nil {
		return utils.MarshalJSON(u.Str, "", true)
	}

	return nil, errors.New("could not marshal union type: all fields are null")
}

type DeepObjectCamelCase struct {
	AnyVal  DeepObjectCamelCaseAnyVal        `json:"any_val"`
	ArrVal  []SimpleObjectCamelCase          `json:"arr_val"`
	BoolVal bool                             `json:"bool_val"`
	IntVal  int64                            `json:"int_val"`
	MapVal  map[string]SimpleObjectCamelCase `json:"map_val"`
	NumVal  float64                          `json:"num_val"`
	// A simple object that uses all our supported primitive types and enums and has optional properties.
	ObjVal SimpleObjectCamelCase `json:"obj_val"`
	StrVal string                `json:"str_val"`
	Type   *string               `json:"type,omitempty"`
}

func (o *DeepObjectCamelCase) GetAnyVal() DeepObjectCamelCaseAnyVal {
	if o == nil {
		return DeepObjectCamelCaseAnyVal{}
	}
	return o.AnyVal
}

func (o *DeepObjectCamelCase) GetArrVal() []SimpleObjectCamelCase {
	if o == nil {
		return []SimpleObjectCamelCase{}
	}
	return o.ArrVal
}

func (o *DeepObjectCamelCase) GetBoolVal() bool {
	if o == nil {
		return false
	}
	return o.BoolVal
}

func (o *DeepObjectCamelCase) GetIntVal() int64 {
	if o == nil {
		return 0
	}
	return o.IntVal
}

func (o *DeepObjectCamelCase) GetMapVal() map[string]SimpleObjectCamelCase {
	if o == nil {
		return map[string]SimpleObjectCamelCase{}
	}
	return o.MapVal
}

func (o *DeepObjectCamelCase) GetNumVal() float64 {
	if o == nil {
		return 0.0
	}
	return o.NumVal
}

func (o *DeepObjectCamelCase) GetObjVal() SimpleObjectCamelCase {
	if o == nil {
		return SimpleObjectCamelCase{}
	}
	return o.ObjVal
}

func (o *DeepObjectCamelCase) GetStrVal() string {
	if o == nil {
		return ""
	}
	return o.StrVal
}

func (o *DeepObjectCamelCase) GetType() *string {
	if o == nil {
		return nil
	}
	return o.Type
}
