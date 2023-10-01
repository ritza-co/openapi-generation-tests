// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"openapi/pkg/utils"
)

type StronglyTypedOneOfObjectType string

const (
	StronglyTypedOneOfObjectTypeSimpleObjectWithType StronglyTypedOneOfObjectType = "simpleObjectWithType"
	StronglyTypedOneOfObjectTypeDeepObjectWithType   StronglyTypedOneOfObjectType = "deepObjectWithType"
)

type StronglyTypedOneOfObject struct {
	SimpleObjectWithType *SimpleObjectWithType
	DeepObjectWithType   *DeepObjectWithType

	Type StronglyTypedOneOfObjectType
}

func CreateStronglyTypedOneOfObjectSimpleObjectWithType(simpleObjectWithType SimpleObjectWithType) StronglyTypedOneOfObject {
	typ := StronglyTypedOneOfObjectTypeSimpleObjectWithType

	typStr := string(typ)
	simpleObjectWithType.Type = typStr

	return StronglyTypedOneOfObject{
		SimpleObjectWithType: &simpleObjectWithType,
		Type:                 typ,
	}
}

func CreateStronglyTypedOneOfObjectDeepObjectWithType(deepObjectWithType DeepObjectWithType) StronglyTypedOneOfObject {
	typ := StronglyTypedOneOfObjectTypeDeepObjectWithType

	typStr := string(typ)
	deepObjectWithType.Type = &typStr

	return StronglyTypedOneOfObject{
		DeepObjectWithType: &deepObjectWithType,
		Type:               typ,
	}
}

func (u *StronglyTypedOneOfObject) UnmarshalJSON(data []byte) error {

	type discriminator struct {
		Type string
	}

	dis := new(discriminator)
	if err := json.Unmarshal(data, &dis); err != nil {
		return fmt.Errorf("could not unmarshal discriminator: %w", err)
	}

	switch dis.Type {
	case "simpleObjectWithType":
		simpleObjectWithType := new(SimpleObjectWithType)
		if err := utils.UnmarshalJSON(data, &simpleObjectWithType, "", true, true); err != nil {
			return fmt.Errorf("could not unmarshal expected type: %w", err)
		}

		u.SimpleObjectWithType = simpleObjectWithType
		u.Type = StronglyTypedOneOfObjectTypeSimpleObjectWithType
		return nil
	case "deepObjectWithType":
		deepObjectWithType := new(DeepObjectWithType)
		if err := utils.UnmarshalJSON(data, &deepObjectWithType, "", true, true); err != nil {
			return fmt.Errorf("could not unmarshal expected type: %w", err)
		}

		u.DeepObjectWithType = deepObjectWithType
		u.Type = StronglyTypedOneOfObjectTypeDeepObjectWithType
		return nil
	}

	return errors.New("could not unmarshal into supported union types")
}

func (u StronglyTypedOneOfObject) MarshalJSON() ([]byte, error) {
	if u.SimpleObjectWithType != nil {
		return utils.MarshalJSON(u.SimpleObjectWithType, "", true)
	}

	if u.DeepObjectWithType != nil {
		return utils.MarshalJSON(u.DeepObjectWithType, "", true)
	}

	return nil, errors.New("could not marshal union type: all fields are null")
}
