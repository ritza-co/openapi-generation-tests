
//------------------------------------------------------------------------------
// <auto-generated>
// This code was generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
//
// Changes to this file may cause incorrect behavior and will be lost when
// the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Xunit;
using Openapi;
using Openapi.Models.Shared;
using Openapi.Models.Operations;
using System.Collections.Generic;
using System.Threading.Tasks;

public class AuthShould
{
    [Fact]
    public async Task BasicAuth()
    {
        CommonHelpers.RecordTest("auth-basic-auth");

        var sdk = new SDK();

        var res = await sdk.AuthNew.BasicAuthNewAsync(
            new BasicAuthNewSecurity() { Username = "testUser", Password = "testPass" },
            new AuthServiceRequestBody()
            {
                BasicAuth = new BasicAuth() { Username = "testUser", Password = "testPass" }
            }
        );

        Assert.NotNull(res);
        Assert.Equal(200, res.StatusCode);
    }

    [Fact]
    public async Task ApiKeyAuthGlobal()
    {
        CommonHelpers.RecordTest("auth-api-key-auth-global");

        var sdk = new SDK(security: new Security() { ApiKeyAuthNew = "test_api_key" });

        var res = await sdk.AuthNew.ApiKeyAuthGlobalNewAsync(
            new AuthServiceRequestBody()
            {
                HeaderAuth = new List<HeaderAuth>()
                {
                    new HeaderAuth()
                    {
                        ExpectedValue = "test_api_key",
                        HeaderName = "x-api-key"
                    }
                }
            }
        );

        Assert.NotNull(res);
        Assert.Equal(200, res.StatusCode);
    }

    [Fact]
    public async Task ApiKeyAuthOperation()
    {
        CommonHelpers.RecordTest("auth-api-key-auth-operation");

        var sdk = new SDK();

        var res = await sdk.Auth.ApiKeyAuthAsync(
            new ApiKeyAuthSecurity() { ApiKeyAuth = "Bearer testToken" }
        );

        Assert.NotNull(res);
        Assert.Equal(200, res.StatusCode);
        Assert.True(res.Token.Authenticated);
        Assert.Equal("testToken", res.Token.Token);
    }

    [Fact]
    public async Task BearerAuthOperationWithPrefix()
    {
        CommonHelpers.RecordTest("auth-bearer-auth-operation-with-prefix");

        var sdk = new SDK();

        var res = await sdk.Auth.BearerAuthAsync(
            new BearerAuthSecurity() { BearerAuth = "Bearer testToken" }
        );

        Assert.NotNull(res);
        Assert.Equal(200, res.StatusCode);
        Assert.True(res.Token.Authenticated);
        Assert.Equal("testToken", res.Token.Token);
    }

    [Fact]
    public async Task BearerAuthOperationWithoutPrefix()
    {
        CommonHelpers.RecordTest("auth-bearer-auth-operation-without-prefix");

        var sdk = new SDK();

        var res = await sdk.Auth.BearerAuthAsync(
            new BearerAuthSecurity() { BearerAuth = "testToken" }
        );

        Assert.NotNull(res);
        Assert.Equal(200, res.StatusCode);
        Assert.True(res.Token.Authenticated);
        Assert.Equal("testToken", res.Token.Token);
    }

    [Fact]
    public async Task Oauth2Auth()
    {
        CommonHelpers.RecordTest("auth-oauth2-auth");

        var sdk = new SDK();

        var res = await sdk.AuthNew.Oauth2AuthNewAsync(
            new Oauth2AuthNewSecurity() { Oauth2 = "Bearer testToken" },
            new AuthServiceRequestBody()
            {
                HeaderAuth = new List<HeaderAuth>()
                {
                    new HeaderAuth()
                    {
                        HeaderName = "Authorization",
                        ExpectedValue = "Bearer testToken"
                    }
                }
            }
        );

        Assert.Equal(200, res.StatusCode);
    }

    [Fact]
    public async Task OpenIdConnectAuth()
    {
        CommonHelpers.RecordTest("auth-open-id-connect-auth");

        var sdk = new SDK();

        var res = await sdk.AuthNew.OpenIdConnectAuthNewAsync(
            new OpenIdConnectAuthNewSecurity() { OpenIdConnect = "Bearer testToken" },
            new AuthServiceRequestBody()
            {
                HeaderAuth = new List<HeaderAuth>()
                {
                    new HeaderAuth()
                    {
                        HeaderName = "Authorization",
                        ExpectedValue = "Bearer testToken"
                    }
                }
            }
        );

        Assert.Equal(200, res.StatusCode);
    }

