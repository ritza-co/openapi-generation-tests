<?php

declare(strict_types=1);
require_once 'vendor/autoload.php';

use OpenAPI\OpenAPI\Tests\Helpers\Helpers;
use PHPUnit\Framework\TestCase;

final class AuthTest extends TestCase
{
    public function testBasicAuth(): void
    {
        Helpers::recordTest('auth-basic-auth');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $request = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody();
        $request->basicAuth = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyBasicAuth();
        $request->basicAuth->username = 'testUser';
        $request->basicAuth->password = 'testPass';

        $security = new \OpenAPI\OpenAPI\Models\Operations\BasicAuthNewSecurity();
        $security->username = 'testUser';
        $security->password = 'testPass';

        $response = $sdk->authNew->basicAuthNew($request, $security);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
    }

    public function testApiKeyAuthGlobal(): void
    {
        Helpers::recordTest('auth-api-key-auth-global');

        $security = new \OpenAPI\OpenAPI\Models\Shared\Security();
        $security->apiKeyAuthNew = 'test_api_key';
        $sdk = \OpenAPI\OpenAPI\SDK::builder()->setSecurity($security)->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $request = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody();

        $header = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyHeaderAuth();
        $header->headerName = 'x-api-key';
        $header->expectedValue = 'test_api_key';

        $request->headerAuth = [
            $header
        ];

        $response = $sdk->authNew->apiKeyAuthGlobalNew($request);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
    }

    public function testApiKeyAuthOperation(): void
    {
        Helpers::recordTest('auth-api-key-auth-operation');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();
        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $security = new \OpenAPI\OpenAPI\Models\Operations\ApiKeyAuthSecurity();
        $security->apiKeyAuth = 'Bearer testToken';

        $response = $sdk->auth->apiKeyAuth($security);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
        $this->assertTrue($response->token->authenticated);
        $this->assertEquals('testToken', $response->token->token);
    }

    public function testBearerAuthOperationWithPrefix(): void
    {
        Helpers::recordTest('auth-bearer-auth-operation-with-prefix');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();
        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $security = new \OpenAPI\OpenAPI\Models\Operations\BearerAuthSecurity();
        $security->bearerAuth = 'Bearer testToken';

        $response = $sdk->auth->bearerAuth($security);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
        $this->assertTrue($response->token->authenticated);
        $this->assertEquals('testToken', $response->token->token);
    }

    public function testBearerAuthOperationWithoutPrefix(): void
    {
        Helpers::recordTest('auth-bearer-auth-operation-without-prefix');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();
        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $security = new \OpenAPI\OpenAPI\Models\Operations\BearerAuthSecurity();
        $security->bearerAuth = 'testToken';

        $response = $sdk->auth->bearerAuth($security);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
        $this->assertTrue($response->token->authenticated);
        $this->assertEquals('testToken', $response->token->token);
    }

    public function testOauth2Auth(): void
    {
        Helpers::recordTest('auth-oauth2-auth');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();
        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $request = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody();

        $header = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyHeaderAuth();
        $header->headerName = 'Authorization';
        $header->expectedValue = 'Bearer testToken';

        $request->headerAuth = [
            $header
        ];

        $security = new \OpenAPI\OpenAPI\Models\Operations\Oauth2AuthNewSecurity();
        $security->oauth2 = 'Bearer testToken';

        $response = $sdk->authNew->oauth2AuthNew($request, $security);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
    }

    public function testOpenIdConnectAuth(): void
    {
        Helpers::recordTest('auth-open-id-connect-auth');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();
        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $request = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody();

        $header = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyHeaderAuth();
        $header->headerName = 'Authorization';
        $header->expectedValue = 'Bearer testToken';

        $request->headerAuth = [
            $header
        ];

        $security = new \OpenAPI\OpenAPI\Models\Operations\OpenIdConnectAuthNewSecurity();
        $security->openIdConnect = 'Bearer testToken';

        $response = $sdk->authNew->openIdConnectAuthNew($request, $security);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
    }

