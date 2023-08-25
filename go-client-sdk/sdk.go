// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package sdk

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
	Security          *shared.Security
	ServerURL         string
	ServerIndex       int
	ServerDefaults    []map[string]string
	Language          string
	OpenAPIDocVersion string
	SDKVersion        string
	GenVersion        string
	Globals           map[string]map[string]map[string]interface{}
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
// https://speakeasyapi.dev/docs/home - Speakeasy Docs
type SDK struct {
	// Auth - Endpoints for testing authentication.
	Auth *auth
	// AuthNew - Endpoints for testing authentication.
	AuthNew *authNew
	// Errors - Endpoints for testing error responses.
	Errors *errors
	First  *first
	// Flattening - Endpoints for testing flattening through request body and parameter combinations.
	Flattening *flattening
	// Generation - Endpoints for purely testing valid generation behavior.
	Generation *generation
	// Globals - Endpoints for testing global parameters.
	Globals *globals
	// Pagination - Endpoints for testing the pagination extension
	Pagination *pagination
	// Parameters - Endpoints for testing parameters.
	Parameters *parameters
	// RequestBodies - Endpoints for testing request bodies.
	RequestBodies *requestBodies
	Resource      *resource
	// ResponseBodies - Endpoints for testing response bodies.
	ResponseBodies *responseBodies
	// Retries - Endpoints for testing retries.
	Retries *retries
	Second  *second
	// Servers - Endpoints for testing servers.
	Servers *servers
	// Telemetry - Endpoints for testing telemetry.
	Telemetry *telemetry
	// Unions - Endpoints for testing union types.
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

// WithHostname allows setting the $name variable for url substitution
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

// WithPort allows setting the $name variable for url substitution
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

// WithSomething allows setting the $name variable for url substitution
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

// WithSecurity configures the SDK to use the provided security details
func WithSecurity(security shared.Security) SDKOption {
	return func(sdk *SDK) {
		sdk.sdkConfiguration.Security = &security
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

// New creates a new instance of the SDK with the provided options
func New(opts ...SDKOption) *SDK {
	sdk := &SDK{
		sdkConfiguration: sdkConfiguration{
			Language:          "go",
			OpenAPIDocVersion: "0.1.0",
			SDKVersion:        "1.27.1",
			GenVersion:        "2.87.1",
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

	sdk.Errors = newErrors(sdk.sdkConfiguration)

	sdk.First = newFirst(sdk.sdkConfiguration)

	sdk.Flattening = newFlattening(sdk.sdkConfiguration)

	sdk.Generation = newGeneration(sdk.sdkConfiguration)

	sdk.Globals = newGlobals(sdk.sdkConfiguration)

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

	bodyReader, reqContentType, err := utils.SerializeRequestBody(ctx, request, "Request", "string")
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
		default:
			return nil, sdkerrors.NewSDKError(fmt.Sprintf("unknown content-type received: %s", contentType), httpRes.StatusCode, string(rawBody), httpRes)
		}
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
	req.Header.Set("x-speakeasy-user-agent", fmt.Sprintf("speakeasy-sdk/%s %s %s %s", s.sdkConfiguration.Language, s.sdkConfiguration.SDKVersion, s.sdkConfiguration.GenVersion, s.sdkConfiguration.OpenAPIDocVersion))

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
		default:
			return nil, sdkerrors.NewSDKError(fmt.Sprintf("unknown content-type received: %s", contentType), httpRes.StatusCode, string(rawBody), httpRes)
		}
	}

	return res, nil
}
