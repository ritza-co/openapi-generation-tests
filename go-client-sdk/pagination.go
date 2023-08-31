// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package sdk

import (
	"bytes"
	"context"
	"fmt"
	"github.com/spyzhov/ajson"
	"io"
	"net/http"
	"openapi/pkg/models/operations"
	"openapi/pkg/models/sdkerrors"
	"openapi/pkg/models/shared"
	"openapi/pkg/utils"
	"strings"
)

// pagination - Endpoints for testing the pagination extension
type pagination struct {
	sdkConfiguration sdkConfiguration
}

func newPagination(sdkConfig sdkConfiguration) *pagination {
	return &pagination{
		sdkConfiguration: sdkConfig,
	}
}

func (s *pagination) PaginationCursorBody(ctx context.Context, request operations.PaginationCursorBodyRequestBody, opts ...operations.Option) (*operations.PaginationCursorBodyResponse, error) {
	o := operations.Options{}
	supportedOptions := []string{
		operations.SupportedOptionServerURL,
	}

	for _, opt := range opts {
		if err := opt(&o, supportedOptions...); err != nil {
			return nil, fmt.Errorf("error applying option: %w", err)
		}
	}
	baseURL := utils.ReplaceParameters(operations.PaginationCursorBodyServerList[0], map[string]string{})
	if o.ServerURL != nil {
		baseURL = *o.ServerURL
	}

	url := strings.TrimSuffix(baseURL, "/") + "/pagination/cursor"

	bodyReader, reqContentType, err := utils.SerializeRequestBody(ctx, request, "Request", "json")
	if err != nil {
		return nil, fmt.Errorf("error serializing request body: %w", err)
	}

	req, err := http.NewRequestWithContext(ctx, "PUT", url, bodyReader)
	if err != nil {
		return nil, fmt.Errorf("error creating request: %w", err)
	}
	req.Header.Set("Accept", "application/json")
	req.Header.Set("x-speakeasy-user-agent", fmt.Sprintf("speakeasy-sdk/%s %s %s %s", s.sdkConfiguration.Language, s.sdkConfiguration.SDKVersion, s.sdkConfiguration.GenVersion, s.sdkConfiguration.OpenAPIDocVersion))

	req.Header.Set("Content-Type", reqContentType)

	client := s.sdkConfiguration.SecurityClient

	httpRes, err := client.Do(req)
	if err != nil {
		return nil, fmt.Errorf("error sending request: %w", err)
	}
	if httpRes == nil {
		return nil, fmt.Errorf("error sending request: no response")
	}

	rawBody, err := io.ReadAll(httpRes.Body)
	if err != nil {
		return nil, fmt.Errorf("error reading response body: %w", err)
	}
	httpRes.Body.Close()
	httpRes.Body = io.NopCloser(bytes.NewBuffer(rawBody))

	contentType := httpRes.Header.Get("Content-Type")

	nextFunc := func() (*operations.PaginationCursorBodyResponse, error) {
		b, err := ajson.Unmarshal(rawBody)
		if err != nil {
			return nil, err
		}
		nC, err := ajson.Eval(b, "$.resultArray[(@.length-1)]")
		if err != nil {
			return nil, err
		}
		var nCVal int64

		if nC.IsNumeric() {
			numVal, err := nC.GetNumeric()
			if err != nil {
				return nil, err
			}
			nCVal = int64(numVal)
		} else {
			val, err := nC.Value()
			if err != nil {
				return nil, err
			}
			if val == nil {
				return nil, nil
			}
			nCVal = val.(int64)
		}

		return s.PaginationCursorBody(
			ctx,
			operations.PaginationCursorBodyRequestBody{
				Cursor: nCVal,
			},
			opts...,
		)
	}

	res := &operations.PaginationCursorBodyResponse{
		StatusCode:  httpRes.StatusCode,
		ContentType: contentType,
		RawResponse: httpRes,
		Next:        nextFunc,
	}
	switch {
	case httpRes.StatusCode == 200:
		switch {
		case utils.MatchContentType(contentType, `application/json`):
			var out *operations.PaginationCursorBodyRes
			if err := utils.UnmarshalJsonFromResponseBody(bytes.NewBuffer(rawBody), &out); err != nil {
				return nil, err
			}

			res.Res = out
		default:
			return nil, sdkerrors.NewSDKError(fmt.Sprintf("unknown content-type received: %s", contentType), httpRes.StatusCode, string(rawBody), httpRes)
		}
	case httpRes.StatusCode >= 400 && httpRes.StatusCode < 500:
		fallthrough
	case httpRes.StatusCode >= 500 && httpRes.StatusCode < 600:
		return nil, sdkerrors.NewSDKError("API error occurred", httpRes.StatusCode, string(rawBody), httpRes)
	}

	return res, nil
}

