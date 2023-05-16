// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type RequestBodyPutMultipartSimpleResForm struct {
	Any        string  `json:"any"`
	Bool       string  `json:"bool"`
	BoolOpt    *string `json:"boolOpt,omitempty"`
	Date       string  `json:"date"`
	DateTime   string  `json:"dateTime"`
	Enum       string  `json:"enum"`
	Float32    string  `json:"float32"`
	Int        string  `json:"int"`
	Int32      string  `json:"int32"`
	IntOptNull *string `json:"intOptNull,omitempty"`
	Num        string  `json:"num"`
	NumOptNull *string `json:"numOptNull,omitempty"`
	Str        string  `json:"str"`
	StrOpt     *string `json:"strOpt,omitempty"`
}

// RequestBodyPutMultipartSimpleRes - OK
type RequestBodyPutMultipartSimpleRes struct {
	Form RequestBodyPutMultipartSimpleResForm `json:"form"`
}

type RequestBodyPutMultipartSimpleResponse struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	Res *RequestBodyPutMultipartSimpleRes
}