    [Fact]
    public async Task MultipleSimpleSchemeAuth()
    {
        CommonHelpers.RecordTest("auth-multiple-simple-scheme-auth");

        var sdk = new SDK();

        var res = await sdk.AuthNew.MultipleSimpleSchemeAuthAsync(
            new MultipleSimpleSchemeAuthSecurity()
            {
                ApiKeyAuthNew = "test_api_key",
                Oauth2 = "Bearer testToken"
            },
            new AuthServiceRequestBody()
            {
                HeaderAuth = new List<HeaderAuth>()
                {
                    new HeaderAuth()
                    {
                        HeaderName = "x-api-key",
                        ExpectedValue = "test_api_key"
                    },
                    new HeaderAuth()
                    {
                        HeaderName = "Authorization",
                        ExpectedValue = "Bearer testToken"
                    }
                }
            }
        );

        Assert.Equal(200, res.StatusCode);
    }

    [Fact]
    public async Task MultipleMixedSchemeAuth()
    {
        CommonHelpers.RecordTest("auth-multiple-mixed-scheme-auth");

        var sdk = new SDK();

        var res = await sdk.AuthNew.MultipleMixedSchemeAuthAsync(
            new MultipleMixedSchemeAuthSecurity()
            {
                ApiKeyAuthNew = "test_api_key",
                BasicAuth = new SchemeBasicAuth() { Username = "testUser", Password = "testPass" }
            },
            new AuthServiceRequestBody()
            {
                HeaderAuth = new List<HeaderAuth>()
                {
                    new HeaderAuth()
                    {
                        HeaderName = "x-api-key",
                        ExpectedValue = "test_api_key"
                    }
                },
                BasicAuth = new BasicAuth()
                {
                    Username = "testUser",
                    Password = "testPass"
                }
            }
        );

        Assert.Equal(200, res.StatusCode);
    }

    [Fact]
    public async Task MultipleSimpleOptionsAuthFirstOption()
    {
        CommonHelpers.RecordTest("auth-multiple-simple-options-auth-first-option");

        var sdk = new SDK();

        var res = await sdk.AuthNew.MultipleSimpleOptionsAuthAsync(
            new MultipleSimpleOptionsAuthSecurity { ApiKeyAuthNew = "test_api_key" },
            new AuthServiceRequestBody()
            {
                HeaderAuth = new List<HeaderAuth>()
                {
                    new HeaderAuth()
                    {
                        HeaderName = "x-api-key",
                        ExpectedValue = "test_api_key"
                    }
                }
            }
        );

        Assert.Equal(200, res.StatusCode);
    }

    [Fact]
    public async Task MultipleSimpleOptionsAuthSecondOption()
    {
        CommonHelpers.RecordTest("auth-multiple-simple-options-auth-second-option");

        var sdk = new SDK();

        var res = await sdk.AuthNew.MultipleSimpleOptionsAuthAsync(
            new MultipleSimpleOptionsAuthSecurity { Oauth2 = "Bearer testToken" },
            new AuthServiceRequestBody()
            {
                HeaderAuth = new List<HeaderAuth>()
                {
                    new HeaderAuth()
                    {
                        HeaderName = "Authorization",
                        ExpectedValue = "Bearer testToken"
                    }
                }
            }
        );

        Assert.Equal(200, res.StatusCode);
    }

    [Fact]
    public async Task MultipleMixedOptionsAuthFirstOption()
    {
        CommonHelpers.RecordTest("auth-multiple-mixed-options-auth-first-option");

        var sdk = new SDK();

        var res = await sdk.AuthNew.MultipleMixedOptionsAuthAsync(
            new MultipleMixedOptionsAuthSecurity() { ApiKeyAuthNew = "test_api_key" },
            new AuthServiceRequestBody()
            {
                HeaderAuth = new List<HeaderAuth>()
                {
                    new HeaderAuth()
                    {
                        HeaderName = "x-api-key",
                        ExpectedValue = "test_api_key"
                    }
                }
            }
        );

        Assert.Equal(200, res.StatusCode);
    }

    [Fact]
    public async Task MultipleMixedOptionsAuthSecondOption()
    {
        CommonHelpers.RecordTest("auth-multiple-mixed-options-auth-second-option");

        var sdk = new SDK();

        var res = await sdk.AuthNew.MultipleMixedOptionsAuthAsync(
            new MultipleMixedOptionsAuthSecurity()
            {
                BasicAuth = new SchemeBasicAuth() { Username = "testUser", Password = "testPass" }
            },
            new AuthServiceRequestBody()
            {
                BasicAuth = new BasicAuth()
                {
                    Username = "testUser",
                    Password = "testPass"
                }
            }
        );

        Assert.Equal(200, res.StatusCode);
    }

