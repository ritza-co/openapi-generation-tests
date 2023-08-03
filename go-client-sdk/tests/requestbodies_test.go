// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package tests

import (
	"context"
	"io"
	"net/http"
	"os"
	"regexp"
	"testing"

	"openapi/pkg/models/operations"
	"openapi/pkg/models/shared"

	sdk "openapi"

	"github.com/AlekSi/pointer"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestRequestBodyPostApplicationJSONSimple(t *testing.T) {
	recordTest("request-bodies-post-application-json-simple")

	s := sdk.New()

	obj := createSimpleObject()

	res, err := s.RequestBodies.RequestBodyPostApplicationJSONSimple(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, obj, res.Res.JSON)
}

func TestRequestBodyPostApplicationJSONDeep(t *testing.T) {
	recordTest("request-bodies-post-application-json-deep")

	s := sdk.New()

	obj := createDeepObject()

	res, err := s.RequestBodies.RequestBodyPostApplicationJSONDeep(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)

	compareDeepObject(t, obj, *res.Res.JSON)
}

func TestRequestBodyPostApplicationJSONMultipleJSONFiltered(t *testing.T) {
	recordTest("request-bodies-post-application-json-multiple-json-filtered")

	s := sdk.New()

	obj := createSimpleObject()

	res, err := s.RequestBodies.RequestBodyPostApplicationJSONMultipleJSONFiltered(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, obj, res.Res.JSON)
}

func TestRequestBodyPostMultipleContentTypesComponentFiltered(t *testing.T) {
	recordTest("request-bodies-post-multiple-content-types-component-filtered")

	s := sdk.New()

	obj := createSimpleObject()

	res, err := s.RequestBodies.RequestBodyPostMultipleContentTypesComponentFiltered(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, obj, res.Res.JSON)
}

func TestRequestBodyPostMultipleContentTypesInlineFiltered(t *testing.T) {
	recordTest("request-bodies-post-multiple-content-types-inline-filtered")

	s := sdk.New()

	res, err := s.RequestBodies.RequestBodyPostMultipleContentTypesInlineFiltered(context.Background(),
		operations.RequestBodyPostMultipleContentTypesInlineFilteredApplicationJSON{
			Bool: true,
			Num:  1.1,
			Str:  "test",
		})
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, map[string]interface{}{
		"bool": true,
		"num":  1.1,
		"str":  "test",
	}, res.Res.JSON)
}

func TestRequestBodyPostMultipleContentTypesSplitJSON(t *testing.T) {
	recordTest("request-bodies-post-multiple-content-types-split-json")

	s := sdk.New()

	res, err := s.RequestBodies.RequestBodyPostMultipleContentTypesSplitJSON(context.Background(),
		operations.RequestBodyPostMultipleContentTypesSplitApplicationJSON{
			Bool: true,
			Num:  1.1,
			Str:  "test",
		})
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, map[string]interface{}{
		"bool": true,
		"num":  1.1,
		"str":  "test",
	}, res.Res.JSON)
}

func TestRequestBodyPostMultipleContentTypesSplitMultipart(t *testing.T) {
	recordTest("request-bodies-post-multiple-content-types-split-multipart")

	s := sdk.New()

	res, err := s.RequestBodies.RequestBodyPostMultipleContentTypesSplitMultipart(context.Background(),
		operations.RequestBodyPostMultipleContentTypesSplitMultipartFormData{
			Bool2: true,
			Num2:  1.1,
			Str2:  "test",
		})
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, map[string]interface{}{
		"bool2": "true",
		"num2":  "1.1",
		"str2":  "test",
	}, res.Res.Form)
}

func TestRequestBodyPostMultipleContentTypesSplitForm(t *testing.T) {
	recordTest("request-bodies-post-multiple-content-types-split-form")

	s := sdk.New()

	res, err := s.RequestBodies.RequestBodyPostMultipleContentTypesSplitForm(context.Background(),
		operations.RequestBodyPostMultipleContentTypesSplitApplicationXWwwFormUrlencoded{
			Bool3: true,
			Num3:  1.1,
			Str3:  "test",
		})
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, map[string]interface{}{
		"bool3": "true",
		"num3":  "1.1",
		"str3":  "test",
	}, res.Res.Form)
}