func (s *pagination) PaginationCursorParams(ctx context.Context, cursor int64, opts ...operations.Option) (*operations.PaginationCursorParamsResponse, error) {
	request := operations.PaginationCursorParamsRequest{
		Cursor: cursor,
	}

	o := operations.Options{}
	supportedOptions := []string{
		operations.SupportedOptionServerURL,
	}

	for _, opt := range opts {
		if err := opt(&o, supportedOptions...); err != nil {
			return nil, fmt.Errorf("error applying option: %w", err)
		}
	}
	baseURL := utils.ReplaceParameters(operations.PaginationCursorParamsServerList[0], map[string]string{})
	if o.ServerURL != nil {
		baseURL = *o.ServerURL
	}

	url := strings.TrimSuffix(baseURL, "/") + "/pagination/cursor"

	req, err := http.NewRequestWithContext(ctx, "GET", url, nil)
	if err != nil {
		return nil, fmt.Errorf("error creating request: %w", err)
	}
	req.Header.Set("Accept", "application/json")
	req.Header.Set("x-speakeasy-user-agent", fmt.Sprintf("speakeasy-sdk/%s %s %s %s", s.sdkConfiguration.Language, s.sdkConfiguration.SDKVersion, s.sdkConfiguration.GenVersion, s.sdkConfiguration.OpenAPIDocVersion))

	if err := utils.PopulateQueryParams(ctx, req, request, s.sdkConfiguration.Globals); err != nil {
		return nil, fmt.Errorf("error populating query params: %w", err)
	}

	client := s.sdkConfiguration.SecurityClient

	httpRes, err := client.Do(req)
	if err != nil {
		return nil, fmt.Errorf("error sending request: %w", err)
	}
	if httpRes == nil {
		return nil, fmt.Errorf("error sending request: no response")
	}

	rawBody, err := io.ReadAll(httpRes.Body)
	if err != nil {
		return nil, fmt.Errorf("error reading response body: %w", err)
	}
	httpRes.Body.Close()
	httpRes.Body = io.NopCloser(bytes.NewBuffer(rawBody))

	contentType := httpRes.Header.Get("Content-Type")

	nextFunc := func() (*operations.PaginationCursorParamsResponse, error) {
		b, err := ajson.Unmarshal(rawBody)
		if err != nil {
			return nil, err
		}
		nC, err := ajson.Eval(b, "$.resultArray[(@.length-1)]")
		if err != nil {
			return nil, err
		}
		var nCVal int64

		if nC.IsNumeric() {
			numVal, err := nC.GetNumeric()
			if err != nil {
				return nil, err
			}
			nCVal = int64(numVal)
		} else {
			val, err := nC.Value()
			if err != nil {
				return nil, err
			}
			if val == nil {
				return nil, nil
			}
			nCVal = val.(int64)
		}

		return s.PaginationCursorParams(
			ctx,
			nCVal,
			opts...,
		)
	}

	res := &operations.PaginationCursorParamsResponse{
		StatusCode:  httpRes.StatusCode,
		ContentType: contentType,
		RawResponse: httpRes,
		Next:        nextFunc,
	}
	switch {
	case httpRes.StatusCode == 200:
		switch {
		case utils.MatchContentType(contentType, `application/json`):
			var out *operations.PaginationCursorParamsRes
			if err := utils.UnmarshalJsonFromResponseBody(bytes.NewBuffer(rawBody), &out); err != nil {
				return nil, err
			}

			res.Res = out
		default:
			return nil, sdkerrors.NewSDKError(fmt.Sprintf("unknown content-type received: %s", contentType), httpRes.StatusCode, string(rawBody), httpRes)
		}
	case httpRes.StatusCode >= 400 && httpRes.StatusCode < 500:
		fallthrough
	case httpRes.StatusCode >= 500 && httpRes.StatusCode < 600:
		return nil, sdkerrors.NewSDKError("API error occurred", httpRes.StatusCode, string(rawBody), httpRes)
	}

	return res, nil
}

