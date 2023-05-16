// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/pkg/models/shared"
)

// DeepObjectQueryParamsObjectObjArrParam
type DeepObjectQueryParamsObjectObjArrParam struct {
	Arr []string `queryParam:"name=arr"`
}

type DeepObjectQueryParamsObjectRequest struct {
	ObjArrParam *DeepObjectQueryParamsObjectObjArrParam `queryParam:"style=deepObject,explode=true,name=objArrParam"`
	// A simple object that uses all our supported primitive types and enums and has optional properties.
	ObjParam shared.SimpleObject `queryParam:"style=deepObject,explode=true,name=objParam"`
}

type DeepObjectQueryParamsObjectResArgs struct {
	ObjArrParamArr    []string `json:"objArrParam[arr]"`
	ObjParamAny       string   `json:"objParam[any]"`
	ObjParamBigintStr *string  `json:"objParam[bigintStr],omitempty"`
	ObjParamBigint    *string  `json:"objParam[bigint],omitempty"`
	ObjParamBoolOpt   string   `json:"objParam[boolOpt]"`
	ObjParamBool      string   `json:"objParam[bool]"`
	ObjParamDateTime  string   `json:"objParam[dateTime]"`
	ObjParamDate      string   `json:"objParam[date]"`
	ObjParamEnum      string   `json:"objParam[enum]"`
	ObjParamFloat32   string   `json:"objParam[float32]"`
	ObjParamInt32Enum string   `json:"objParam[int32Enum]"`
	ObjParamInt32     string   `json:"objParam[int32]"`
	ObjParamIntEnum   string   `json:"objParam[intEnum]"`
	ObjParamInt       string   `json:"objParam[int]"`
	ObjParamNum       string   `json:"objParam[num]"`
	ObjParamStrOpt    string   `json:"objParam[strOpt]"`
	ObjParamStr       string   `json:"objParam[str]"`
}

// DeepObjectQueryParamsObjectRes - OK
type DeepObjectQueryParamsObjectRes struct {
	Args DeepObjectQueryParamsObjectResArgs `json:"args"`
	URL  string                             `json:"url"`
}

type DeepObjectQueryParamsObjectResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	Res *DeepObjectQueryParamsObjectRes
}