func TestRequestBodyPostMultipleContentTypesSplitJSONWithParam(t *testing.T) {
	recordTest("request-bodies-post-multiple-content-types-split-json-with-param")

	s := sdk.New()

	res, err := s.RequestBodies.RequestBodyPostMultipleContentTypesSplitParamJSON(context.Background(),
		operations.RequestBodyPostMultipleContentTypesSplitParamApplicationJSON{
			Bool: true,
			Num:  1.1,
			Str:  "test body",
		},
		"test param",
	)

	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, map[string]interface{}{
		"bool": true,
		"num":  1.1,
		"str":  "test body",
	}, res.Res.JSON)
	assert.Equal(t, map[string]string{
		"paramStr": "test param",
	}, res.Res.Args)
}

func TestRequestBodyPostMultipleContentTypesSplitMultipartWithParam(t *testing.T) {
	recordTest("request-bodies-post-multiple-content-types-split-multipart-with-param")

	s := sdk.New()

	res, err := s.RequestBodies.RequestBodyPostMultipleContentTypesSplitParamMultipart(context.Background(),
		operations.RequestBodyPostMultipleContentTypesSplitParamMultipartFormData{
			Bool2: true,
			Num2:  1.1,
			Str2:  "test body",
		},
		"test param",
	)

	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, map[string]interface{}{
		"bool2": "true",
		"num2":  "1.1",
		"str2":  "test body",
	}, res.Res.Form)
	assert.Equal(t, map[string]string{
		"paramStr": "test param",
	}, res.Res.Args)
}

func TestRequestBodyPostMultipleContentTypesSplitFormWithParam(t *testing.T) {
	recordTest("request-bodies-post-multiple-content-types-split-form-with-param")

	s := sdk.New()

	res, err := s.RequestBodies.RequestBodyPostMultipleContentTypesSplitParamForm(context.Background(),
		operations.RequestBodyPostMultipleContentTypesSplitParamApplicationXWwwFormUrlencoded{
			Bool3: true,
			Num3:  1.1,
			Str3:  "test body",
		},
		"test param",
	)

	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, map[string]interface{}{
		"bool3": "true",
		"num3":  "1.1",
		"str3":  "test body",
	}, res.Res.Form)
	assert.Equal(t, map[string]string{
		"paramStr": "test param",
	}, res.Res.Args)
}

func TestRequestBodyPostApplicationJSONArray(t *testing.T) {
	recordTest("request-bodies-post-application-json-array")

	s := sdk.New()

	obj := []shared.SimpleObject{
		createSimpleObject(),
	}

	res, err := s.RequestBodies.RequestBodyPostApplicationJSONArray(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.SimpleObjects)
	assert.Equal(t, obj, res.SimpleObjects)
}

func TestRequestBodyPostApplicationJSONArrayOfArray(t *testing.T) {
	recordTest("request-bodies-post-application-json-array-of-array")

	s := sdk.New()

	obj := [][]shared.SimpleObject{
		{
			createSimpleObject(),
		},
	}

	res, err := s.RequestBodies.RequestBodyPostApplicationJSONArrayOfArray(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Arrs)
	assert.Equal(t, obj, res.Arrs)
}

func TestRequestBodyPostApplicationJSONMap(t *testing.T) {
	recordTest("request-bodies-post-application-json-map")

	s := sdk.New()

	obj := map[string]shared.SimpleObject{
		"mapElem1": createSimpleObject(),
		"mapElem2": createSimpleObject(),
	}

	res, err := s.RequestBodies.RequestBodyPostApplicationJSONMap(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, obj, res.Res)
}

func TestRequestBodyPostApplicationJSONMapOfMap(t *testing.T) {
	recordTest("request-bodies-post-application-json-map-of-map")

	s := sdk.New()

	obj := map[string]map[string]shared.SimpleObject{
		"mapElem1": {
			"subMapElem1": createSimpleObject(),
			"subMapElem2": createSimpleObject(),
		},
		"mapElem2": {
			"subMapElem1": createSimpleObject(),
			"subMapElem2": createSimpleObject(),
		},
	}

	res, err := s.RequestBodies.RequestBodyPostApplicationJSONMapOfMap(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, obj, res.Res)
}