func (s *pagination) PaginationLimitOffsetOffsetBody(ctx context.Context, request shared.LimitOffsetConfig, opts ...operations.Option) (*operations.PaginationLimitOffsetOffsetBodyResponse, error) {
	o := operations.Options{}
	supportedOptions := []string{
		operations.SupportedOptionServerURL,
	}

	for _, opt := range opts {
		if err := opt(&o, supportedOptions...); err != nil {
			return nil, fmt.Errorf("error applying option: %w", err)
		}
	}
	baseURL := utils.ReplaceParameters(operations.PaginationLimitOffsetOffsetBodyServerList[0], map[string]string{})
	if o.ServerURL != nil {
		baseURL = *o.ServerURL
	}

	url := strings.TrimSuffix(baseURL, "/") + "/pagination/limitoffset/offset"

	bodyReader, reqContentType, err := utils.SerializeRequestBody(ctx, request, "Request", "json")
	if err != nil {
		return nil, fmt.Errorf("error serializing request body: %w", err)
	}

	req, err := http.NewRequestWithContext(ctx, "PUT", url, bodyReader)
	if err != nil {
		return nil, fmt.Errorf("error creating request: %w", err)
	}
	req.Header.Set("Accept", "application/json")
	req.Header.Set("x-speakeasy-user-agent", fmt.Sprintf("speakeasy-sdk/%s %s %s %s", s.sdkConfiguration.Language, s.sdkConfiguration.SDKVersion, s.sdkConfiguration.GenVersion, s.sdkConfiguration.OpenAPIDocVersion))

	req.Header.Set("Content-Type", reqContentType)

	client := s.sdkConfiguration.SecurityClient

	httpRes, err := client.Do(req)
	if err != nil {
		return nil, fmt.Errorf("error sending request: %w", err)
	}
	if httpRes == nil {
		return nil, fmt.Errorf("error sending request: no response")
	}

	rawBody, err := io.ReadAll(httpRes.Body)
	if err != nil {
		return nil, fmt.Errorf("error reading response body: %w", err)
	}
	httpRes.Body.Close()
	httpRes.Body = io.NopCloser(bytes.NewBuffer(rawBody))

	contentType := httpRes.Header.Get("Content-Type")

	nextFunc := func() (*operations.PaginationLimitOffsetOffsetBodyResponse, error) {
		b, err := ajson.Unmarshal(rawBody)
		if err != nil {
			return nil, err
		}
		oS := int(*request.Offset)
		r, err := ajson.Eval(b, "$.resultArray")
		if err != nil {
			return nil, err
		}
		if !r.IsArray() {
			return nil, nil
		}
		arr, err := r.GetArray()
		if err != nil {
			return nil, err
		}
		if len(arr) == 0 {
			return nil, nil
		}
		l := int(*request.Limit)
		if len(arr) < l {
			return nil, nil
		}
		nOS := int64(oS + len(arr))

		return s.PaginationLimitOffsetOffsetBody(
			ctx,
			shared.LimitOffsetConfig{
				Limit:  request.Limit,
				Offset: &nOS,
				Page:   request.Page,
			},
			opts...,
		)
	}

	res := &operations.PaginationLimitOffsetOffsetBodyResponse{
		StatusCode:  httpRes.StatusCode,
		ContentType: contentType,
		RawResponse: httpRes,
		Next:        nextFunc,
	}
	switch {
	case httpRes.StatusCode == 200:
		switch {
		case utils.MatchContentType(contentType, `application/json`):
			var out *operations.PaginationLimitOffsetOffsetBodyRes
			if err := utils.UnmarshalJsonFromResponseBody(bytes.NewBuffer(rawBody), &out); err != nil {
				return nil, err
			}

			res.Res = out
		default:
			return nil, sdkerrors.NewSDKError(fmt.Sprintf("unknown content-type received: %s", contentType), httpRes.StatusCode, string(rawBody), httpRes)
		}
	case httpRes.StatusCode >= 400 && httpRes.StatusCode < 500:
		fallthrough
	case httpRes.StatusCode >= 500 && httpRes.StatusCode < 600:
		return nil, sdkerrors.NewSDKError("API error occurred", httpRes.StatusCode, string(rawBody), httpRes)
	}

	return res, nil
}

