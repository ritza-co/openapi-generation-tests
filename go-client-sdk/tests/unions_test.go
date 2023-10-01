// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package tests

import (
	"bytes"
	"context"
	"net/http"
	"testing"
	"time"

	"openapi/pkg/models/operations"
	"openapi/pkg/models/shared"
	"openapi/pkg/types"
	"openapi/pkg/utils"

	sdk "openapi"

	"github.com/AlekSi/pointer"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestStronglyTypedOneOfPost_Basic(t *testing.T) {
	recordTest("unions-strongly-typed-one-of-post-basic")

	s := sdk.New()

	obj := shared.SimpleObjectWithType{
		Str:        "test",
		Bool:       true,
		Int:        1,
		Int32:      1,
		IntEnum:    shared.SimpleObjectWithTypeIntEnumSecond,
		Int32Enum:  shared.SimpleObjectWithTypeInt32EnumFiftyFive,
		Num:        1.1,
		Float32:    1.1,
		Enum:       shared.EnumOne,
		Any:        "any",
		Date:       types.Date{time.Date(2020, 1, 1, 0, 0, 0, 0, time.UTC)},
		DateTime:   time.Date(2020, 1, 1, 0, 0, 0, 1, time.UTC),
		BoolOpt:    pointer.ToBool(true),
		StrOpt:     pointer.ToString("testOptional"),
		IntOptNull: nil,
		NumOptNull: nil,
	}

	req := shared.CreateStronglyTypedOneOfObjectSimpleObjectWithType(obj)

	res, err := s.Unions.StronglyTypedOneOfPost(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, shared.StronglyTypedOneOfObjectTypeSimpleObjectWithType, res.Res.JSON.Type)

	obj.Type = "simpleObjectWithType"
	assert.Equal(t, obj, *res.Res.JSON.SimpleObjectWithType)
}

func TestStronglyTypedOneOfPost_Deep(t *testing.T) {
	recordTest("unions-strongly-typed-one-of-post-deep")

	s := sdk.New()

	obj := shared.DeepObjectWithType{
		Any: shared.CreateDeepObjectWithTypeAnySimpleObject(createSimpleObject()),
		Arr: []shared.SimpleObject{
			createSimpleObject(), createSimpleObject(),
		},
		Bool: true,
		Int:  1,
		Map: map[string]shared.SimpleObject{
			"key": createSimpleObject(),
		},
		Num:  1.1,
		Obj:  createSimpleObject(),
		Str:  "test",
		Type: pointer.ToString("deepObjectWithType"),
	}

	req := shared.CreateStronglyTypedOneOfObjectDeepObjectWithType(obj)

	res, err := s.Unions.StronglyTypedOneOfPost(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, shared.StronglyTypedOneOfObjectTypeDeepObjectWithType, res.Res.JSON.Type)
	assert.Equal(t, obj, *res.Res.JSON.DeepObjectWithType)
}

func TestWeaklyTypedOneOfPost_Basic(t *testing.T) {
	recordTest("unions-weakly-typed-one-of-post-basic")

	s := sdk.New()

	obj := createSimpleObject()

	req := shared.CreateWeaklyTypedOneOfObjectSimpleObject(obj)

	res, err := s.Unions.WeaklyTypedOneOfPost(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, shared.WeaklyTypedOneOfObjectTypeSimpleObject, res.Res.JSON.Type)
	assert.Equal(t, obj, *res.Res.JSON.SimpleObject)
}

func TestWeaklyTypedOneOfPost_Deep(t *testing.T) {
	recordTest("unions-weakly-typed-one-of-post-deep")

	s := sdk.New()

	obj := createDeepObject()

	req := shared.CreateWeaklyTypedOneOfObjectDeepObject(obj)

	res, err := s.Unions.WeaklyTypedOneOfPost(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, shared.WeaklyTypedOneOfObjectTypeDeepObject, res.Res.JSON.Type)
	assert.Equal(t, obj, *res.Res.JSON.DeepObject)
}

func TestTypedObjectOneOfPost_Obj1(t *testing.T) {
	recordTest("unions-typed-object-one-of-post-obj1")

	s := sdk.New()

	obj := shared.TypedObject1{}

	req := shared.CreateTypedObjectOneOfTypedObject1(obj)

	res, err := s.Unions.TypedObjectOneOfPost(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, shared.TypedObjectOneOfTypeTypedObject1, res.Res.JSON.Type)
	assert.Equal(t, obj, *res.Res.JSON.TypedObject1)
}

func TestTypedObjectOneOfPost_Obj2(t *testing.T) {
	recordTest("unions-typed-object-one-of-post-obj2")

	s := sdk.New()

	obj := shared.TypedObject2{}

	req := shared.CreateTypedObjectOneOfTypedObject2(obj)

	res, err := s.Unions.TypedObjectOneOfPost(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, shared.TypedObjectOneOfTypeTypedObject2, res.Res.JSON.Type)
	assert.Equal(t, obj, *res.Res.JSON.TypedObject2)
}

func TestTypedObjectOneOfPost_Obj3(t *testing.T) {
	recordTest("unions-typed-object-one-of-post-obj3")

	s := sdk.New()

	obj := shared.TypedObject3{}

	req := shared.CreateTypedObjectOneOfTypedObject3(obj)

	res, err := s.Unions.TypedObjectOneOfPost(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, shared.TypedObjectOneOfTypeTypedObject3, res.Res.JSON.Type)
	assert.Equal(t, obj, *res.Res.JSON.TypedObject3)
}

func TestTypedObjectOneOfPost_Null(t *testing.T) {
	recordTest("unions-typed-object-one-of-post-null")

	s := sdk.New()

	req := shared.TypedObjectOneOf{}
	_, err := s.Unions.TypedObjectOneOfPost(context.Background(), req)
	require.Error(t, err)
	assert.Equal(t, err.Error(), "error serializing request body: json: error calling MarshalJSON for type shared.TypedObjectOneOf: could not marshal union type: all fields are null")
}

func TestTypedObjectNullableOneOfPost_Obj1(t *testing.T) {
	recordTest("unions-typed-object-nullable-one-of-post-obj1")

	s := sdk.New()

	obj := shared.TypedObject1{
		Value: "one",
	}

	req := shared.CreateTypedObjectNullableOneOfTypedObject1(obj)

	res, err := s.Unions.TypedObjectNullableOneOfPost(context.Background(), &req)
	require.NoError(t, err)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, shared.TypedObjectNullableOneOfTypeTypedObject1, res.Res.JSON.Type)
	assert.Equal(t, obj, *res.Res.JSON.TypedObject1)
}