func TestRequestBodyPostApplicationJSONMapOfArray(t *testing.T) {
	recordTest("request-bodies-post-application-json-map-of-array")

	s := sdk.New()

	obj := map[string][]shared.SimpleObject{
		"mapElem1": {createSimpleObject(), createSimpleObject()},
		"mapElem2": {createSimpleObject(), createSimpleObject()},
	}

	res, err := s.RequestBodies.RequestBodyPostApplicationJSONMapOfArray(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, obj, res.Res)
}

func TestRequestBodyPostApplicationJSONArrayOfMap(t *testing.T) {
	recordTest("request-bodies-post-application-json-array-of-map")

	s := sdk.New()

	obj := []map[string]shared.SimpleObject{
		{
			"mapElem1": createSimpleObject(),
			"mapElem2": createSimpleObject(),
		},
		{
			"mapElem1": createSimpleObject(),
			"mapElem2": createSimpleObject(),
		},
	}

	res, err := s.RequestBodies.RequestBodyPostApplicationJSONArrayOfMap(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Maps)
	assert.Equal(t, obj, res.Maps)
}

func TestRequestBodyPostApplicationJSONArrayOfPrimitive(t *testing.T) {
	recordTest("request-bodies-post-application-json-array-of-primitive")

	s := sdk.New()

	obj := []string{"hello", "world"}

	res, err := s.RequestBodies.RequestBodyPostApplicationJSONArrayOfPrimitive(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Strings)
	assert.Equal(t, obj, res.Strings)
}

func TestRequestBodyPostApplicationJSONMapOfPrimitive(t *testing.T) {
	recordTest("request-bodies-post-application-json-map-of-primitive")

	s := sdk.New()

	obj := map[string]string{
		"mapElem1": "hello",
		"mapElem2": "world",
	}

	res, err := s.RequestBodies.RequestBodyPostApplicationJSONMapOfPrimitive(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, obj, res.Res)
}

func TestRequestBodyPostApplicationJSONMapOfMapOfPrimitive(t *testing.T) {
	recordTest("request-bodies-post-application-json-map-of-map-of-primitive")

	s := sdk.New()

	obj := map[string]map[string]string{
		"mapElem1": {
			"subMapElem1": "foo",
			"subMapElem2": "bar",
		},
		"mapElem2": {
			"subMapElem1": "buzz",
			"subMapElem2": "bazz",
		},
	}

	res, err := s.RequestBodies.RequestBodyPostApplicationJSONMapOfMapOfPrimitive(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, obj, res.Res)
}

func TestRequestBodyPostApplicationJSONArrayOfArrayOfPrimitive(t *testing.T) {
	recordTest("request-bodies-post-application-json-array-of-array-of-primitive")

	s := sdk.New()

	obj := [][]string{
		{"foo", "bar"},
		{"buzz", "bazz"},
	}

	res, err := s.RequestBodies.RequestBodyPostApplicationJSONArrayOfArrayOfPrimitive(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Arrs)
	assert.Equal(t, obj, res.Arrs)
}

func TestRequestBodyPostApplicationJSONArrayObject(t *testing.T) {
	recordTest("request-bodies-post-application-json-array-object")

	s := sdk.New()

	obj := []shared.SimpleObject{createSimpleObject(), createSimpleObject()}

	res, err := s.RequestBodies.RequestBodyPostApplicationJSONArrayObj(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.ArrObjValue)
	assert.Equal(t, obj, res.ArrObjValue.JSON)
}

func TestRequestBodyPostApplicationJSONMapObject(t *testing.T) {
	recordTest("request-bodies-post-application-json-map-object")

	s := sdk.New()

	obj := map[string]shared.SimpleObject{
		"mapElem1": createSimpleObject(),
		"mapElem2": createSimpleObject(),
	}

	res, err := s.RequestBodies.RequestBodyPostApplicationJSONMapObj(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.MapObjValue)
	assert.Equal(t, obj, res.MapObjValue.JSON)
}

