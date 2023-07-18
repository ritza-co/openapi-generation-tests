// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

// APIKeyAuthGlobalToken - Successful authentication.
type APIKeyAuthGlobalToken struct {
	Authenticated bool   `json:"authenticated"`
	Token         string `json:"token"`
}

func (o *APIKeyAuthGlobalToken) GetAuthenticated() bool {
	if o == nil {
		return false
	}
	return o.Authenticated
}

func (o *APIKeyAuthGlobalToken) GetToken() string {
	if o == nil {
		return ""
	}
	return o.Token
}

type APIKeyAuthGlobalResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// Successful authentication.
	Token *APIKeyAuthGlobalToken
}

func (o *APIKeyAuthGlobalResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *APIKeyAuthGlobalResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *APIKeyAuthGlobalResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *APIKeyAuthGlobalResponse) GetToken() *APIKeyAuthGlobalToken {
	if o == nil {
		return nil
	}
	return o.Token
}
