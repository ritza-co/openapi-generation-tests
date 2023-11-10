// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package tests

import (
	"context"
	"net/http"
	"testing"

	"openapi/v2/pkg/models/operations"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"

	sdk "openapi"
)

func TestComponentBodyAndParamNoConflict(t *testing.T) {
	recordTest("flattening-component-body-and-param-no-conflict")

	s := sdk.New()

	obj := createSimpleObject()

	res, err := s.Flattening.ComponentBodyAndParamNoConflict(context.Background(), "param test", obj)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res.JSON)
	assert.Equal(t, "param test", res.Res.Args["paramStr"])
	assert.Equal(t, obj, res.Res.JSON)
}

func TestComponentBodyAndParamConflict(t *testing.T) {
	recordTest("flattening-component-body-and-param-conflict")

	s := sdk.New()

	obj := createSimpleObject()

	res, err := s.Flattening.ComponentBodyAndParamConflict(context.Background(), obj, "param test")
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res.JSON)
	assert.Equal(t, "param test", res.Res.Args["str"])
	assert.Equal(t, obj, res.Res.JSON)
}

func TestInlineBodyAndParamConflict(t *testing.T) {
	recordTest("flattening-inline-body-and-param-conflict")

	s := sdk.New()

	res, err := s.Flattening.InlineBodyAndParamConflict(context.Background(), operations.InlineBodyAndParamConflictRequestBody{
		Str: "body test",
	}, "param test")
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res.JSON)
	assert.Equal(t, "param test", res.Res.Args["str"])
	assert.Equal(t, "body test", res.Res.JSON.Str)
}

func TestInlineBodyAndParamNoConflict(t *testing.T) {
	recordTest("flattening-inline-body-and-param-no-conflict")

	s := sdk.New()

	res, err := s.Flattening.InlineBodyAndParamNoConflict(context.Background(), operations.InlineBodyAndParamNoConflictRequestBody{
		BodyStr: "body test",
	}, "param test")
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res.JSON)
	assert.Equal(t, "param test", res.Res.Args["paramStr"])
	assert.Equal(t, "body test", res.Res.JSON.BodyStr)
}

func TestConflictingParams(t *testing.T) {
	recordTest("flattening-conflicting-params")

	s := sdk.New()

	res, err := s.Flattening.ConflictingParams(context.Background(), "pathParam", "queryParam")
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.NotNil(t, res.Res.URL)
	assert.Contains(t, res.Res.URL, "/pathParam?")
	assert.Equal(t, "queryParam", res.Res.Args["str"])
}
