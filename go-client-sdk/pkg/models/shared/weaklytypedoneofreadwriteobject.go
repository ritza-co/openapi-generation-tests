// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"bytes"
	"encoding/json"
	"errors"
)

type WeaklyTypedOneOfReadWriteObjectType string

const (
	WeaklyTypedOneOfReadWriteObjectTypeSimpleObject         WeaklyTypedOneOfReadWriteObjectType = "simpleObject"
	WeaklyTypedOneOfReadWriteObjectTypeReadWriteObjectInput WeaklyTypedOneOfReadWriteObjectType = "readWriteObjectInput"
)

type WeaklyTypedOneOfReadWriteObject struct {
	SimpleObject         *SimpleObject
	ReadWriteObjectInput *ReadWriteObjectInput

	Type WeaklyTypedOneOfReadWriteObjectType
}

func CreateWeaklyTypedOneOfReadWriteObjectSimpleObject(simpleObject SimpleObject) WeaklyTypedOneOfReadWriteObject {
	typ := WeaklyTypedOneOfReadWriteObjectTypeSimpleObject

	return WeaklyTypedOneOfReadWriteObject{
		SimpleObject: &simpleObject,
		Type:         typ,
	}
}

func CreateWeaklyTypedOneOfReadWriteObjectReadWriteObjectInput(readWriteObjectInput ReadWriteObjectInput) WeaklyTypedOneOfReadWriteObject {
	typ := WeaklyTypedOneOfReadWriteObjectTypeReadWriteObjectInput

	return WeaklyTypedOneOfReadWriteObject{
		ReadWriteObjectInput: &readWriteObjectInput,
		Type:                 typ,
	}
}

func (u *WeaklyTypedOneOfReadWriteObject) UnmarshalJSON(data []byte) error {
	var d *json.Decoder

	simpleObject := new(SimpleObject)
	d = json.NewDecoder(bytes.NewReader(data))
	d.DisallowUnknownFields()
	if err := d.Decode(&simpleObject); err == nil {
		u.SimpleObject = simpleObject
		u.Type = WeaklyTypedOneOfReadWriteObjectTypeSimpleObject
		return nil
	}

	readWriteObjectInput := new(ReadWriteObjectInput)
	d = json.NewDecoder(bytes.NewReader(data))
	d.DisallowUnknownFields()
	if err := d.Decode(&readWriteObjectInput); err == nil {
		u.ReadWriteObjectInput = readWriteObjectInput
		u.Type = WeaklyTypedOneOfReadWriteObjectTypeReadWriteObjectInput
		return nil
	}

	return errors.New("could not unmarshal into supported union types")
}

func (u WeaklyTypedOneOfReadWriteObject) MarshalJSON() ([]byte, error) {
	if u.SimpleObject != nil {
		return json.Marshal(u.SimpleObject)
	}

	if u.ReadWriteObjectInput != nil {
		return json.Marshal(u.ReadWriteObjectInput)
	}

	return nil, nil
}
