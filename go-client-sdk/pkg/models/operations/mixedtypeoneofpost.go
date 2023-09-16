// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"bytes"
	"encoding/json"
	"errors"
	"net/http"
	"openapi/pkg/models/shared"
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
	var d *json.Decoder

	str := new(string)
	d = json.NewDecoder(bytes.NewReader(data))
	d.DisallowUnknownFields()
	if err := d.Decode(&str); err == nil {
		u.Str = str
		u.Type = MixedTypeOneOfPostRequestBodyTypeStr
		return nil
	}

	integer := new(int64)
	d = json.NewDecoder(bytes.NewReader(data))
	d.DisallowUnknownFields()
	if err := d.Decode(&integer); err == nil {
		u.Integer = integer
		u.Type = MixedTypeOneOfPostRequestBodyTypeInteger
		return nil
	}

	simpleObject := new(shared.SimpleObject)
	d = json.NewDecoder(bytes.NewReader(data))
	d.DisallowUnknownFields()
	if err := d.Decode(&simpleObject); err == nil {
		u.SimpleObject = simpleObject
		u.Type = MixedTypeOneOfPostRequestBodyTypeSimpleObject
		return nil
	}

	return errors.New("could not unmarshal into supported union types")
}

func (u MixedTypeOneOfPostRequestBody) MarshalJSON() ([]byte, error) {
	if u.Str != nil {
		return json.Marshal(u.Str)
	}

	if u.Integer != nil {
		return json.Marshal(u.Integer)
	}

	if u.SimpleObject != nil {
		return json.Marshal(u.SimpleObject)
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
	var d *json.Decoder

	str := new(string)
	d = json.NewDecoder(bytes.NewReader(data))
	d.DisallowUnknownFields()
	if err := d.Decode(&str); err == nil {
		u.Str = str
		u.Type = MixedTypeOneOfPostResJSONTypeStr
		return nil
	}

	integer := new(int64)
	d = json.NewDecoder(bytes.NewReader(data))
	d.DisallowUnknownFields()
	if err := d.Decode(&integer); err == nil {
		u.Integer = integer
		u.Type = MixedTypeOneOfPostResJSONTypeInteger
		return nil
	}

	simpleObject := new(shared.SimpleObject)
	d = json.NewDecoder(bytes.NewReader(data))
	d.DisallowUnknownFields()
	if err := d.Decode(&simpleObject); err == nil {
		u.SimpleObject = simpleObject
		u.Type = MixedTypeOneOfPostResJSONTypeSimpleObject
		return nil
	}

	return errors.New("could not unmarshal into supported union types")
}

func (u MixedTypeOneOfPostResJSON) MarshalJSON() ([]byte, error) {
	if u.Str != nil {
		return json.Marshal(u.Str)
	}

	if u.Integer != nil {
		return json.Marshal(u.Integer)
	}

	if u.SimpleObject != nil {
		return json.Marshal(u.SimpleObject)
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