    [Fact]
    public async Task MultipleOptionsWithSimpleSchemesAuthFirstOption()
    {
        CommonHelpers.RecordTest("auth-multiple-options-with-simple-schemes-auth-first-option");

        var sdk = new SDK();

        var res = await sdk.AuthNew.MultipleOptionsWithSimpleSchemesAuthAsync(
            new MultipleOptionsWithSimpleSchemesAuthSecurity()
            {
                Option1 = new MultipleOptionsWithSimpleSchemesAuthSecurityOption1()
                {
                    ApiKeyAuthNew = "test_api_key",
                    Oauth2 = "Bearer testToken"
                }
            },
            new AuthServiceRequestBody()
            {
                HeaderAuth = new List<HeaderAuth>()
                {
                    new HeaderAuth()
                    {
                        HeaderName = "x-api-key",
                        ExpectedValue = "test_api_key"
                    },
                    new HeaderAuth()
                    {
                        HeaderName = "Authorization",
                        ExpectedValue = "Bearer testToken"
                    }
                }
            }
        );

        Assert.Equal(200, res.StatusCode);
    }

    [Fact]
    public async Task MultipleOptionsWithSimpleSchemesAuthSecondOption()
    {
        CommonHelpers.RecordTest("auth-multiple-options-with-simple-schemes-auth-second-option");

        var sdk = new SDK();

        var res = await sdk.AuthNew.MultipleOptionsWithSimpleSchemesAuthAsync(
            new MultipleOptionsWithSimpleSchemesAuthSecurity()
            {
                Option2 = new MultipleOptionsWithSimpleSchemesAuthSecurityOption2()
                {
                    ApiKeyAuthNew = "test_api_key",
                    OpenIdConnect = "Bearer testToken"
                }
            },
            new AuthServiceRequestBody()
            {
                HeaderAuth = new List<HeaderAuth>()
                {
                    new HeaderAuth()
                    {
                        HeaderName = "x-api-key",
                        ExpectedValue = "test_api_key"
                    },
                    new HeaderAuth()
                    {
                        HeaderName = "Authorization",
                        ExpectedValue = "Bearer testToken"
                    }
                }
            }
        );

        Assert.Equal(200, res.StatusCode);
    }

    [Fact]
    public async Task MultipleOptionsWithMixedSchemesAuthFirstOption()
    {
        CommonHelpers.RecordTest("auth-multiple-options-with-mixed-schemes-auth-first-option");

        var sdk = new SDK();

        var res = await sdk.AuthNew.MultipleOptionsWithMixedSchemesAuthAsync(
            new MultipleOptionsWithMixedSchemesAuthSecurity()
            {
                Option1 = new MultipleOptionsWithMixedSchemesAuthSecurityOption1()
                {
                    ApiKeyAuthNew = "test_api_key",
                    Oauth2 = "Bearer testToken"
                }
            },
            new AuthServiceRequestBody()
            {
                HeaderAuth = new List<HeaderAuth>()
                {
                    new HeaderAuth()
                    {
                        HeaderName = "x-api-key",
                        ExpectedValue = "test_api_key"
                    },
                    new HeaderAuth()
                    {
                        HeaderName = "Authorization",
                        ExpectedValue = "Bearer testToken"
                    }
                }
            }
        );

        Assert.Equal(200, res.StatusCode);
    }

    [Fact]
    public async Task MultipleOptionsWithMixedSchemesAuthSecondOption()
    {
        CommonHelpers.RecordTest("auth-multiple-options-with-mixed-schemes-auth-second-option");

        var sdk = new SDK();

        var res = await sdk.AuthNew.MultipleOptionsWithMixedSchemesAuthAsync(
            new MultipleOptionsWithMixedSchemesAuthSecurity()
            {
                Option2 = new MultipleOptionsWithMixedSchemesAuthSecurityOption2()
                {
                    ApiKeyAuthNew = "test_api_key",
                    BasicAuth = new SchemeBasicAuth()
                    {
                        Username = "testUser",
                        Password = "testPass"
                    }
                }
            },
            new AuthServiceRequestBody()
            {
                HeaderAuth = new List<HeaderAuth>()
                {
                    new HeaderAuth()
                    {
                        HeaderName = "x-api-key",
                        ExpectedValue = "test_api_key"
                    }
                },
                BasicAuth = new BasicAuth()
                {
                    Username = "testUser",
                    Password = "testPass"
                }
            }
        );

        Assert.Equal(200, res.StatusCode);
    }
}