func TestTypedObjectNullableOneOfPost_Obj2(t *testing.T) {
	recordTest("unions-typed-object-nullable-one-of-post-obj2")

	s := sdk.New()

	obj := shared.TypedObject2{
		Value: "two",
	}

	req := shared.CreateTypedObjectNullableOneOfTypedObject2(obj)

	res, err := s.Unions.TypedObjectNullableOneOfPost(context.Background(), &req)
	require.NoError(t, err)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, shared.TypedObjectNullableOneOfTypeTypedObject2, res.Res.JSON.Type)
	assert.Equal(t, obj, *res.Res.JSON.TypedObject2)
}

func TestTypedObjectNullableOneOfPost_Null(t *testing.T) {
	recordTest("unions-typed-object-nullable-one-of-post-null")

	s := sdk.New()

	res, err := s.Unions.TypedObjectNullableOneOfPost(context.Background(), nil)
	require.NoError(t, err)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	require.Nil(t, res.Res.JSON)
}

func TestFlattenedTypedObject_Obj1(t *testing.T) {
	recordTest("unions-flattened-typed-object-post-obj1")

	s := sdk.New()

	obj := shared.CreateFlattenedTypedObject1TypedObject1(shared.TypedObject1{
		Value: "one",
	})

	res, err := s.Unions.FlattenedTypedObjectPost(context.Background(), obj)
	require.NoError(t, err)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, obj, res.Res.JSON)
}

func TestNullableTypedObjectPost_Obj1(t *testing.T) {
	recordTest("unions-nullable-typed-object-post-obj1")

	s := sdk.New()

	obj := shared.TypedObject1{
		Value: "one",
	}

	res, err := s.Unions.NullableTypedObjectPost(context.Background(), &obj)
	require.NoError(t, err)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, obj, *res.Res.JSON)
}

func TestNullableTypedObjectPost_Null(t *testing.T) {
	recordTest("unions-nullable-typed-object-post-null")

	s := sdk.New()

	res, err := s.Unions.NullableTypedObjectPost(context.Background(), nil)
	require.NoError(t, err)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	require.Nil(t, res.Res.JSON)
}