func (s *pagination) PaginationLimitOffsetOffsetParams(ctx context.Context, limit *int64, offset *int64, opts ...operations.Option) (*operations.PaginationLimitOffsetOffsetParamsResponse, error) {
	request := operations.PaginationLimitOffsetOffsetParamsRequest{
		Limit:  limit,
		Offset: offset,
	}

	o := operations.Options{}
	supportedOptions := []string{
		operations.SupportedOptionServerURL,
	}

	for _, opt := range opts {
		if err := opt(&o, supportedOptions...); err != nil {
			return nil, fmt.Errorf("error applying option: %w", err)
		}
	}
	baseURL := utils.ReplaceParameters(operations.PaginationLimitOffsetOffsetParamsServerList[0], map[string]string{})
	if o.ServerURL != nil {
		baseURL = *o.ServerURL
	}

	url := strings.TrimSuffix(baseURL, "/") + "/pagination/limitoffset/offset"

	req, err := http.NewRequestWithContext(ctx, "GET", url, nil)
	if err != nil {
		return nil, fmt.Errorf("error creating request: %w", err)
	}
	req.Header.Set("Accept", "application/json")
	req.Header.Set("x-speakeasy-user-agent", fmt.Sprintf("speakeasy-sdk/%s %s %s %s", s.sdkConfiguration.Language, s.sdkConfiguration.SDKVersion, s.sdkConfiguration.GenVersion, s.sdkConfiguration.OpenAPIDocVersion))

	if err := utils.PopulateQueryParams(ctx, req, request, s.sdkConfiguration.Globals); err != nil {
		return nil, fmt.Errorf("error populating query params: %w", err)
	}

	client := s.sdkConfiguration.SecurityClient

	httpRes, err := client.Do(req)
	if err != nil {
		return nil, fmt.Errorf("error sending request: %w", err)
	}
	if httpRes == nil {
		return nil, fmt.Errorf("error sending request: no response")
	}

	rawBody, err := io.ReadAll(httpRes.Body)
	if err != nil {
		return nil, fmt.Errorf("error reading response body: %w", err)
	}
	httpRes.Body.Close()
	httpRes.Body = io.NopCloser(bytes.NewBuffer(rawBody))

	contentType := httpRes.Header.Get("Content-Type")

	nextFunc := func() (*operations.PaginationLimitOffsetOffsetParamsResponse, error) {
		b, err := ajson.Unmarshal(rawBody)
		if err != nil {
			return nil, err
		}
		oS := int(*offset)
		r, err := ajson.Eval(b, "$.resultArray")
		if err != nil {
			return nil, err
		}
		if !r.IsArray() {
			return nil, nil
		}
		arr, err := r.GetArray()
		if err != nil {
			return nil, err
		}
		if len(arr) == 0 {
			return nil, nil
		}
		l := int(*limit)
		if len(arr) < l {
			return nil, nil
		}
		nOS := int64(oS + len(arr))

		return s.PaginationLimitOffsetOffsetParams(
			ctx,
			limit,
			&nOS,
			opts...,
		)
	}

	res := &operations.PaginationLimitOffsetOffsetParamsResponse{
		StatusCode:  httpRes.StatusCode,
		ContentType: contentType,
		RawResponse: httpRes,
		Next:        nextFunc,
	}
	switch {
	case httpRes.StatusCode == 200:
		switch {
		case utils.MatchContentType(contentType, `application/json`):
			var out *operations.PaginationLimitOffsetOffsetParamsRes
			if err := utils.UnmarshalJsonFromResponseBody(bytes.NewBuffer(rawBody), &out); err != nil {
				return nil, err
			}

			res.Res = out
		default:
			return nil, sdkerrors.NewSDKError(fmt.Sprintf("unknown content-type received: %s", contentType), httpRes.StatusCode, string(rawBody), httpRes)
		}
	case httpRes.StatusCode >= 400 && httpRes.StatusCode < 500:
		fallthrough
	case httpRes.StatusCode >= 500 && httpRes.StatusCode < 600:
		return nil, sdkerrors.NewSDKError("API error occurred", httpRes.StatusCode, string(rawBody), httpRes)
	}

	return res, nil
}

