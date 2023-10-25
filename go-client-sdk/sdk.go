// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package openapi

import (
	"bytes"
	"context"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"openapi/pkg/models/operations"
	"openapi/pkg/models/sdkerrors"
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
	// A server url with templated variables.
	"http://localhost:35123/anything/{something}",
	// A server url with templated variables (including the protocol).
	"{protocol}://{hostname}:{port}",
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

type sdkConfiguration struct {
	DefaultClient     HTTPClient
	SecurityClient    HTTPClient
	Security          func(context.Context) (interface{}, error)
	ServerURL         string
	ServerIndex       int
	ServerDefaults    []map[string]string
	Language          string
	OpenAPIDocVersion string
	SDKVersion        string
	GenVersion        string
	UserAgent         string
	Globals           map[string]map[string]map[string]interface{}
	RetryConfig       *utils.RetryConfig
}

func (c *sdkConfiguration) GetServerDetails() (string, map[string]string) {
	if c.ServerURL != "" {
		return c.ServerURL, nil
	}

	return ServerList[c.ServerIndex], c.ServerDefaults[c.ServerIndex]
}

// SDK - Test: Test Summary
// Some test description.
// About our test document.
//
// https://speakeasyapi.dev/docs/home - Speakeasy Docs
type SDK struct {
	// Endpoints for testing authentication.
	Auth *auth
	// Endpoints for testing authentication.
	AuthNew *authNew
	// Testing for documentation extensions in Go.
	Documentation *documentation
	// Endpoints for testing error responses.
	Errors *errors
	First  *first
	// Endpoints for testing flattening through request body and parameter combinations.
	Flattening *flattening
	// Endpoints for purely testing valid generation behavior.
	Generation *generation
	// Endpoints for testing global parameters.
	Globals *globals
	Nest    *nest
	Nested  *nested
	// Endpoints for testing the pagination extension
	Pagination *pagination
	// Endpoints for testing parameters.
	Parameters *parameters
	// Endpoints for testing request bodies.
	RequestBodies *requestBodies
	Resource      *resource
	// Endpoints for testing response bodies.
	ResponseBodies *responseBodies
	// Endpoints for testing retries.
	Retries *retries
	Second  *second
	// Endpoints for testing servers.
	Servers *servers
	// Endpoints for testing telemetry.
	Telemetry *telemetry
	// Endpoints for testing union types.
	Unions *unions

	sdkConfiguration sdkConfiguration
}

type SDKOption func(*SDK)

// WithServerURL allows the overriding of the default server URL
func WithServerURL(serverURL string) SDKOption {
	return func(sdk *SDK) {
		sdk.sdkConfiguration.ServerURL = serverURL
	}
}

// WithTemplatedServerURL allows the overriding of the default server URL with a templated URL populated with the provided parameters
func WithTemplatedServerURL(serverURL string, params map[string]string) SDKOption {
	return func(sdk *SDK) {
		if params != nil {
			serverURL = utils.ReplaceParameters(serverURL, params)
		}

		sdk.sdkConfiguration.ServerURL = serverURL
	}
}

// WithServerIndex allows the overriding of the default server by index
func WithServerIndex(serverIndex int) SDKOption {
	return func(sdk *SDK) {
		if serverIndex < 0 || serverIndex >= len(ServerList) {
			panic(fmt.Errorf("server index %d out of range", serverIndex))
		}

		sdk.sdkConfiguration.ServerIndex = serverIndex
	}
}

// WithHostname allows setting the hostname variable for url substitution
func WithHostname(hostname string) SDKOption {
	return func(sdk *SDK) {
		for idx := range sdk.sdkConfiguration.ServerDefaults {
			if _, ok := sdk.sdkConfiguration.ServerDefaults[idx]["hostname"]; !ok {
				continue
			}

			sdk.sdkConfiguration.ServerDefaults[idx]["hostname"] = fmt.Sprintf("%v", hostname)
		}
	}
}

// WithPort allows setting the port variable for url substitution
func WithPort(port string) SDKOption {
	return func(sdk *SDK) {
		for idx := range sdk.sdkConfiguration.ServerDefaults {
			if _, ok := sdk.sdkConfiguration.ServerDefaults[idx]["port"]; !ok {
				continue
			}

			sdk.sdkConfiguration.ServerDefaults[idx]["port"] = fmt.Sprintf("%v", port)
		}
	}
}

// WithProtocol allows setting the protocol variable for url substitution
func WithProtocol(protocol string) SDKOption {
	return func(sdk *SDK) {
		for idx := range sdk.sdkConfiguration.ServerDefaults {
			if _, ok := sdk.sdkConfiguration.ServerDefaults[idx]["protocol"]; !ok {
				continue
			}

			sdk.sdkConfiguration.ServerDefaults[idx]["protocol"] = fmt.Sprintf("%v", protocol)
		}
	}
}

// ServerSomething - Something is a variable for changing the root path
type ServerSomething string

const (
	ServerSomethingSomething          ServerSomething = "something"
	ServerSomethingSomethingElse      ServerSomething = "somethingElse"
	ServerSomethingSomethingElseAgain ServerSomething = "somethingElseAgain"
)

func (e ServerSomething) ToPointer() *ServerSomething {
	return &e
}

func (e *ServerSomething) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "something":
		fallthrough
	case "somethingElse":
		fallthrough
	case "somethingElseAgain":
		*e = ServerSomething(v)
		return nil
	default:
		return fmt.Errorf("invalid value for ServerSomething: %v", v)
	}
}