func TestNullableOneOfSchemaPost_Obj1(t *testing.T) {
	recordTest("unions-nullable-oneof-schema-post-obj1")

	s := sdk.New()

	obj := shared.TypedObject1{
		Value: "one",
	}

	req := operations.CreateNullableOneOfSchemaPostRequestBodyTypedObject1(obj)

	res, err := s.Unions.NullableOneOfSchemaPost(context.Background(), &req)
	require.NoError(t, err)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, operations.NullableOneOfSchemaPostResJSONTypeTypedObject1, res.Res.JSON.Type)
	assert.Equal(t, obj, *res.Res.JSON.TypedObject1)
}

func TestNullableOneOfSchemaPost_Obj2(t *testing.T) {
	recordTest("unions-nullable-oneof-schema-post-obj2")

	s := sdk.New()

	obj := shared.TypedObject2{
		Value: "two",
	}

	req := operations.CreateNullableOneOfSchemaPostRequestBodyTypedObject2(obj)

	res, err := s.Unions.NullableOneOfSchemaPost(context.Background(), &req)
	require.NoError(t, err)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, operations.NullableOneOfSchemaPostResJSONTypeTypedObject2, res.Res.JSON.Type)
	assert.Equal(t, obj, *res.Res.JSON.TypedObject2)
}

func TestNullableOneOfSchemaPost_Null(t *testing.T) {
	recordTest("unions-nullable-oneof-schema-post-null")

	s := sdk.New()

	res, err := s.Unions.NullableOneOfSchemaPost(context.Background(), nil)
	require.NoError(t, err)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	require.Nil(t, res.Res.JSON)
}

func TestNullableOneOfTypeInObject(t *testing.T) {
	recordTest("unions-nullable-oneof-type-in-object-post")

	nullableOneOfTwoInt2 := shared.CreateNullableOneOfTypeInObjectNullableOneOfTwoInteger(2)

	tests := []struct {
		name     string
		obj      shared.NullableOneOfTypeInObject
		wantJson string
	}{
		{
			name: "Nullable fields set to null",
			obj: shared.NullableOneOfTypeInObject{
				NullableOneOfOne: nil,
				NullableOneOfTwo: nil,
				OneOfOne:         true,
			},
			wantJson: "{\"NullableOneOfOne\":null,\"NullableOneOfTwo\":null,\"OneOfOne\":true}",
		},
		{
			name: "All fields set to non-null values",
			obj: shared.NullableOneOfTypeInObject{
				NullableOneOfOne: pointer.ToBool(true),
				NullableOneOfTwo: &nullableOneOfTwoInt2,
				OneOfOne:         true,
			},
			wantJson: "{\"NullableOneOfOne\":true,\"NullableOneOfTwo\":2,\"OneOfOne\":true}",
		},
	}
	s := sdk.New()
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			reader, _, err := utils.SerializeRequestBody(context.Background(), tt.obj, false, false, "Request", "json", "")
			require.NoError(t, err)
			serializedBody := new(bytes.Buffer)
			serializedBody.ReadFrom(reader)
			assert.Equal(t, tt.wantJson, serializedBody.String())
			res, err := s.Unions.NullableOneOfTypeInObjectPost(context.Background(), tt.obj)
			require.NoError(t, err)
			assert.Equal(t, http.StatusOK, res.StatusCode)
			assert.Equal(t, tt.obj, res.Res.JSON)
		})
	}
}

func TestNullableOneOfRefInObject(t *testing.T) {
	recordTest("unions-nullable-oneof-ref-in-object-post")

	nullableOneOfTwoObj2 := shared.CreateNullableOneOfRefInObjectNullableOneOfTwoTypedObject2(shared.TypedObject2{Value: "two"})

	tests := []struct {
		name     string
		obj      shared.NullableOneOfRefInObject
		wantJson string
	}{
		{
			name: "Nullable fields set to null",
			obj: shared.NullableOneOfRefInObject{
				NullableOneOfOne: nil,
				NullableOneOfTwo: nil,
				OneOfOne:         shared.CreateNullableOneOfRefInObjectOneOfOneTypedObject1(shared.TypedObject1{Value: "one"}),
			},
			wantJson: "{\"NullableOneOfOne\":null,\"NullableOneOfTwo\":null,\"OneOfOne\":{\"type\":\"obj1\",\"value\":\"one\"}}",
		},
		{
			name: "All fields set to non-null values",
			obj: shared.NullableOneOfRefInObject{
				NullableOneOfOne: &shared.TypedObject1{Value: "one"},
				NullableOneOfTwo: &nullableOneOfTwoObj2,
				OneOfOne:         shared.CreateNullableOneOfRefInObjectOneOfOneTypedObject1(shared.TypedObject1{}),
			},
			wantJson: "{\"NullableOneOfOne\":{\"type\":\"obj1\",\"value\":\"one\"},\"NullableOneOfTwo\":{\"type\":\"obj2\",\"value\":\"two\"},\"OneOfOne\":{\"type\":\"obj1\",\"value\":\"\"}}",
		},
	}
	s := sdk.New()
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			reader, _, err := utils.SerializeRequestBody(context.Background(), tt.obj, false, false, "Request", "json", "")
			require.NoError(t, err)
			serializedBody := new(bytes.Buffer)
			serializedBody.ReadFrom(reader)
			assert.Equal(t, tt.wantJson, serializedBody.String())
			res, err := s.Unions.NullableOneOfRefInObjectPost(context.Background(), tt.obj)
			require.NoError(t, err)
			assert.Equal(t, http.StatusOK, res.StatusCode)
			assert.Equal(t, tt.obj, res.Res.JSON)
		})
	}
}

