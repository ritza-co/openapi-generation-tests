// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package sdk

import (
	"bytes"
	"context"
	"fmt"
	"io"
	"net/http"
	"openapi/pkg/models/operations"
	"openapi/pkg/utils"
	"strings"
)

// telemetry - Endpoints for testing telemetry.
type telemetry struct {
	defaultClient  HTTPClient
	securityClient HTTPClient
	serverURL      string
	language       string
	sdkVersion     string
	genVersion     string
	globals        map[string]map[string]map[string]interface{}
}

func newTelemetry(defaultClient, securityClient HTTPClient, serverURL, language, sdkVersion, genVersion string, globals map[string]map[string]map[string]interface{}) *telemetry {
	return &telemetry{
		defaultClient:  defaultClient,
		securityClient: securityClient,
		serverURL:      serverURL,
		language:       language,
		sdkVersion:     sdkVersion,
		genVersion:     genVersion,
		globals:        globals,
	}
}

func (s *telemetry) TelemetrySpeakeasyUserAgentGet(ctx context.Context, userAgent string) (*operations.TelemetrySpeakeasyUserAgentGetResponse, error) {
	request := operations.TelemetrySpeakeasyUserAgentGetRequest{
		UserAgent: userAgent,
	}

	baseURL := s.serverURL
	url := strings.TrimSuffix(baseURL, "/") + "/anything/telemetry/speakeasy-user-agent"

	req, err := http.NewRequestWithContext(ctx, "GET", url, nil)
	if err != nil {
		return nil, fmt.Errorf("error creating request: %w", err)
	}
	req.Header.Set("Accept", "application/json")
	req.Header.Set("x-speakeasy-user-agent", fmt.Sprintf("speakeasy-sdk/%s %s %s", s.language, s.sdkVersion, s.genVersion))

	utils.PopulateHeaders(ctx, req, request)

	client := s.securityClient

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

	res := &operations.TelemetrySpeakeasyUserAgentGetResponse{
		StatusCode:  httpRes.StatusCode,
		ContentType: contentType,
		RawResponse: httpRes,
	}
	switch {
	case httpRes.StatusCode == 200:
		switch {
		case utils.MatchContentType(contentType, `application/json`):
			var out *operations.TelemetrySpeakeasyUserAgentGetRes
			if err := utils.UnmarshalJsonFromResponseBody(bytes.NewBuffer(rawBody), &out); err != nil {
				return nil, err
			}

			res.Res = out
		}
	}

	return res, nil
}

func (s *telemetry) TelemetryUserAgentGet(ctx context.Context) (*operations.TelemetryUserAgentGetResponse, error) {
	baseURL := s.serverURL
	url := strings.TrimSuffix(baseURL, "/") + "/anything/telemetry/user-agent"

	req, err := http.NewRequestWithContext(ctx, "GET", url, nil)
	if err != nil {
		return nil, fmt.Errorf("error creating request: %w", err)
	}
	req.Header.Set("Accept", "application/json")
	req.Header.Set("x-speakeasy-user-agent", fmt.Sprintf("speakeasy-sdk/%s %s %s", s.language, s.sdkVersion, s.genVersion))

	client := s.securityClient

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

	res := &operations.TelemetryUserAgentGetResponse{
		StatusCode:  httpRes.StatusCode,
		ContentType: contentType,
		RawResponse: httpRes,
	}
	switch {
	case httpRes.StatusCode == 200:
		switch {
		case utils.MatchContentType(contentType, `application/json`):
			var out *operations.TelemetryUserAgentGetRes
			if err := utils.UnmarshalJsonFromResponseBody(bytes.NewBuffer(rawBody), &out); err != nil {
				return nil, err
			}

			res.Res = out
		}
	}

	return res, nil
}
