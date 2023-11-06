
//------------------------------------------------------------------------------
// <auto-generated>
// This code was generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
//
// Changes to this file may cause incorrect behavior and will be lost when
// the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Xunit;
using SDK;
using System.Threading.Tasks;

public class TelemetryShould
{
    [Fact]
    public async Task UserAgentGet()
    {
        CommonHelpers.RecordTest("telemetry-user-agent-get");

        var sdk = new SDKSDK();

        var res = await sdk.Telemetry.TelemetryUserAgentGetAsync();

        Assert.Equal(200, res.StatusCode);
        Assert.Equal("speakeasy-sdk/csharp 0.1.2 2.173.0 0.1.0 openapi", res.Res.Headers["X-Speakeasy-User-Agent"]);
    }

    [Fact]
    public async Task SpeakeasyUserAgentGet()
    {
        CommonHelpers.RecordTest("telemetry-speakeasy-user-agent-get");

        var sdk = new SDKSDK();

        var userAgent = "test user agent";

        var res = await sdk.Telemetry.TelemetrySpeakeasyUserAgentGetAsync(userAgent);

        Assert.Equal(200, res.StatusCode);
        Assert.Equal(userAgent, res.Res.Headers["User-Agent"]);
        Assert.Equal("speakeasy-sdk/csharp 0.1.2 2.173.0 0.1.0 openapi", res.Res.Headers["X-Speakeasy-User-Agent"]);
    }
}