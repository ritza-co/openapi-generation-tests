// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type Oauth2OverrideSecurity struct {
	Oauth2 string `security:"scheme,type=oauth2,name=Authorization"`
}

func (o *Oauth2OverrideSecurity) GetOauth2() string {
	if o == nil {
		return ""
	}
	return o.Oauth2
}

type Oauth2OverrideRequest struct {
}

// Oauth2OverrideToken - Successful authentication.
type Oauth2OverrideToken struct {
	Authenticated bool   `json:"authenticated"`
	Token         string `json:"token"`
}

func (o *Oauth2OverrideToken) GetAuthenticated() bool {
	if o == nil {
		return false
	}
	return o.Authenticated
}

func (o *Oauth2OverrideToken) GetToken() string {
	if o == nil {
		return ""
	}
	return o.Token
}

type Oauth2OverrideResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// Successful authentication.
	Token *Oauth2OverrideToken
}

func (o *Oauth2OverrideResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *Oauth2OverrideResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *Oauth2OverrideResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *Oauth2OverrideResponse) GetToken() *Oauth2OverrideToken {
	if o == nil {
		return nil
	}
	return o.Token
}