func TestPrimitiveTypeOneOfPost_String(t *testing.T) {
	recordTest("unions-primitive-type-one-of-post-string")

	s := sdk.New()

	req := operations.CreatePrimitiveTypeOneOfPostRequestBodyStr("test")

	res, err := s.Unions.PrimitiveTypeOneOfPost(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, operations.PrimitiveTypeOneOfPostResJSONTypeStr, res.Res.JSON.Type)
	assert.Equal(t, "test", *res.Res.JSON.Str)
}

func TestPrimitiveTypeOneOfPost_Integer(t *testing.T) {
	recordTest("unions-primitive-type-one-of-post-integer")

	s := sdk.New()

	req := operations.CreatePrimitiveTypeOneOfPostRequestBodyInteger(111)

	res, err := s.Unions.PrimitiveTypeOneOfPost(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, operations.PrimitiveTypeOneOfPostResJSONTypeInteger, res.Res.JSON.Type)
	assert.Equal(t, int64(111), *res.Res.JSON.Integer)
}

func TestPrimitiveTypeOneOfPost_Number(t *testing.T) {
	recordTest("unions-primitive-type-one-of-post-number")

	s := sdk.New()

	req := operations.CreatePrimitiveTypeOneOfPostRequestBodyNumber(22.2)

	res, err := s.Unions.PrimitiveTypeOneOfPost(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, operations.PrimitiveTypeOneOfPostResJSONTypeNumber, res.Res.JSON.Type)
	assert.Equal(t, float64(22.2), *res.Res.JSON.Number)
}

func TestPrimitiveTypeOneOfPost_Boolean(t *testing.T) {
	recordTest("unions-primitive-type-one-of-post-boolean")

	s := sdk.New()

	req := operations.CreatePrimitiveTypeOneOfPostRequestBodyBoolean(true)

	res, err := s.Unions.PrimitiveTypeOneOfPost(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, operations.PrimitiveTypeOneOfPostResJSONTypeBoolean, res.Res.JSON.Type)
	assert.Equal(t, true, *res.Res.JSON.Boolean)
}

func TestMixedTypeOneOfPost_String(t *testing.T) {
	recordTest("unions-mixed-type-one-of-post-string")

	s := sdk.New()

	req := operations.CreateMixedTypeOneOfPostRequestBodyStr("test")

	res, err := s.Unions.MixedTypeOneOfPost(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, operations.MixedTypeOneOfPostResJSONTypeStr, res.Res.JSON.Type)
	assert.Equal(t, "test", *res.Res.JSON.Str)
}

func TestMixedTypeOneOfPost_Integer(t *testing.T) {
	recordTest("unions-mixed-type-one-of-post-integer")

	s := sdk.New()

	req := operations.CreateMixedTypeOneOfPostRequestBodyInteger(111)

	res, err := s.Unions.MixedTypeOneOfPost(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, operations.MixedTypeOneOfPostResJSONTypeInteger, res.Res.JSON.Type)
	assert.Equal(t, int64(111), *res.Res.JSON.Integer)
}

func TestMixedTypeOneOfPost_Object(t *testing.T) {
	recordTest("unions-mixed-type-one-of-post-object")

	s := sdk.New()

	obj := createSimpleObject()

	req := operations.CreateMixedTypeOneOfPostRequestBodySimpleObject(obj)

	res, err := s.Unions.MixedTypeOneOfPost(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, operations.MixedTypeOneOfPostResJSONTypeSimpleObject, res.Res.JSON.Type)
	assert.Equal(t, obj, *res.Res.JSON.SimpleObject)
}