    public function testMultipleSimpleSchemeAuth(): void
    {
        Helpers::recordTest('auth-multiple-simple-scheme-auth');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $request = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody();

        $header1 = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyHeaderAuth();
        $header1->headerName = 'x-api-key';
        $header1->expectedValue = 'test_api_key';

        $header2 = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyHeaderAuth();
        $header2->headerName = 'Authorization';
        $header2->expectedValue = 'Bearer testToken';

        $request->headerAuth = [
            $header1,
            $header2
        ];

        $security = new \OpenAPI\OpenAPI\Models\Operations\MultipleSimpleSchemeAuthSecurity();
        $security->apiKeyAuthNew = 'test_api_key';
        $security->oauth2 = 'Bearer testToken';

        $response = $sdk->authNew->multipleSimpleSchemeAuth($request, $security);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
    }

    public function testMultipleMixedSchemeAuth(): void
    {
        Helpers::recordTest('auth-multiple-mixed-scheme-auth');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $request = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody();
        $request->basicAuth = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyBasicAuth();
        $request->basicAuth->username = 'testUser';
        $request->basicAuth->password = 'testPass';

        $header1 = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyHeaderAuth();
        $header1->headerName = 'x-api-key';
        $header1->expectedValue = 'test_api_key';

        $request->headerAuth = [
            $header1,
        ];

        $security = new \OpenAPI\OpenAPI\Models\Operations\MultipleMixedSchemeAuthSecurity();
        $security->apiKeyAuthNew = 'test_api_key';
        $security->basicAuth = new \OpenAPI\OpenAPI\Models\Shared\SchemeBasicAuth();
        $security->basicAuth->username = 'testUser';
        $security->basicAuth->password = 'testPass';

        $response = $sdk->authNew->multipleMixedSchemeAuth($request, $security);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
    }

    public function testMultipleSimpleOptionsAuthFirstOption(): void
    {
        Helpers::recordTest('auth-multiple-simple-options-auth-first-option');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $request = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody();

        $header1 = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyHeaderAuth();
        $header1->headerName = 'x-api-key';
        $header1->expectedValue = 'test_api_key';

        $request->headerAuth = [
            $header1
        ];

        $security = new \OpenAPI\OpenAPI\Models\Operations\MultipleSimpleOptionsAuthSecurity();
        $security->apiKeyAuthNew = 'test_api_key';

        $response = $sdk->authNew->multipleSimpleOptionsAuth($request, $security);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
    }

    public function testMultipleSimpleOptionsAuthSecondOption(): void
    {
        Helpers::recordTest('auth-multiple-simple-options-auth-second-option');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $request = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody();

        $header1 = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyHeaderAuth();
        $header1->headerName = 'Authorization';
        $header1->expectedValue = 'Bearer testToken';

        $request->headerAuth = [
            $header1
        ];

        $security = new \OpenAPI\OpenAPI\Models\Operations\MultipleSimpleOptionsAuthSecurity();
        $security->oauth2 = 'Bearer testToken';

        $response = $sdk->authNew->multipleSimpleOptionsAuth($request, $security);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
    }

    public function testMultipleMixedOptionsAuthFirstOption(): void
    {
        Helpers::recordTest('auth-multiple-mixed-options-auth-first-option');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $request = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody();

        $header1 = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyHeaderAuth();
        $header1->headerName = 'x-api-key';
        $header1->expectedValue = 'test_api_key';

        $request->headerAuth = [
            $header1
        ];

        $security = new \OpenAPI\OpenAPI\Models\Operations\MultipleMixedOptionsAuthSecurity();
        $security->apiKeyAuthNew = 'test_api_key';

        $response = $sdk->authNew->multipleMixedOptionsAuth($request, $security);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
    }

    public function testMultipleMixedOptionsAuthSecondOption(): void
    {
        Helpers::recordTest('auth-multiple-mixed-options-auth-second-option');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $request = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody();
        $request->basicAuth = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyBasicAuth();
        $request->basicAuth->username = 'testUser';
        $request->basicAuth->password = 'testPass';

        $security = new \OpenAPI\OpenAPI\Models\Operations\MultipleMixedOptionsAuthSecurity();
        $security->basicAuth = new \OpenAPI\OpenAPI\Models\Shared\SchemeBasicAuth();
        $security->basicAuth->username = 'testUser';
        $security->basicAuth->password = 'testPass';

        $response = $sdk->authNew->multipleMixedOptionsAuth($request, $security);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
    }

