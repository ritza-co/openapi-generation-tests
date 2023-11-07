// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package tests

import (
	"bytes"
	"context"
	"math/big"
	"net/http"
	"openapi/pkg/models/operations"
	"openapi/pkg/models/shared"
	"openapi/pkg/types"
	"openapi/pkg/utils"
	"testing"
	"time"

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

	obj := shared.TypedObject1{
		Type: shared.TypedObject1TypeObj1,
	}

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

	obj := shared.TypedObject2{
		Type: shared.TypedObject2TypeObj2,
	}

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

	obj := shared.TypedObject3{
		Type: shared.TypedObject3TypeObj3,
	}

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
		Type:  shared.TypedObject1TypeObj1,
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
		Type:  shared.TypedObject2TypeObj2,
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
		Type:  shared.TypedObject1TypeObj1,
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
		Type:  shared.TypedObject1TypeObj1,
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
		Type:  shared.TypedObject1TypeObj1,
	}

	req := operations.CreateNullableOneOfSchemaPostRequestBodyTypedObject1(obj)

	res, err := s.Unions.NullableOneOfSchemaPost(context.Background(), &req)
	require.NoError(t, err)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, operations.NullableOneOfSchemaPostJSONTypeTypedObject1, res.Res.JSON.Type)
	assert.Equal(t, obj, *res.Res.JSON.TypedObject1)
}

func TestNullableOneOfSchemaPost_Obj2(t *testing.T) {
	recordTest("unions-nullable-oneof-schema-post-obj2")

	s := sdk.New()

	obj := shared.TypedObject2{
		Value: "two",
		Type:  shared.TypedObject2TypeObj2,
	}

	req := operations.CreateNullableOneOfSchemaPostRequestBodyTypedObject2(obj)

	res, err := s.Unions.NullableOneOfSchemaPost(context.Background(), &req)
	require.NoError(t, err)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, operations.NullableOneOfSchemaPostJSONTypeTypedObject2, res.Res.JSON.Type)
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
			name: "Non-nullable field set only",
			obj: shared.NullableOneOfTypeInObject{
				OneOfOne: true,
			},
			wantJson: "{\"NullableOneOfOne\":null,\"NullableOneOfTwo\":null,\"OneOfOne\":true}",
		},
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

	nullableOneOfTwoObj2 := shared.CreateNullableOneOfTwoTypedObject2(shared.TypedObject2{Value: "two", Type: shared.TypedObject2TypeObj2})

	tests := []struct {
		name     string
		obj      shared.NullableOneOfRefInObject
		wantJson string
	}{
		{
			name: "Non-nullable field set only",
			obj: shared.NullableOneOfRefInObject{
				OneOfOne: shared.CreateOneOfOneTypedObject1(shared.TypedObject1{Value: "one", Type: shared.TypedObject1TypeObj1}),
			},
			wantJson: "{\"NullableOneOfOne\":null,\"NullableOneOfTwo\":null,\"OneOfOne\":{\"type\":\"obj1\",\"value\":\"one\"}}",
		},
		{
			name: "Nullable fields set to null",
			obj: shared.NullableOneOfRefInObject{
				NullableOneOfOne: nil,
				NullableOneOfTwo: nil,
				OneOfOne:         shared.CreateOneOfOneTypedObject1(shared.TypedObject1{Value: "one", Type: shared.TypedObject1TypeObj1}),
			},
			wantJson: "{\"NullableOneOfOne\":null,\"NullableOneOfTwo\":null,\"OneOfOne\":{\"type\":\"obj1\",\"value\":\"one\"}}",
		},
		{
			name: "All fields set to non-null values",
			obj: shared.NullableOneOfRefInObject{
				NullableOneOfOne: &shared.TypedObject1{Value: "one", Type: shared.TypedObject1TypeObj1},
				NullableOneOfTwo: &nullableOneOfTwoObj2,
				OneOfOne:         shared.CreateOneOfOneTypedObject1(shared.TypedObject1{Type: shared.TypedObject1TypeObj1}),
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
	assert.Equal(t, operations.PrimitiveTypeOneOfPostJSONTypeStr, res.Res.JSON.Type)
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
	assert.Equal(t, operations.PrimitiveTypeOneOfPostJSONTypeInteger, res.Res.JSON.Type)
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
	assert.Equal(t, operations.PrimitiveTypeOneOfPostJSONTypeNumber, res.Res.JSON.Type)
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
	assert.Equal(t, operations.PrimitiveTypeOneOfPostJSONTypeBoolean, res.Res.JSON.Type)
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
	assert.Equal(t, operations.MixedTypeOneOfPostJSONTypeStr, res.Res.JSON.Type)
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
	assert.Equal(t, operations.MixedTypeOneOfPostJSONTypeInteger, res.Res.JSON.Type)
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
	assert.Equal(t, operations.MixedTypeOneOfPostJSONTypeSimpleObject, res.Res.JSON.Type)
	assert.Equal(t, obj, *res.Res.JSON.SimpleObject)
}

func TestDateNullUnion(t *testing.T) {
	recordTest("unions-date-null")

	s := sdk.New()
	date := types.MustDateFromString("2020-01-01")
	res, err := s.Unions.UnionDateNull(context.Background(), &date)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, types.MustDateFromString("2020-01-01"), *res.Res.JSON)
}

func TestDateTimeNullUnion(t *testing.T) {
	recordTest("unions-datetime-null")

	s := sdk.New()
	dateTime := types.MustTimeFromString("2020-01-01T00:00:00Z")
	res, err := s.Unions.UnionDateTimeNull(context.Background(), &dateTime)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, types.MustTimeFromString("2020-01-01T00:00:00Z"), *res.Res.JSON)
}

