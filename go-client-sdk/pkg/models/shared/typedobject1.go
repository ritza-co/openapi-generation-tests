// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
)

type TypedObject1Type string

const (
	TypedObject1TypeObj1 TypedObject1Type = "obj1"
)

func (e TypedObject1Type) ToPointer() *TypedObject1Type {
	return &e
}

func (e *TypedObject1Type) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "obj1":
		*e = TypedObject1Type(v)
		return nil
	default:
		return fmt.Errorf("invalid value for TypedObject1Type: %v", v)
	}
}

type TypedObject1 struct {
	Type  TypedObject1Type `json:"type"`
	Value string           `json:"value"`
}

func (o *TypedObject1) GetType() TypedObject1Type {
	if o == nil {
		return TypedObject1Type("")
	}
	return o.Type
}

func (o *TypedObject1) GetValue() string {
	if o == nil {
		return ""
	}
	return o.Value
}
