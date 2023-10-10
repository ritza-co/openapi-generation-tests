// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"errors"
	"net/http"
	"openapi/pkg/utils"
)

type DeepObjectQueryParamsMapRequest struct {
	MapParam    map[string]string   `queryParam:"style=deepObject,explode=true,name=mapParam"`
	MapArrParam map[string][]string `queryParam:"style=deepObject,explode=true,name=mapArrParam"`
}

func (o *DeepObjectQueryParamsMapRequest) GetMapParam() map[string]string {
	if o == nil {
		return map[string]string{}
	}
	return o.MapParam
}

func (o *DeepObjectQueryParamsMapRequest) GetMapArrParam() map[string][]string {
	if o == nil {
		return nil
	}
	return o.MapArrParam
}

type DeepObjectQueryParamsMapResArgsType string

const (
	DeepObjectQueryParamsMapResArgsTypeStr        DeepObjectQueryParamsMapResArgsType = "str"
	DeepObjectQueryParamsMapResArgsTypeArrayOfstr DeepObjectQueryParamsMapResArgsType = "arrayOfstr"
)

type DeepObjectQueryParamsMapResArgs struct {
	Str        *string
	ArrayOfstr []string

	Type DeepObjectQueryParamsMapResArgsType
}

func CreateDeepObjectQueryParamsMapResArgsStr(str string) DeepObjectQueryParamsMapResArgs {
	typ := DeepObjectQueryParamsMapResArgsTypeStr

	return DeepObjectQueryParamsMapResArgs{
		Str:  &str,
		Type: typ,
	}
}

func CreateDeepObjectQueryParamsMapResArgsArrayOfstr(arrayOfstr []string) DeepObjectQueryParamsMapResArgs {
	typ := DeepObjectQueryParamsMapResArgsTypeArrayOfstr

	return DeepObjectQueryParamsMapResArgs{
		ArrayOfstr: arrayOfstr,
		Type:       typ,
	}
}

func (u *DeepObjectQueryParamsMapResArgs) UnmarshalJSON(data []byte) error {

	str := new(string)
	if err := utils.UnmarshalJSON(data, &str, "", true, true); err == nil {
		u.Str = str
		u.Type = DeepObjectQueryParamsMapResArgsTypeStr
		return nil
	}

	arrayOfstr := []string{}
	if err := utils.UnmarshalJSON(data, &arrayOfstr, "", true, true); err == nil {
		u.ArrayOfstr = arrayOfstr
		u.Type = DeepObjectQueryParamsMapResArgsTypeArrayOfstr
		return nil
	}

	return errors.New("could not unmarshal into supported union types")
}

func (u DeepObjectQueryParamsMapResArgs) MarshalJSON() ([]byte, error) {
	if u.Str != nil {
		return utils.MarshalJSON(u.Str, "", true)
	}

	if u.ArrayOfstr != nil {
		return utils.MarshalJSON(u.ArrayOfstr, "", true)
	}

	return nil, errors.New("could not marshal union type: all fields are null")
}

// DeepObjectQueryParamsMapRes - OK
type DeepObjectQueryParamsMapRes struct {
	Args map[string]DeepObjectQueryParamsMapResArgs `json:"args"`
	URL  string                                     `json:"url"`
}

func (o *DeepObjectQueryParamsMapRes) GetArgs() map[string]DeepObjectQueryParamsMapResArgs {
	if o == nil {
		return map[string]DeepObjectQueryParamsMapResArgs{}
	}
	return o.Args
}

func (o *DeepObjectQueryParamsMapRes) GetURL() string {
	if o == nil {
		return ""
	}
	return o.URL
}

type DeepObjectQueryParamsMapResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// OK
	Res *DeepObjectQueryParamsMapRes
}

func (o *DeepObjectQueryParamsMapResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *DeepObjectQueryParamsMapResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *DeepObjectQueryParamsMapResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *DeepObjectQueryParamsMapResponse) GetRes() *DeepObjectQueryParamsMapRes {
	if o == nil {
		return nil
	}
	return o.Res
}