func TestDateTimeBigintUnion(t *testing.T) {
	recordTest("unions-datetime-bigint")

	s := sdk.New()

	req := operations.CreateUnionDateTimeBigIntRequestBodyDateTime(types.MustTimeFromString("2020-01-01T00:00:00Z"))

	res, err := s.Unions.UnionDateTimeBigInt(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, operations.UnionDateTimeBigIntJSONTypeDateTime, res.Res.JSON.Type)
	assert.Equal(t, types.MustTimeFromString("2020-01-01T00:00:00Z"), *res.Res.JSON.DateTime)

	nextReq := operations.CreateUnionDateTimeBigIntRequestBodyBigint(big.NewInt(9007199254740991))

	nextRes, nextErr := s.Unions.UnionDateTimeBigInt(context.Background(), nextReq)
	require.NoError(t, nextErr)
	require.NotNil(t, nextRes)
	assert.Equal(t, http.StatusOK, nextRes.StatusCode)
	assert.Equal(t, operations.UnionDateTimeBigIntJSONTypeBigint, nextRes.Res.JSON.Type)
	assert.Equal(t, big.NewInt(9007199254740991), nextRes.Res.JSON.Bigint)
}

func TestUnionBigintDecimal(t *testing.T) {
	recordTest("unions-bigint-decimal")

	s := sdk.New()

	req := operations.CreateUnionBigIntDecimalRequestBodyDecimal(types.MustNewDecimalFromString("3.141592653589793"))

	res, err := s.Unions.UnionBigIntDecimal(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, operations.UnionBigIntDecimalJSONTypeDecimal, res.Res.JSON.Type)
	assert.Equal(t, types.MustNewDecimalFromString("3.141592653589793"), res.Res.JSON.Decimal)

	nextReq := operations.CreateUnionBigIntDecimalRequestBodyBigint(big.NewInt(9007199254740991))

	nextRes, nextErr := s.Unions.UnionBigIntDecimal(context.Background(), nextReq)
	require.NoError(t, nextErr)
	require.NotNil(t, nextRes)
	assert.Equal(t, http.StatusOK, nextRes.StatusCode)
	assert.Equal(t, operations.UnionBigIntDecimalJSONTypeBigint, nextRes.Res.JSON.Type)
	assert.Equal(t, big.NewInt(9007199254740991), nextRes.Res.JSON.Bigint)
}
