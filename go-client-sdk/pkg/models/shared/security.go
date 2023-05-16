// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SchemeBasicAuth struct {
	Password string `security:"name=password"`
	Username string `security:"name=username"`
}

type Security struct {
	APIKeyAuth    *string `security:"scheme,type=apiKey,subtype=header,name=Authorization"`
	APIKeyAuthNew *string `security:"scheme,type=apiKey,subtype=header,name=x-api-key"`
}
