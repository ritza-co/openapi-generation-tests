// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type APIKeyAuthSecurity struct {
	APIKeyAuth string `security:"scheme,type=apiKey,subtype=header,name=Authorization"`
}

// APIKeyAuthToken - Successful authentication.
type APIKeyAuthToken struct {
	Authenticated bool   `json:"authenticated"`
	Token         string `json:"token"`
}

type APIKeyAuthResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// Successful authentication.
	Token *APIKeyAuthToken
}
