// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type AuthServiceRequestBodyBasicAuth struct {
	Password string `json:"password"`
	Username string `json:"username"`
}

type AuthServiceRequestBodyHeaderAuth struct {
	ExpectedValue string `json:"expectedValue"`
	HeaderName    string `json:"headerName"`
}

type AuthServiceRequestBody struct {
	BasicAuth  *AuthServiceRequestBodyBasicAuth   `json:"basicAuth,omitempty"`
	HeaderAuth []AuthServiceRequestBodyHeaderAuth `json:"headerAuth,omitempty"`
}