// WithSomething allows setting the something variable for url substitution
func WithSomething(something ServerSomething) SDKOption {
	return func(sdk *SDK) {
		for idx := range sdk.sdkConfiguration.ServerDefaults {
			if _, ok := sdk.sdkConfiguration.ServerDefaults[idx]["something"]; !ok {
				continue
			}

			sdk.sdkConfiguration.ServerDefaults[idx]["something"] = fmt.Sprintf("%v", something)
		}
	}
}

// WithClient allows the overriding of the default HTTP client used by the SDK
func WithClient(client HTTPClient) SDKOption {
	return func(sdk *SDK) {
		sdk.sdkConfiguration.DefaultClient = client
	}
}

func withSecurity(security interface{}) func(context.Context) (interface{}, error) {
	return func(context.Context) (interface{}, error) {
		return &security, nil
	}
}

// WithSecurity configures the SDK to use the provided security details

func WithSecurity(security shared.Security) SDKOption {
	return func(sdk *SDK) {
		sdk.sdkConfiguration.Security = withSecurity(security)
	}
}

// WithSecuritySource configures the SDK to invoke the Security Source function on each method call to determine authentication
func WithSecuritySource(security func(context.Context) (shared.Security, error)) SDKOption {
	return func(sdk *SDK) {
		sdk.sdkConfiguration.Security = func(ctx context.Context) (interface{}, error) {
			return security(ctx)
		}
	}
}

// WithGlobalPathParam allows setting the GlobalPathParam parameter for all supported operations
func WithGlobalPathParam(globalPathParam int64) SDKOption {
	return func(sdk *SDK) {
		if _, ok := sdk.sdkConfiguration.Globals["parameters"]["pathParam"]; !ok {
			sdk.sdkConfiguration.Globals["parameters"]["pathParam"] = map[string]interface{}{}
		}

		sdk.sdkConfiguration.Globals["parameters"]["pathParam"]["GlobalPathParam"] = globalPathParam
	}
}

// WithGlobalQueryParam allows setting the GlobalQueryParam parameter for all supported operations
func WithGlobalQueryParam(globalQueryParam string) SDKOption {
	return func(sdk *SDK) {
		if _, ok := sdk.sdkConfiguration.Globals["parameters"]["queryParam"]; !ok {
			sdk.sdkConfiguration.Globals["parameters"]["queryParam"] = map[string]interface{}{}
		}

		sdk.sdkConfiguration.Globals["parameters"]["queryParam"]["GlobalQueryParam"] = globalQueryParam
	}
}

func WithRetryConfig(retryConfig utils.RetryConfig) SDKOption {
	return func(sdk *SDK) {
		sdk.sdkConfiguration.RetryConfig = &retryConfig
	}
}

// New creates a new instance of the SDK with the provided options
func New(opts ...SDKOption) *SDK {
	sdk := &SDK{
		sdkConfiguration: sdkConfiguration{
			Language:          "go",
			OpenAPIDocVersion: "0.1.0",
			SDKVersion:        "1.39.0",
			GenVersion:        "2.171.0",
			UserAgent:         "speakeasy-sdk/go 1.39.0 2.171.0 0.1.0 openapi",
			Globals: map[string]map[string]map[string]interface{}{
				"parameters": {},
			},
			ServerDefaults: []map[string]string{
				{},
				{},
				{
					"hostname": "localhost",
					"port":     "35123",
				},
				{
					"something": "something",
				},
				{
					"hostname": "localhost",
					"port":     "35123",
					"protocol": "http",
				},
			},
		},
	}
	for _, opt := range opts {
		opt(sdk)
	}

	// Use WithClient to override the default client if you would like to customize the timeout
	if sdk.sdkConfiguration.DefaultClient == nil {
		sdk.sdkConfiguration.DefaultClient = &http.Client{Timeout: 60 * time.Second}
	}
	if sdk.sdkConfiguration.SecurityClient == nil {
		if sdk.sdkConfiguration.Security != nil {
			sdk.sdkConfiguration.SecurityClient = utils.ConfigureSecurityClient(sdk.sdkConfiguration.DefaultClient, sdk.sdkConfiguration.Security)
		} else {
			sdk.sdkConfiguration.SecurityClient = sdk.sdkConfiguration.DefaultClient
		}
	}

	sdk.Auth = newAuth(sdk.sdkConfiguration)

	sdk.AuthNew = newAuthNew(sdk.sdkConfiguration)

	sdk.Documentation = newDocumentation(sdk.sdkConfiguration)

	sdk.Errors = newErrors(sdk.sdkConfiguration)

	sdk.First = newFirst(sdk.sdkConfiguration)

	sdk.Flattening = newFlattening(sdk.sdkConfiguration)

	sdk.Generation = newGeneration(sdk.sdkConfiguration)

	sdk.Globals = newGlobals(sdk.sdkConfiguration)

	sdk.Nest = newNest(sdk.sdkConfiguration)

	sdk.Nested = newNested(sdk.sdkConfiguration)

	sdk.Pagination = newPagination(sdk.sdkConfiguration)

	sdk.Parameters = newParameters(sdk.sdkConfiguration)

	sdk.RequestBodies = newRequestBodies(sdk.sdkConfiguration)

	sdk.Resource = newResource(sdk.sdkConfiguration)

	sdk.ResponseBodies = newResponseBodies(sdk.sdkConfiguration)

	sdk.Retries = newRetries(sdk.sdkConfiguration)

	sdk.Second = newSecond(sdk.sdkConfiguration)

	sdk.Servers = newServers(sdk.sdkConfiguration)

	sdk.Telemetry = newTelemetry(sdk.sdkConfiguration)

	sdk.Unions = newUnions(sdk.sdkConfiguration)

	return sdk
}

