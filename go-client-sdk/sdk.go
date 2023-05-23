// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package sdk

import (
	"bytes"
	"context"
	"fmt"
	"io"
	"net/http"
	"openapi/pkg/models/operations"
	"openapi/pkg/models/shared"
	"openapi/pkg/utils"
	"strings"
	"time"
)

// ServerList contains the list of servers available to the SDK
var ServerList = []string{
	// The default server.
	"http://localhost:35123",
	// A server url to a non-existent server.
	"http://broken",
	// A server url with templated variables.
	"http://{hostname}:{port}",
}

// HTTPClient provides an interface for suplying the SDK with a custom HTTP client
type HTTPClient interface {
	Do(req *http.Request) (*http.Response, error)
}

// String provides a helper function to return a pointer to a string
func String(s string) *string { return &s }

// Bool provides a helper function to return a pointer to a bool
func Bool(b bool) *bool { return &b }

// Int provides a helper function to return a pointer to an int
func Int(i int) *int { return &i }

// Int64 provides a helper function to return a pointer to an int64
func Int64(i int64) *int64 { return &i }

// Float32 provides a helper function to return a pointer to a float32
func Float32(f float32) *float32 { return &f }

// Float64 provides a helper function to return a pointer to a float64
func Float64(f float64) *float64 { return &f }

// SDK - Test Summary
// Some test description.
// About our test document.
// https://speakeasyapi.dev/docs/home - Speakeasy Docs
type SDK struct {
	// Auth - Endpoints for testing authentication.
	Auth *auth
	// AuthNew - Endpoints for testing authentication.
	AuthNew *authNew
	// Errors - Endpoints for testing error responses.
	Errors *errors
	// Flattening - Endpoints for testing flattening through request body and parameter combinations.
	Flattening *flattening
	// Generation - Endpoints for purely testing valid generation behavior.
	Generation *generation
	// Globals - Endpoints for testing global parameters.
	Globals *globals
	// Parameters - Endpoints for testing parameters.
	Parameters *parameters
	// RequestBodies - Endpoints for testing request bodies.
	RequestBodies *requestBodies
	// ResponseBodies - Endpoints for testing response bodies.
	ResponseBodies *responseBodies
	// Servers - Endpoints for testing servers.
	Servers *servers
	// Telemetry - Endpoints for testing telemetry.
	Telemetry *telemetry
	// Unions - Endpoints for testing union types.
	Unions *unions

	// Non-idiomatic field names below are to namespace fields from the fields names above to avoid name conflicts
	_defaultClient  HTTPClient
	_securityClient HTTPClient
	_security       *shared.Security
	_serverURL      string
	_language       string
	_sdkVersion     string
	_genVersion     string
	_globals        map[string]map[string]map[string]interface{}
}

type SDKOption func(*SDK)

// WithServerURL allows the overriding of the default server URL
func WithServerURL(serverURL string) SDKOption {
	return func(sdk *SDK) {
		sdk._serverURL = serverURL
	}
}

// WithTemplatedServerURL allows the overriding of the default server URL with a templated URL populated with the provided parameters
func WithTemplatedServerURL(serverURL string, params map[string]string) SDKOption {
	return func(sdk *SDK) {
		if params != nil {
			serverURL = utils.ReplaceParameters(serverURL, params)
		}

		sdk._serverURL = serverURL
	}
}

// WithClient allows the overriding of the default HTTP client used by the SDK
func WithClient(client HTTPClient) SDKOption {
	return func(sdk *SDK) {
		sdk._defaultClient = client
	}
}

// WithSecurity configures the SDK to use the provided security details
func WithSecurity(security shared.Security) SDKOption {
	return func(sdk *SDK) {
		sdk._security = &security
	}
}

// WithGlobalPathParam allows setting the GlobalPathParam parameter for all supported operations
func WithGlobalPathParam(globalPathParam int64) SDKOption {
	return func(sdk *SDK) {
		if _, ok := sdk._globals["parameters"]["pathParam"]; !ok {
			sdk._globals["parameters"]["pathParam"] = map[string]interface{}{}
		}

		sdk._globals["parameters"]["pathParam"]["GlobalPathParam"] = globalPathParam
	}
}

// WithGlobalQueryParam allows setting the GlobalQueryParam parameter for all supported operations
func WithGlobalQueryParam(globalQueryParam string) SDKOption {
	return func(sdk *SDK) {
		if _, ok := sdk._globals["parameters"]["queryParam"]; !ok {
			sdk._globals["parameters"]["queryParam"] = map[string]interface{}{}
		}

		sdk._globals["parameters"]["queryParam"]["GlobalQueryParam"] = globalQueryParam
	}
}

