// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"openapi/pkg/utils"
	"time"
)

type ExampleResourceChocolates struct {
	Description string `json:"description"`
}

func (o *ExampleResourceChocolates) GetDescription() string {
	if o == nil {
		return ""
	}
	return o.Description
}

type ExampleResourceEnumNumber int64

const (
	ExampleResourceEnumNumberOne   ExampleResourceEnumNumber = 1
	ExampleResourceEnumNumberTwo   ExampleResourceEnumNumber = 2
	ExampleResourceEnumNumberThree ExampleResourceEnumNumber = 3
)

func (e ExampleResourceEnumNumber) ToPointer() *ExampleResourceEnumNumber {
	return &e
}

func (e *ExampleResourceEnumNumber) UnmarshalJSON(data []byte) error {
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
		*e = ExampleResourceEnumNumber(v)
		return nil
	default:
		return fmt.Errorf("invalid value for ExampleResourceEnumNumber: %v", v)
	}
}

type ExampleResourceEnumStr string

const (
	ExampleResourceEnumStrOne   ExampleResourceEnumStr = "one"
	ExampleResourceEnumStrTwo   ExampleResourceEnumStr = "two"
	ExampleResourceEnumStrThree ExampleResourceEnumStr = "three"
)

func (e ExampleResourceEnumStr) ToPointer() *ExampleResourceEnumStr {
	return &e
}

func (e *ExampleResourceEnumStr) UnmarshalJSON(data []byte) error {
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
		*e = ExampleResourceEnumStr(v)
		return nil
	default:
		return fmt.Errorf("invalid value for ExampleResourceEnumStr: %v", v)
	}
}

type ExampleResource struct {
	ArrayOfNumber []float64                   `json:"arrayOfNumber,omitempty"`
	ArrayOfString []string                    `json:"arrayOfString,omitempty"`
	Chocolates    []ExampleResourceChocolates `json:"chocolates"`
	CreatedAt     *time.Time                  `json:"createdAt,omitempty"`
	EnumNumber    *ExampleResourceEnumNumber  `json:"enumNumber,omitempty"`
	EnumStr       *ExampleResourceEnumStr     `json:"enumStr,omitempty"`
	ID            string                      `json:"id"`
	MapOfInteger  map[string]int64            `json:"mapOfInteger,omitempty"`
	MapOfString   map[string]string           `json:"mapOfString,omitempty"`
	Name          string                      `json:"name"`
	UpdatedAt     *time.Time                  `json:"updatedAt,omitempty"`
	Vehicle       ExampleVehicle              `json:"vehicle"`
}

func (e ExampleResource) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(e, "", false)
}

func (e *ExampleResource) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &e, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *ExampleResource) GetArrayOfNumber() []float64 {
	if o == nil {
		return nil
	}
	return o.ArrayOfNumber
}

func (o *ExampleResource) GetArrayOfString() []string {
	if o == nil {
		return nil
	}
	return o.ArrayOfString
}

func (o *ExampleResource) GetChocolates() []ExampleResourceChocolates {
	if o == nil {
		return []ExampleResourceChocolates{}
	}
	return o.Chocolates
}

func (o *ExampleResource) GetCreatedAt() *time.Time {
	if o == nil {
		return nil
	}
	return o.CreatedAt
}

func (o *ExampleResource) GetEnumNumber() *ExampleResourceEnumNumber {
	if o == nil {
		return nil
	}
	return o.EnumNumber
}

func (o *ExampleResource) GetEnumStr() *ExampleResourceEnumStr {
	if o == nil {
		return nil
	}
	return o.EnumStr
}

func (o *ExampleResource) GetID() string {
	if o == nil {
		return ""
	}
	return o.ID
}

func (o *ExampleResource) GetMapOfInteger() map[string]int64 {
	if o == nil {
		return nil
	}
	return o.MapOfInteger
}

func (o *ExampleResource) GetMapOfString() map[string]string {
	if o == nil {
		return nil
	}
	return o.MapOfString
}

func (o *ExampleResource) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *ExampleResource) GetUpdatedAt() *time.Time {
	if o == nil {
		return nil
	}
	return o.UpdatedAt
}

func (o *ExampleResource) GetVehicle() ExampleVehicle {
	if o == nil {
		return ExampleVehicle{}
	}
	return o.Vehicle
}