func TestRequestBodyPutMultipartSimple(t *testing.T) {
	recordTest("request-bodies-put-multipart-simple")

	s := sdk.New()

	obj := createSimpleObject()

	res, err := s.RequestBodies.RequestBodyPutMultipartSimple(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, operations.RequestBodyPutMultipartSimpleResForm{
		Any:      "any",
		Bool:     "true",
		BoolOpt:  pointer.ToString("true"),
		Date:     "2020-01-01",
		DateTime: "2020-01-01T00:00:00.000000001Z",
		Enum:     "one",
		Float32:  "1.1",
		Int:      "1",
		Int32:    "1",
		Num:      "1.1",
		Str:      "test",
		StrOpt:   pointer.ToString("testOptional"),
	}, res.Res.Form)
}

func TestRequestBodyPutMultipartDeep(t *testing.T) {
	recordTest("request-bodies-put-multipart-deep")

	s := sdk.New()

	obj := createDeepObject()

	res, err := s.RequestBodies.RequestBodyPutMultipartDeep(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)

	assert.Equal(t, operations.RequestBodyPutMultipartDeepResForm{
		Arr:  marshalJSON(t, obj.Arr),
		Bool: "true",
		Int:  "1",
		Map:  marshalJSON(t, obj.Map),
		Num:  "1.1",
		Obj:  marshalJSON(t, obj.Obj),
		Str:  "test",
	}, res.Res.Form)
}

func TestRequestBodyPutMultipartFile(t *testing.T) {
	recordTest("request-bodies-put-multipart-file")

	s := sdk.New()

	data, err := os.ReadFile("testdata/testUpload.json")
	require.NoError(t, err)

	res, err := s.RequestBodies.RequestBodyPutMultipartFile(context.Background(),
		operations.RequestBodyPutMultipartFileRequestBody{
			File: &operations.RequestBodyPutMultipartFileRequestBodyFile{
				Content: data,
				File:    "testUpload.json",
			},
		},
	)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, map[string]string{
		"file": string(data),
	}, res.Res.Files)
}

func TestRequestBodyPostFormSimple(t *testing.T) {
	recordTest("request-bodies-post-form-simple")

	s := sdk.New()

	obj := createSimpleObject()

	res, err := s.RequestBodies.RequestBodyPostFormSimple(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, operations.RequestBodyPostFormSimpleResForm{
		Any:      "any",
		Bool:     "true",
		BoolOpt:  pointer.ToString("true"),
		Date:     "2020-01-01",
		DateTime: "2020-01-01T00:00:00.000000001Z",
		Enum:     "one",
		Float32:  "1.1",
		Int:      "1",
		Int32:    "1",
		Num:      "1.1",
		Str:      "test",
		StrOpt:   pointer.ToString("testOptional"),
	}, res.Res.Form)
}

func TestRequestBodyPostFormDeep(t *testing.T) {
	recordTest("request-bodies-post-form-deep")

	s := sdk.New()

	obj := createDeepObject()

	res, err := s.RequestBodies.RequestBodyPostFormDeep(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, operations.RequestBodyPostFormDeepResForm{
		Arr:  marshalJSON(t, obj.Arr),
		Bool: "true",
		Int:  "1",
		Map:  marshalJSON(t, obj.Map),
		Num:  "1.1",
		Obj:  marshalJSON(t, obj.Obj),
		Str:  "test",
	}, res.Res.Form)
}

func TestRequestBodyPostFormMapPrimitive(t *testing.T) {
	recordTest("request-bodies-post-form-map-primitive")

	s := sdk.New()

	m := map[string]string{
		"key1": "value1",
		"key2": "value2",
		"key3": "value3",
	}
	res, err := s.RequestBodies.RequestBodyPostFormMapPrimitive(context.Background(), m)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, m, res.Res.Form)
}

func TestRequestBodyPutString(t *testing.T) {
	recordTest("request-bodies-put-string")

	s := sdk.New()

	str := "Hello World"
	res, err := s.RequestBodies.RequestBodyPutString(context.Background(), str)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, str, res.Res.Data)
}

func TestRequestBodyPutBytes(t *testing.T) {
	recordTest("request-bodies-put-bytes")

	s := sdk.New()

	data, err := os.ReadFile("testdata/testUpload.json")
	require.NoError(t, err)

	res, err := s.RequestBodies.RequestBodyPutBytes(context.Background(), data)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, string(data), res.Res.Data)
}

