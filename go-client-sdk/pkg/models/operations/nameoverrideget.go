// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"encoding/json"
	"fmt"
	"net/http"
	"openapi/pkg/models/shared"
)

// NameOverrideGetEnumNameOverride - An enum type
type NameOverrideGetEnumNameOverride string

const (
	NameOverrideGetEnumNameOverrideValue1 NameOverrideGetEnumNameOverride = "value1"
	NameOverrideGetEnumNameOverrideValue2 NameOverrideGetEnumNameOverride = "value2"
	NameOverrideGetEnumNameOverrideValue3 NameOverrideGetEnumNameOverride = "value3"
)

func (e NameOverrideGetEnumNameOverride) ToPointer() *NameOverrideGetEnumNameOverride {
	return &e
}

func (e *NameOverrideGetEnumNameOverride) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "value1":
		fallthrough
	case "value2":
		fallthrough
	case "value3":
		*e = NameOverrideGetEnumNameOverride(v)
		return nil
	default:
		return fmt.Errorf("invalid value for NameOverrideGetEnumNameOverride: %v", v)
	}
}

type NameOverrideGetRequest struct {
	// An enum type
	TestEnumQueryParam NameOverrideGetEnumNameOverride `queryParam:"style=form,explode=true,name=enumNameOverride"`
	TestQueryParam     string                          `queryParam:"style=form,explode=true,name=nameOverride"`
}

func (o *NameOverrideGetRequest) GetTestEnumQueryParam() NameOverrideGetEnumNameOverride {
	if o == nil {
		return NameOverrideGetEnumNameOverride("")
	}
	return o.TestEnumQueryParam
}

func (o *NameOverrideGetRequest) GetTestQueryParam() string {
	if o == nil {
		return ""
	}
	return o.TestQueryParam
}

// OverriddenResponse - A successful response that contains the simpleObject sent in the request body
type OverriddenResponse struct {
	// A simple object that uses all our supported primitive types and enums and has optional properties.
	JSON *shared.SimpleObject `json:"json,omitempty"`
}

func (o *OverriddenResponse) GetJSON() *shared.SimpleObject {
	if o == nil {
		return nil
	}
	return o.JSON
}

type NameOverrideGetResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// A successful response that contains the simpleObject sent in the request body
	OverriddenResponse *OverriddenResponse
}

func (o *NameOverrideGetResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *NameOverrideGetResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *NameOverrideGetResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *NameOverrideGetResponse) GetOverriddenResponse() *OverriddenResponse {
	if o == nil {
		return nil
	}
	return o.OverriddenResponse
}