func (s *SDK) PutAnythingIgnoredGeneration(ctx context.Context, request string) (*operations.PutAnythingIgnoredGenerationResponse, error) {
	baseURL := utils.ReplaceParameters(s.sdkConfiguration.GetServerDetails())
	url := strings.TrimSuffix(baseURL, "/") + "/anything/ignoredGeneration"

	bodyReader, reqContentType, err := utils.SerializeRequestBody(ctx, request, false, false, "Request", "json", `request:"mediaType=application/json"`)
	if err != nil {
		return nil, fmt.Errorf("error serializing request body: %w", err)
	}
	if bodyReader == nil {
		return nil, fmt.Errorf("request body is required")
	}

	req, err := http.NewRequestWithContext(ctx, "PUT", url, bodyReader)
	if err != nil {
		return nil, fmt.Errorf("error creating request: %w", err)
	}
	req.Header.Set("Accept", "application/json")
	req.Header.Set("x-speakeasy-user-agent", s.sdkConfiguration.UserAgent)

	req.Header.Set("Content-Type", reqContentType)

	client := s.sdkConfiguration.SecurityClient

	httpRes, err := client.Do(req)
	if err != nil {
		return nil, fmt.Errorf("error sending request: %w", err)
	}
	if httpRes == nil {
		return nil, fmt.Errorf("error sending request: no response")
	}

	contentType := httpRes.Header.Get("Content-Type")

	res := &operations.PutAnythingIgnoredGenerationResponse{
		StatusCode:  httpRes.StatusCode,
		ContentType: contentType,
		RawResponse: httpRes,
	}

	rawBody, err := io.ReadAll(httpRes.Body)
	if err != nil {
		return nil, fmt.Errorf("error reading response body: %w", err)
	}
	httpRes.Body.Close()
	httpRes.Body = io.NopCloser(bytes.NewBuffer(rawBody))
	switch {
	case httpRes.StatusCode == 200:
		switch {
		case utils.MatchContentType(contentType, `application/json`):
			var out operations.PutAnythingIgnoredGeneration200ApplicationJSON
			if err := utils.UnmarshalJsonFromResponseBody(bytes.NewBuffer(rawBody), &out, ""); err != nil {
				return nil, err
			}

			res.PutAnythingIgnoredGeneration200ApplicationJSONObject = &out
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

func (s *SDK) ResponseBodyJSONGet(ctx context.Context) (*operations.ResponseBodyJSONGetResponse, error) {
	baseURL := utils.ReplaceParameters(s.sdkConfiguration.GetServerDetails())
	url := strings.TrimSuffix(baseURL, "/") + "/json"

	req, err := http.NewRequestWithContext(ctx, "GET", url, nil)
	if err != nil {
		return nil, fmt.Errorf("error creating request: %w", err)
	}
	req.Header.Set("Accept", "application/json")
	req.Header.Set("x-speakeasy-user-agent", s.sdkConfiguration.UserAgent)

	client := s.sdkConfiguration.SecurityClient

	httpRes, err := client.Do(req)
	if err != nil {
		return nil, fmt.Errorf("error sending request: %w", err)
	}
	if httpRes == nil {
		return nil, fmt.Errorf("error sending request: no response")
	}

	contentType := httpRes.Header.Get("Content-Type")

	res := &operations.ResponseBodyJSONGetResponse{
		StatusCode:  httpRes.StatusCode,
		ContentType: contentType,
		RawResponse: httpRes,
	}

	rawBody, err := io.ReadAll(httpRes.Body)
	if err != nil {
		return nil, fmt.Errorf("error reading response body: %w", err)
	}
	httpRes.Body.Close()
	httpRes.Body = io.NopCloser(bytes.NewBuffer(rawBody))
	switch {
	case httpRes.StatusCode == 200:
		switch {
		case utils.MatchContentType(contentType, `application/json`):
			var out shared.HTTPBinSimpleJSONObject
			if err := utils.UnmarshalJsonFromResponseBody(bytes.NewBuffer(rawBody), &out, ""); err != nil {
				return nil, err
			}

			res.HTTPBinSimpleJSONObject = &out
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