// New creates a new instance of the SDK with the provided options
func New(opts ...SDKOption) *SDK {
	sdk := &SDK{
		_language:   "go",
		_sdkVersion: "1.3.0",
		_genVersion: "2.32.2",

		_globals: map[string]map[string]map[string]interface{}{
			"parameters": {},
		},
	}
	for _, opt := range opts {
		opt(sdk)
	}

	// Use WithClient to override the default client if you would like to customize the timeout
	if sdk._defaultClient == nil {
		sdk._defaultClient = &http.Client{Timeout: 60 * time.Second}
	}
	if sdk._securityClient == nil {
		if sdk._security != nil {
			sdk._securityClient = utils.ConfigureSecurityClient(sdk._defaultClient, sdk._security)
		} else {
			sdk._securityClient = sdk._defaultClient
		}
	}

	if sdk._serverURL == "" {
		sdk._serverURL = ServerList[0]
	}

	sdk.Auth = newAuth(
		sdk._defaultClient,
		sdk._securityClient,
		sdk._serverURL,
		sdk._language,
		sdk._sdkVersion,
		sdk._genVersion,
		sdk._globals,
	)

	sdk.AuthNew = newAuthNew(
		sdk._defaultClient,
		sdk._securityClient,
		sdk._serverURL,
		sdk._language,
		sdk._sdkVersion,
		sdk._genVersion,
		sdk._globals,
	)

	sdk.Errors = newErrors(
		sdk._defaultClient,
		sdk._securityClient,
		sdk._serverURL,
		sdk._language,
		sdk._sdkVersion,
		sdk._genVersion,
		sdk._globals,
	)

	sdk.Flattening = newFlattening(
		sdk._defaultClient,
		sdk._securityClient,
		sdk._serverURL,
		sdk._language,
		sdk._sdkVersion,
		sdk._genVersion,
		sdk._globals,
	)

	sdk.Generation = newGeneration(
		sdk._defaultClient,
		sdk._securityClient,
		sdk._serverURL,
		sdk._language,
		sdk._sdkVersion,
		sdk._genVersion,
		sdk._globals,
	)

	sdk.Globals = newGlobals(
		sdk._defaultClient,
		sdk._securityClient,
		sdk._serverURL,
		sdk._language,
		sdk._sdkVersion,
		sdk._genVersion,
		sdk._globals,
	)

	sdk.Parameters = newParameters(
		sdk._defaultClient,
		sdk._securityClient,
		sdk._serverURL,
		sdk._language,
		sdk._sdkVersion,
		sdk._genVersion,
		sdk._globals,
	)

	sdk.RequestBodies = newRequestBodies(
		sdk._defaultClient,
		sdk._securityClient,
		sdk._serverURL,
		sdk._language,
		sdk._sdkVersion,
		sdk._genVersion,
		sdk._globals,
	)

	sdk.ResponseBodies = newResponseBodies(
		sdk._defaultClient,
		sdk._securityClient,
		sdk._serverURL,
		sdk._language,
		sdk._sdkVersion,
		sdk._genVersion,
		sdk._globals,
	)

	sdk.Servers = newServers(
		sdk._defaultClient,
		sdk._securityClient,
		sdk._serverURL,
		sdk._language,
		sdk._sdkVersion,
		sdk._genVersion,
		sdk._globals,
	)

	sdk.Telemetry = newTelemetry(
		sdk._defaultClient,
		sdk._securityClient,
		sdk._serverURL,
		sdk._language,
		sdk._sdkVersion,
		sdk._genVersion,
		sdk._globals,
	)

	sdk.Unions = newUnions(
		sdk._defaultClient,
		sdk._securityClient,
		sdk._serverURL,
		sdk._language,
		sdk._sdkVersion,
		sdk._genVersion,
		sdk._globals,
	)

	return sdk
}

func (s *SDK) PutAnythingIgnoredGeneration(ctx context.Context, request string) (*operations.PutAnythingIgnoredGenerationResponse, error) {
	baseURL := s._serverURL
	url := strings.TrimSuffix(baseURL, "/") + "/anything/ignoredGeneration"

	bodyReader, reqContentType, err := utils.SerializeRequestBody(ctx, request, "Request", "string")
	if err != nil {
		return nil, fmt.Errorf("error serializing request body: %w", err)
	}

	req, err := http.NewRequestWithContext(ctx, "PUT", url, bodyReader)
	if err != nil {
		return nil, fmt.Errorf("error creating request: %w", err)
	}
	req.Header.Set("Accept", "application/json")
	req.Header.Set("x-speakeasy-user-agent", fmt.Sprintf("speakeasy-sdk/%s %s %s", s._language, s._sdkVersion, s._genVersion))

	req.Header.Set("Content-Type", reqContentType)

	client := s._securityClient

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

	res := &operations.PutAnythingIgnoredGenerationResponse{
		StatusCode:  httpRes.StatusCode,
		ContentType: contentType,
		RawResponse: httpRes,
	}
	switch {
	case httpRes.StatusCode == 200:
		switch {
		case utils.MatchContentType(contentType, `application/json`):
			var out *operations.PutAnythingIgnoredGeneration200ApplicationJSON
			if err := utils.UnmarshalJsonFromResponseBody(bytes.NewBuffer(rawBody), &out); err != nil {
				return nil, err
			}

			res.PutAnythingIgnoredGeneration200ApplicationJSONObject = out
		}
	}

	return res, nil
}

func (s *SDK) ResponseBodyJSONGet(ctx context.Context) (*operations.ResponseBodyJSONGetResponse, error) {
	baseURL := s._serverURL
	url := strings.TrimSuffix(baseURL, "/") + "/json"

	req, err := http.NewRequestWithContext(ctx, "GET", url, nil)
	if err != nil {
		return nil, fmt.Errorf("error creating request: %w", err)
	}
	req.Header.Set("Accept", "application/json")
	req.Header.Set("x-speakeasy-user-agent", fmt.Sprintf("speakeasy-sdk/%s %s %s", s._language, s._sdkVersion, s._genVersion))

	client := s._securityClient

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

	res := &operations.ResponseBodyJSONGetResponse{
		StatusCode:  httpRes.StatusCode,
		ContentType: contentType,
		RawResponse: httpRes,
	}
	switch {
	case httpRes.StatusCode == 200:
		switch {
		case utils.MatchContentType(contentType, `application/json`):
			var out *shared.HTTPBinSimpleJSONObject
			if err := utils.UnmarshalJsonFromResponseBody(bytes.NewBuffer(rawBody), &out); err != nil {
				return nil, err
			}

			res.HTTPBinSimpleJSONObject = out
		}
	}

	return res, nil
}