func TestRequestBodyPutStringWithParams(t *testing.T) {
	recordTest("request-bodies-put-string-with-params")

	s := sdk.New()

	res, err := s.RequestBodies.RequestBodyPutStringWithParams(context.Background(), "Hello world", "test param")
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, "Hello world", res.Res.Data)
	assert.Equal(t, "test param", res.Res.Args.QueryStringParam)
}

func TestRequestBodyPutBytesWithParams(t *testing.T) {
	recordTest("request-bodies-put-bytes-with-params")

	s := sdk.New()

	data, err := os.ReadFile("testdata/testUpload.json")
	require.NoError(t, err)

	res, err := s.RequestBodies.RequestBodyPutBytesWithParams(context.Background(), data, "test param")
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, string(data), res.Res.Data)
	assert.Equal(t, "test param", res.Res.Args.QueryStringParam)
}

func TestRequestBodyEmptyObject(t *testing.T) {
	recordTest("request-bodies-post-empty-object")

	s := sdk.New()

	res, err := s.RequestBodies.RequestBodyPostEmptyObject(context.Background(), operations.RequestBodyPostEmptyObjectRequestBody{
		Empty:                    &operations.RequestBodyPostEmptyObjectRequestBodyEmpty{},
		EmptyWithEmptyProperties: &operations.RequestBodyPostEmptyObjectRequestBodyEmptyWithEmptyProperties{},
	})
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.RequestBodyPostEmptyObject200ApplicationJSONObject)
}

func TestRequestBodyCamelCase(t *testing.T) {
	recordTest("request-bodies-camel-case")

	s := sdk.New()

	obj := createSimpleObjectCamelCase()

	res, err := s.RequestBodies.RequestBodyCamelCase(context.Background(), obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res)
	assert.Equal(t, obj, res.Res.JSON)

	rawBody, err := io.ReadAll(res.RawResponse.Body)
	assert.NoError(t, err)
	assert.Equal(t, 32, len(regexp.MustCompile("_val").FindAllStringSubmatch(string(rawBody), -1)))
}

func TestRequestBodyReadOnlyInput(t *testing.T) {
	recordTest("request-bodies-read-only-input")

	s := sdk.New()

	res, err := s.RequestBodies.RequestBodyReadOnlyInput(context.Background(), shared.ReadOnlyObjectInput{})
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)

	assert.Equal(t, true, res.ReadOnlyObject.Bool)
	assert.Equal(t, 1.0, res.ReadOnlyObject.Num)
	assert.Equal(t, "hello", res.ReadOnlyObject.String)
}

func TestRequestBodyWriteOnlyOutput(t *testing.T) {
	recordTest("request-bodies-write-only-output")

	s := sdk.New()

	res, err := s.RequestBodies.RequestBodyWriteOnlyOutput(context.Background(), shared.WriteOnlyObject{
		Bool:   true,
		Num:    1.0,
		String: "hello",
	})
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, shared.WriteOnlyObjectOutput{}, *res.WriteOnlyObject)
}

func TestRequestBodyWriteOnly(t *testing.T) {
	recordTest("request-bodies-write-only")

	s := sdk.New()

	res, err := s.RequestBodies.RequestBodyWriteOnly(context.Background(), shared.WriteOnlyObject{
		Bool:   true,
		Num:    1.0,
		String: "hello",
	})
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)

	assert.Equal(t, true, res.ReadOnlyObject.Bool)
	assert.Equal(t, 1.0, res.ReadOnlyObject.Num)
	assert.Equal(t, "hello", res.ReadOnlyObject.String)
}

func TestRequestBodyReadAndWrite(t *testing.T) {
	recordTest("request-bodies-read-and-write")

	s := sdk.New()

	res, err := s.RequestBodies.RequestBodyReadAndWrite(context.Background(), shared.ReadWriteObjectInput{
		Num1: 1,
		Num2: 2,
		Num3: 4,
	})
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)

	assert.Equal(t, int64(4), res.ReadWriteObject.Num3)
	assert.Equal(t, int64(7), res.ReadWriteObject.Sum)
}
