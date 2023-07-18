// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type DeprecatedWithCommentsGetRequest struct {
	// This is a string parameter
	//
	// Deprecated: this field will be removed in a future release, please migrate away from it as soon as possible. Use NewParameter instead.
	DeprecatedParameter *string `queryParam:"style=form,explode=true,name=deprecatedParameter"`
	// This is a string parameter
	NewParameter *string `queryParam:"style=form,explode=true,name=newParameter"`
}

func (o *DeprecatedWithCommentsGetRequest) GetDeprecatedParameter() *string {
	if o == nil {
		return nil
	}
	return o.DeprecatedParameter
}

func (o *DeprecatedWithCommentsGetRequest) GetNewParameter() *string {
	if o == nil {
		return nil
	}
	return o.NewParameter
}

type DeprecatedWithCommentsGetResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
}

func (o *DeprecatedWithCommentsGetResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *DeprecatedWithCommentsGetResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *DeprecatedWithCommentsGetResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
