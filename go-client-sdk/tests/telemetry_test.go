// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package tests

import (
	"context"
	"net/http"
	"testing"

	sdk "openapi"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestTelemetryUserAgentGet(t *testing.T) {
	recordTest("telemetry-user-agent-get")

	s := sdk.New()

	res, err := s.Telemetry.TelemetryUserAgentGet(context.Background())
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, "speakeasy-sdk/go 1.35.4 2.131.1 0.1.0", res.Res.Headers["X-Speakeasy-User-Agent"])
}

func TestTelemetrySpeakeasyUserAgentGet(t *testing.T) {
	recordTest("telemetry-speakeasy-user-agent-get")

	s := sdk.New()

	userAgent := "test user agent"

	res, err := s.Telemetry.TelemetrySpeakeasyUserAgentGet(context.Background(), userAgent)
	require.NoError(t, err)
	require.NotNil(t, res)
	assert.Equal(t, http.StatusOK, res.StatusCode)
	assert.Equal(t, userAgent, res.Res.Headers["User-Agent"])
	assert.Equal(t, "speakeasy-sdk/go 1.35.4 2.131.1 0.1.0", res.Res.Headers["X-Speakeasy-User-Agent"])
}
