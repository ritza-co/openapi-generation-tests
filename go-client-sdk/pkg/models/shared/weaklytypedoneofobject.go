// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"bytes"
	"encoding/json"
	"errors"
)

type WeaklyTypedOneOfObjectType string

const (
	WeaklyTypedOneOfObjectTypeSimpleObject WeaklyTypedOneOfObjectType = "simpleObject"
	WeaklyTypedOneOfObjectTypeDeepObject   WeaklyTypedOneOfObjectType = "deepObject"
)

type WeaklyTypedOneOfObject struct {
	SimpleObject *SimpleObject
	DeepObject   *DeepObject

	Type WeaklyTypedOneOfObjectType
}

func CreateWeaklyTypedOneOfObjectSimpleObject(simpleObject SimpleObject) WeaklyTypedOneOfObject {
	typ := WeaklyTypedOneOfObjectTypeSimpleObject

	return WeaklyTypedOneOfObject{
		SimpleObject: &simpleObject,
		Type:         typ,
	}
}

func CreateWeaklyTypedOneOfObjectDeepObject(deepObject DeepObject) WeaklyTypedOneOfObject {
	typ := WeaklyTypedOneOfObjectTypeDeepObject

	return WeaklyTypedOneOfObject{
		DeepObject: &deepObject,
		Type:       typ,
	}
}

func (u *WeaklyTypedOneOfObject) UnmarshalJSON(data []byte) error {
	var d *json.Decoder

	deepObject := new(DeepObject)
	d = json.NewDecoder(bytes.NewReader(data))
	d.DisallowUnknownFields()
	if err := d.Decode(&deepObject); err == nil {
		u.DeepObject = deepObject
		u.Type = WeaklyTypedOneOfObjectTypeDeepObject
		return nil
	}

	simpleObject := new(SimpleObject)
	d = json.NewDecoder(bytes.NewReader(data))
	d.DisallowUnknownFields()
	if err := d.Decode(&simpleObject); err == nil {
		u.SimpleObject = simpleObject
		u.Type = WeaklyTypedOneOfObjectTypeSimpleObject
		return nil
	}

	return errors.New("could not unmarshal into supported union types")
}

func (u WeaklyTypedOneOfObject) MarshalJSON() ([]byte, error) {
	if u.DeepObject != nil {
		return json.Marshal(u.DeepObject)
	}

	if u.SimpleObject != nil {
		return json.Marshal(u.SimpleObject)
	}

	return nil, errors.New("could not marshal union type: all fields are null")

}
