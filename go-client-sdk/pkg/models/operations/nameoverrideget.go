// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/models/shared"
)

type NameOverrideGetRequest struct {
	TestQueryParam string `queryParam:"style=form,explode=true,name=nameOverride"`
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