    public function testMultipleOptionsWithSimpleSchemesAuthFirstOption(): void
    {
        Helpers::recordTest('auth-multiple-options-with-simple-schemes-auth-first-option');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $request = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody();

        $header1 = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyHeaderAuth();
        $header1->headerName = 'x-api-key';
        $header1->expectedValue = 'test_api_key';

        $header2 = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyHeaderAuth();
        $header2->headerName = 'Authorization';
        $header2->expectedValue = 'Bearer testToken';

        $request->headerAuth = [
            $header1,
            $header2
        ];

        $security = new \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithSimpleSchemesAuthSecurity();
        $security->option1 = new \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithSimpleSchemesAuthSecurityOption1();
        $security->option1->apiKeyAuthNew = 'test_api_key';
        $security->option1->oauth2 = 'Bearer testToken';

        $response = $sdk->authNew->multipleOptionsWithSimpleSchemesAuth($request, $security);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
    }

    public function testMultipleOptionsWithSimpleSchemesAuthSecondOption(): void
    {
        Helpers::recordTest('auth-multiple-options-with-simple-schemes-auth-second-option');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $request = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody();

        $header1 = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyHeaderAuth();
        $header1->headerName = 'x-api-key';
        $header1->expectedValue = 'test_api_key';

        $header2 = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyHeaderAuth();
        $header2->headerName = 'Authorization';
        $header2->expectedValue = 'Bearer testToken';

        $request->headerAuth = [
            $header1,
            $header2
        ];

        $security = new \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithSimpleSchemesAuthSecurity();
        $security->option2 = new \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithSimpleSchemesAuthSecurityOption2();
        $security->option2->apiKeyAuthNew = 'test_api_key';
        $security->option2->openIdConnect = 'Bearer testToken';

        $response = $sdk->authNew->multipleOptionsWithSimpleSchemesAuth($request, $security);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
    }

    public function testMultipleOptionsWithMixedSchemesAuthFirstOption(): void
    {
        Helpers::recordTest('auth-multiple-options-with-mixed-schemes-auth-first-option');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $request = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody();

        $header1 = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyHeaderAuth();
        $header1->headerName = 'x-api-key';
        $header1->expectedValue = 'test_api_key';

        $header2 = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyHeaderAuth();
        $header2->headerName = 'Authorization';
        $header2->expectedValue = 'Bearer testToken';

        $request->headerAuth = [
            $header1,
            $header2
        ];

        $security = new \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithMixedSchemesAuthSecurity();
        $security->option1 = new \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithMixedSchemesAuthSecurityOption1();
        $security->option1->apiKeyAuthNew = 'test_api_key';
        $security->option1->oauth2 = 'Bearer testToken';

        $response = $sdk->authNew->multipleOptionsWithMixedSchemesAuth($request, $security);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
    }

    public function testMultipleOptionsWithMixedSchemesAuthSecondOption(): void
    {
        Helpers::recordTest('auth-multiple-options-with-mixed-schemes-auth-second-option');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $request = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody();
        $request->basicAuth = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyBasicAuth();
        $request->basicAuth->username = 'testUser';
        $request->basicAuth->password = 'testPass';

        $header1 = new \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBodyHeaderAuth();
        $header1->headerName = 'x-api-key';
        $header1->expectedValue = 'test_api_key';

        $request->headerAuth = [
            $header1,
        ];

        $security = new \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithMixedSchemesAuthSecurity();
        $security->option2 = new \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithMixedSchemesAuthSecurityOption2();
        $security->option2->apiKeyAuthNew = 'test_api_key';
        $security->option2->basicAuth = new \OpenAPI\OpenAPI\Models\Shared\SchemeBasicAuth();
        $security->option2->basicAuth->username = 'testUser';
        $security->option2->basicAuth->password = 'testPass';

        $response = $sdk->authNew->multipleOptionsWithMixedSchemesAuth($request, $security);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
    }
}