func (s *pagination) PaginationLimitOffsetPageBody(ctx context.Context, request shared.LimitOffsetConfig, opts ...operations.Option) (*operations.PaginationLimitOffsetPageBodyResponse, error) {
	o := operations.Options{}
	supportedOptions := []string{
		operations.SupportedOptionServerURL,
	}

	for _, opt := range opts {
		if err := opt(&o, supportedOptions...); err != nil {
			return nil, fmt.Errorf("error applying option: %w", err)
		}
	}
	baseURL := utils.ReplaceParameters(operations.PaginationLimitOffsetPageBodyServerList[0], map[string]string{})
	if o.ServerURL != nil {
		baseURL = *o.ServerURL
	}

	url := strings.TrimSuffix(baseURL, "/") + "/pagination/limitoffset/page"

	bodyReader, reqContentType, err := utils.SerializeRequestBody(ctx, request, "Request", "json")
	if err != nil {
		return nil, fmt.Errorf("error serializing request body: %w", err)
	}

	req, err := http.NewRequestWithContext(ctx, "PUT", url, bodyReader)
	if err != nil {
		return nil, fmt.Errorf("error creating request: %w", err)
	}
	req.Header.Set("Accept", "application/json")
	req.Header.Set("x-speakeasy-user-agent", fmt.Sprintf("speakeasy-sdk/%s %s %s %s", s.sdkConfiguration.Language, s.sdkConfiguration.SDKVersion, s.sdkConfiguration.GenVersion, s.sdkConfiguration.OpenAPIDocVersion))

	req.Header.Set("Content-Type", reqContentType)

	client := s.sdkConfiguration.SecurityClient

	httpRes, err := client.Do(req)
	if err != nil {
		return nil, fmt.Errorf("error sending request: %w", err)
	}
	if httpRes == nil {
		return nil, fmt.Errorf("error sending request: no response")
	}

	rawBody, err := io.ReadAll(httpRes.Body)
	if err != nil {
		return nil, fmt.Errorf("error reading response body: %w", err)
	}
	httpRes.Body.Close()
	httpRes.Body = io.NopCloser(bytes.NewBuffer(rawBody))

	contentType := httpRes.Header.Get("Content-Type")

	nextFunc := func() (*operations.PaginationLimitOffsetPageBodyResponse, error) {
		b, err := ajson.Unmarshal(rawBody)
		if err != nil {
			return nil, err
		}
		p := *request.Page
		nP := int64(p + 1)
		nPs, err := ajson.Eval(b, "$.numPages")
		if err != nil {
			return nil, err
		}
		if !nPs.IsNumeric() {
			return nil, nil
		}

		nPsVal, err := nPs.GetNumeric()
		if err != nil {
			return nil, err
		}
		// GetNumeric returns as float64
		if int(nPsVal) <= int(p) {
			return nil, nil
		}

		return s.PaginationLimitOffsetPageBody(
			ctx,
			shared.LimitOffsetConfig{
				Limit:  request.Limit,
				Offset: request.Offset,
				Page:   &nP,
			},
			opts...,
		)
	}

	res := &operations.PaginationLimitOffsetPageBodyResponse{
		StatusCode:  httpRes.StatusCode,
		ContentType: contentType,
		RawResponse: httpRes,
		Next:        nextFunc,
	}
	switch {
	case httpRes.StatusCode == 200:
		switch {
		case utils.MatchContentType(contentType, `application/json`):
			var out *operations.PaginationLimitOffsetPageBodyRes
			if err := utils.UnmarshalJsonFromResponseBody(bytes.NewBuffer(rawBody), &out); err != nil {
				return nil, err
			}

			res.Res = out
		default:
			return nil, sdkerrors.NewSDKError(fmt.Sprintf("unknown content-type received: %s", contentType), httpRes.StatusCode, string(rawBody), httpRes)
		}
	case httpRes.StatusCode >= 400 && httpRes.StatusCode < 500:
		fallthrough
	case httpRes.StatusCode >= 500 && httpRes.StatusCode < 600:
		return nil, sdkerrors.NewSDKError("API error occurred", httpRes.StatusCode, string(rawBody), httpRes)
	}

	return res, nil
}

