// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"errors"
	"openapi/pkg/utils"
)

type WeaklyTypedOneOfReadOnlyObjectInputType string

const (
	WeaklyTypedOneOfReadOnlyObjectInputTypeSimpleObject        WeaklyTypedOneOfReadOnlyObjectInputType = "simpleObject"
	WeaklyTypedOneOfReadOnlyObjectInputTypeReadOnlyObjectInput WeaklyTypedOneOfReadOnlyObjectInputType = "readOnlyObjectInput"
)

type WeaklyTypedOneOfReadOnlyObjectInput struct {
	SimpleObject        *SimpleObject
	ReadOnlyObjectInput *ReadOnlyObjectInput

	Type WeaklyTypedOneOfReadOnlyObjectInputType
}

func CreateWeaklyTypedOneOfReadOnlyObjectInputSimpleObject(simpleObject SimpleObject) WeaklyTypedOneOfReadOnlyObjectInput {
	typ := WeaklyTypedOneOfReadOnlyObjectInputTypeSimpleObject

	return WeaklyTypedOneOfReadOnlyObjectInput{
		SimpleObject: &simpleObject,
		Type:         typ,
	}
}

func CreateWeaklyTypedOneOfReadOnlyObjectInputReadOnlyObjectInput(readOnlyObjectInput ReadOnlyObjectInput) WeaklyTypedOneOfReadOnlyObjectInput {
	typ := WeaklyTypedOneOfReadOnlyObjectInputTypeReadOnlyObjectInput

	return WeaklyTypedOneOfReadOnlyObjectInput{
		ReadOnlyObjectInput: &readOnlyObjectInput,
		Type:                typ,
	}
}

func (u *WeaklyTypedOneOfReadOnlyObjectInput) UnmarshalJSON(data []byte) error {

	readOnlyObjectInput := new(ReadOnlyObjectInput)
	if err := utils.UnmarshalJSON(data, &readOnlyObjectInput, "", true, true); err == nil {
		u.ReadOnlyObjectInput = readOnlyObjectInput
		u.Type = WeaklyTypedOneOfReadOnlyObjectInputTypeReadOnlyObjectInput
		return nil
	}

	simpleObject := new(SimpleObject)
	if err := utils.UnmarshalJSON(data, &simpleObject, "", true, true); err == nil {
		u.SimpleObject = simpleObject
		u.Type = WeaklyTypedOneOfReadOnlyObjectInputTypeSimpleObject
		return nil
	}

	return errors.New("could not unmarshal into supported union types")
}

func (u WeaklyTypedOneOfReadOnlyObjectInput) MarshalJSON() ([]byte, error) {
	if u.SimpleObject != nil {
		return utils.MarshalJSON(u.SimpleObject, "", true)
	}

	if u.ReadOnlyObjectInput != nil {
		return utils.MarshalJSON(u.ReadOnlyObjectInput, "", true)
	}

	return nil, errors.New("could not marshal union type: all fields are null")
}
