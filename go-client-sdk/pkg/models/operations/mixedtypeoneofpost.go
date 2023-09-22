// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"errors"
	"net/http"
	"openapi/pkg/models/shared"
	"openapi/pkg/utils"
)

type MixedTypeOneOfPostRequestBodyType string

const (
	MixedTypeOneOfPostRequestBodyTypeStr          MixedTypeOneOfPostRequestBodyType = "str"
	MixedTypeOneOfPostRequestBodyTypeInteger      MixedTypeOneOfPostRequestBodyType = "integer"
	MixedTypeOneOfPostRequestBodyTypeSimpleObject MixedTypeOneOfPostRequestBodyType = "simpleObject"
)

type MixedTypeOneOfPostRequestBody struct {
	Str          *string
	Integer      *int64
	SimpleObject *shared.SimpleObject

	Type MixedTypeOneOfPostRequestBodyType
}

func CreateMixedTypeOneOfPostRequestBodyStr(str string) MixedTypeOneOfPostRequestBody {
	typ := MixedTypeOneOfPostRequestBodyTypeStr

	return MixedTypeOneOfPostRequestBody{
		Str:  &str,
		Type: typ,
	}
}

func CreateMixedTypeOneOfPostRequestBodyInteger(integer int64) MixedTypeOneOfPostRequestBody {
	typ := MixedTypeOneOfPostRequestBodyTypeInteger

	return MixedTypeOneOfPostRequestBody{
		Integer: &integer,
		Type:    typ,
	}
}

func CreateMixedTypeOneOfPostRequestBodySimpleObject(simpleObject shared.SimpleObject) MixedTypeOneOfPostRequestBody {
	typ := MixedTypeOneOfPostRequestBodyTypeSimpleObject

	return MixedTypeOneOfPostRequestBody{
		SimpleObject: &simpleObject,
		Type:         typ,
	}
}

func (u *MixedTypeOneOfPostRequestBody) UnmarshalJSON(data []byte) error {

	simpleObject := new(shared.SimpleObject)
	if err := utils.UnmarshalJSON(data, &simpleObject, "", true, true); err == nil {
		u.SimpleObject = simpleObject
		u.Type = MixedTypeOneOfPostRequestBodyTypeSimpleObject
		return nil
	}

	str := new(string)
	if err := utils.UnmarshalJSON(data, &str, "", true, true); err == nil {
		u.Str = str
		u.Type = MixedTypeOneOfPostRequestBodyTypeStr
		return nil
	}

	integer := new(int64)
	if err := utils.UnmarshalJSON(data, &integer, "", true, true); err == nil {
		u.Integer = integer
		u.Type = MixedTypeOneOfPostRequestBodyTypeInteger
		return nil
	}

	return errors.New("could not unmarshal into supported union types")
}

func (u MixedTypeOneOfPostRequestBody) MarshalJSON() ([]byte, error) {
	if u.Str != nil {
		return utils.MarshalJSON(u.Str, "", true)
	}

	if u.Integer != nil {
		return utils.MarshalJSON(u.Integer, "", true)
	}

	if u.SimpleObject != nil {
		return utils.MarshalJSON(u.SimpleObject, "", true)
	}

	return nil, errors.New("could not marshal union type: all fields are null")
}

type MixedTypeOneOfPostResJSONType string

const (
	MixedTypeOneOfPostResJSONTypeStr          MixedTypeOneOfPostResJSONType = "str"
	MixedTypeOneOfPostResJSONTypeInteger      MixedTypeOneOfPostResJSONType = "integer"
	MixedTypeOneOfPostResJSONTypeSimpleObject MixedTypeOneOfPostResJSONType = "simpleObject"
)

type MixedTypeOneOfPostResJSON struct {
	Str          *string
	Integer      *int64
	SimpleObject *shared.SimpleObject

	Type MixedTypeOneOfPostResJSONType
}

func CreateMixedTypeOneOfPostResJSONStr(str string) MixedTypeOneOfPostResJSON {
	typ := MixedTypeOneOfPostResJSONTypeStr

	return MixedTypeOneOfPostResJSON{
		Str:  &str,
		Type: typ,
	}
}

func CreateMixedTypeOneOfPostResJSONInteger(integer int64) MixedTypeOneOfPostResJSON {
	typ := MixedTypeOneOfPostResJSONTypeInteger

	return MixedTypeOneOfPostResJSON{
		Integer: &integer,
		Type:    typ,
	}
}

func CreateMixedTypeOneOfPostResJSONSimpleObject(simpleObject shared.SimpleObject) MixedTypeOneOfPostResJSON {
	typ := MixedTypeOneOfPostResJSONTypeSimpleObject

	return MixedTypeOneOfPostResJSON{
		SimpleObject: &simpleObject,
		Type:         typ,
	}
}

func (u *MixedTypeOneOfPostResJSON) UnmarshalJSON(data []byte) error {

	simpleObject := new(shared.SimpleObject)
	if err := utils.UnmarshalJSON(data, &simpleObject, "", true, true); err == nil {
		u.SimpleObject = simpleObject
		u.Type = MixedTypeOneOfPostResJSONTypeSimpleObject
		return nil
	}

	str := new(string)
	if err := utils.UnmarshalJSON(data, &str, "", true, true); err == nil {
		u.Str = str
		u.Type = MixedTypeOneOfPostResJSONTypeStr
		return nil
	}

	integer := new(int64)
	if err := utils.UnmarshalJSON(data, &integer, "", true, true); err == nil {
		u.Integer = integer
		u.Type = MixedTypeOneOfPostResJSONTypeInteger
		return nil
	}

	return errors.New("could not unmarshal into supported union types")
}

func (u MixedTypeOneOfPostResJSON) MarshalJSON() ([]byte, error) {
	if u.Str != nil {
		return utils.MarshalJSON(u.Str, "", true)
	}

	if u.Integer != nil {
		return utils.MarshalJSON(u.Integer, "", true)
	}

	if u.SimpleObject != nil {
		return utils.MarshalJSON(u.SimpleObject, "", true)
	}

	return nil, errors.New("could not marshal union type: all fields are null")
}

// MixedTypeOneOfPostRes - OK
type MixedTypeOneOfPostRes struct {
	JSON MixedTypeOneOfPostResJSON `json:"json"`
}

func (o *MixedTypeOneOfPostRes) GetJSON() MixedTypeOneOfPostResJSON {
	if o == nil {
		return MixedTypeOneOfPostResJSON{}
	}
	return o.JSON
}

type MixedTypeOneOfPostResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	Res *MixedTypeOneOfPostRes
}

func (o *MixedTypeOneOfPostResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *MixedTypeOneOfPostResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *MixedTypeOneOfPostResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *MixedTypeOneOfPostResponse) GetRes() *MixedTypeOneOfPostRes {
	if o == nil {
		return nil
	}
	return o.Res
}
