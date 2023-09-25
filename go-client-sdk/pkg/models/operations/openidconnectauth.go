// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type OpenIDConnectAuthSecurity struct {
	OpenIDConnect string `security:"scheme,type=openIdConnect,name=Authorization"`
}

func (o *OpenIDConnectAuthSecurity) GetOpenIDConnect() string {
	if o == nil {
		return ""
	}
	return o.OpenIDConnect
}

// OpenIDConnectAuthToken - Successful authentication.
type OpenIDConnectAuthToken struct {
	Authenticated bool   `json:"authenticated"`
	Token         string `json:"token"`
}

func (o *OpenIDConnectAuthToken) GetAuthenticated() bool {
	if o == nil {
		return false
	}
	return o.Authenticated
}

func (o *OpenIDConnectAuthToken) GetToken() string {
	if o == nil {
		return ""
	}
	return o.Token
}

type OpenIDConnectAuthResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// Successful authentication.
	Token *OpenIDConnectAuthToken
}

func (o *OpenIDConnectAuthResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *OpenIDConnectAuthResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *OpenIDConnectAuthResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *OpenIDConnectAuthResponse) GetToken() *OpenIDConnectAuthToken {
	if o == nil {
		return nil
	}
	return o.Token
}
