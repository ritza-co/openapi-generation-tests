// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

var Oauth2AuthNewServerList = []string{
	"http://localhost:35456",
}

type Oauth2AuthNewSecurity struct {
	Oauth2 string `security:"scheme,type=oauth2,name=Authorization"`
}

type Oauth2AuthNewResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
}