func (s *pagination) PaginationLimitOffsetPageParams(ctx context.Context, page int64, opts ...operations.Option) (*operations.PaginationLimitOffsetPageParamsResponse, error) {
	request := operations.PaginationLimitOffsetPageParamsRequest{
		Page: page,
	}

	o := operations.Options{}
	supportedOptions := []string{
		operations.SupportedOptionServerURL,
	}

	for _, opt := range opts {
		if err := opt(&o, supportedOptions...); err != nil {
			return nil, fmt.Errorf("error applying option: %w", err)
		}
	}
	baseURL := utils.ReplaceParameters(operations.PaginationLimitOffsetPageParamsServerList[0], map[string]string{})
	if o.ServerURL != nil {
		baseURL = *o.ServerURL
	}

	url := strings.TrimSuffix(baseURL, "/") + "/pagination/limitoffset/page"

	req, err := http.NewRequestWithContext(ctx, "GET", url, nil)
	if err != nil {
		return nil, fmt.Errorf("error creating request: %w", err)
	}
	req.Header.Set("Accept", "application/json")
	req.Header.Set("x-speakeasy-user-agent", fmt.Sprintf("speakeasy-sdk/%s %s %s %s", s.sdkConfiguration.Language, s.sdkConfiguration.SDKVersion, s.sdkConfiguration.GenVersion, s.sdkConfiguration.OpenAPIDocVersion))

	if err := utils.PopulateQueryParams(ctx, req, request, s.sdkConfiguration.Globals); err != nil {
		return nil, fmt.Errorf("error populating query params: %w", err)
	}

	client := s.sdkConfiguration.SecurityClient

	httpRes, err := client.Do(req)
	if err != nil {
		return nil, fmt.Errorf("error sending request: %w", err)
	}
	if httpRes == nil {
		return nil, fmt.Errorf("error sending request: no response")
	}

	rawBody, err := io.ReadAll(httpRes.Body)
	if err != nil {
		return nil, fmt.Errorf("error reading response body: %w", err)
	}
	httpRes.Body.Close()
	httpRes.Body = io.NopCloser(bytes.NewBuffer(rawBody))

	contentType := httpRes.Header.Get("Content-Type")

	nextFunc := func() (*operations.PaginationLimitOffsetPageParamsResponse, error) {
		b, err := ajson.Unmarshal(rawBody)
		if err != nil {
			return nil, err
		}
		p := page
		nP := int64(p + 1)
		r, err := ajson.Eval(b, "$.resultArray")
		if err != nil {
			return nil, err
		}
		if !r.IsArray() {
			return nil, nil
		}
		arr, err := r.GetArray()
		if err != nil {
			return nil, err
		}
		if len(arr) == 0 {
			return nil, nil
		}

		return s.PaginationLimitOffsetPageParams(
			ctx,
			nP,
			opts...,
		)
	}

	res := &operations.PaginationLimitOffsetPageParamsResponse{
		StatusCode:  httpRes.StatusCode,
		ContentType: contentType,
		RawResponse: httpRes,
		Next:        nextFunc,
	}
	switch {
	case httpRes.StatusCode == 200:
		switch {
		case utils.MatchContentType(contentType, `application/json`):
			var out *operations.PaginationLimitOffsetPageParamsRes
			if err := utils.UnmarshalJsonFromResponseBody(bytes.NewBuffer(rawBody), &out); err != nil {
				return nil, err
			}

			res.Res = out
		default:
			return nil, sdkerrors.NewSDKError(fmt.Sprintf("unknown content-type received: %s", contentType), httpRes.StatusCode, string(rawBody), httpRes)
		}
	case httpRes.StatusCode >= 400 && httpRes.StatusCode < 500:
		fallthrough
	case httpRes.StatusCode >= 500 && httpRes.StatusCode < 600:
		return nil, sdkerrors.NewSDKError("API error occurred", httpRes.StatusCode, string(rawBody), httpRes)
	}

	return res, nil
}
