<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

<?php

declare(strict_types=1);
require_once 'vendor/autoload.php';


use OpenAPI\OpenAPI\Tests\CommonHelpers;
use PHPUnit\Framework\TestCase;

final class AuthTest extends TestCase
{
    public function testDummy(): void
    {
        $this->assertEquals(true, true);
    }
    // TODO:
    // public function testGlobalSecurityFlattening(): void
    // {
	// recordTest("auth-global-security-flattening")

	// s := sdk.New(sdk.WithSecurity("Bearer testToken"))

	// res, err := s.Auth.APIKeyAuthGlobal(context.Background())
	// require.NoError(t, err)
	// require.NotNil(t, res)
	// assert.Equal(t, http.StatusOK, res.StatusCode)
	// assert.True(t, res.Token.Authenticated)
	// assert.Equal(t, "testToken", res.Token.Token)
    // }   
}