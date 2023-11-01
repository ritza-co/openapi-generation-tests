// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"errors"
	"openapi/pkg/utils"
)

type WeaklyTypedOneOfReadWriteObjectInputType string

const (
	WeaklyTypedOneOfReadWriteObjectInputTypeSimpleObject         WeaklyTypedOneOfReadWriteObjectInputType = "simpleObject"
	WeaklyTypedOneOfReadWriteObjectInputTypeReadWriteObjectInput WeaklyTypedOneOfReadWriteObjectInputType = "readWriteObjectInput"
)

type WeaklyTypedOneOfReadWriteObjectInput struct {
	SimpleObject         *SimpleObject
	ReadWriteObjectInput *ReadWriteObjectInput

	Type WeaklyTypedOneOfReadWriteObjectInputType
}

func CreateWeaklyTypedOneOfReadWriteObjectInputSimpleObject(simpleObject SimpleObject) WeaklyTypedOneOfReadWriteObjectInput {
	typ := WeaklyTypedOneOfReadWriteObjectInputTypeSimpleObject

	return WeaklyTypedOneOfReadWriteObjectInput{
		SimpleObject: &simpleObject,
		Type:         typ,
	}
}

func CreateWeaklyTypedOneOfReadWriteObjectInputReadWriteObjectInput(readWriteObjectInput ReadWriteObjectInput) WeaklyTypedOneOfReadWriteObjectInput {
	typ := WeaklyTypedOneOfReadWriteObjectInputTypeReadWriteObjectInput

	return WeaklyTypedOneOfReadWriteObjectInput{
		ReadWriteObjectInput: &readWriteObjectInput,
		Type:                 typ,
	}
}

func (u *WeaklyTypedOneOfReadWriteObjectInput) UnmarshalJSON(data []byte) error {

	readWriteObjectInput := ReadWriteObjectInput{}
	if err := utils.UnmarshalJSON(data, &readWriteObjectInput, "", true, true); err == nil {
		u.ReadWriteObjectInput = &readWriteObjectInput
		u.Type = WeaklyTypedOneOfReadWriteObjectInputTypeReadWriteObjectInput
		return nil
	}

	simpleObject := SimpleObject{}
	if err := utils.UnmarshalJSON(data, &simpleObject, "", true, true); err == nil {
		u.SimpleObject = &simpleObject
		u.Type = WeaklyTypedOneOfReadWriteObjectInputTypeSimpleObject
		return nil
	}

	return errors.New("could not unmarshal into supported union types")
}

func (u WeaklyTypedOneOfReadWriteObjectInput) MarshalJSON() ([]byte, error) {
	if u.SimpleObject != nil {
		return utils.MarshalJSON(u.SimpleObject, "", true)
	}

	if u.ReadWriteObjectInput != nil {
		return utils.MarshalJSON(u.ReadWriteObjectInput, "", true)
	}

	return nil, errors.New("could not marshal union type: all fields are null")
}
