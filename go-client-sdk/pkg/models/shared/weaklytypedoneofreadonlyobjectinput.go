// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"bytes"
	"encoding/json"
	"errors"
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
	var d *json.Decoder

	readOnlyObjectInput := new(ReadOnlyObjectInput)
	d = json.NewDecoder(bytes.NewReader(data))
	d.DisallowUnknownFields()
	if err := d.Decode(&readOnlyObjectInput); err == nil {
		u.ReadOnlyObjectInput = readOnlyObjectInput
		u.Type = WeaklyTypedOneOfReadOnlyObjectInputTypeReadOnlyObjectInput
		return nil
	}

	simpleObject := new(SimpleObject)
	d = json.NewDecoder(bytes.NewReader(data))
	d.DisallowUnknownFields()
	if err := d.Decode(&simpleObject); err == nil {
		u.SimpleObject = simpleObject
		u.Type = WeaklyTypedOneOfReadOnlyObjectInputTypeSimpleObject
		return nil
	}

	return errors.New("could not unmarshal into supported union types")
}

func (u WeaklyTypedOneOfReadOnlyObjectInput) MarshalJSON() ([]byte, error) {
	if u.ReadOnlyObjectInput != nil {
		return json.Marshal(u.ReadOnlyObjectInput)
	}

	if u.SimpleObject != nil {
		return json.Marshal(u.SimpleObject)
	}

	return nil, errors.New("could not marshal union type: all fields are null")

}
