// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package openapi

type Nest struct {
	First *SDKFirst

	sdkConfiguration sdkConfiguration
}

func newNest(sdkConfig sdkConfiguration) *Nest {
	return &Nest{
		sdkConfiguration: sdkConfig,
		First:            newSDKFirst(sdkConfig),
	}
}
