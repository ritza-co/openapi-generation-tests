<?php

declare(strict_types=1);
require_once 'vendor/autoload.php';

use OpenAPI\OpenAPI\Tests\Helpers\Helpers;
use PHPUnit\Framework\TestCase;

final class FlatteningTest extends TestCase
{
    public function testComponentBodyAndParamNoConflict(): void
    {
        Helpers::recordTest('flattening-component-body-and-param-no-conflict');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $obj = Helpers::createSimpleObject();

        $response = $sdk->flattening->componentBodyAndParamNoConflict('param test', $obj);

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
        $this->assertEquals('param test', $response->res->args['paramStr']);
        $this->assertEquals($obj, $response->res->json);
    }

    public function testComponentBodyAndParamConflict(): void
    {
        Helpers::recordTest('flattening-component-body-and-param-conflict');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $obj = Helpers::createSimpleObject();

        $response = $sdk->flattening->componentBodyAndParamConflict($obj, 'param test');

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
        $this->assertEquals('param test', $response->res->args['str']);
        $this->assertEquals($obj, $response->res->json);
    }

    public function testInlineBodyAndParamConflict(): void
    {
        Helpers::recordTest('flattening-inline-body-and-param-conflict');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $requestBody = new \OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamConflictRequestBody();
        $requestBody->str = 'body test';

        $response = $sdk->flattening->inlineBodyAndParamConflict($requestBody, 'param test');

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
        $this->assertEquals('param test', $response->res->args['str']);
        $this->assertEquals('body test', $response->res->json->str);
    }

    public function testInlineBodyAndParamNoConflict(): void
    {
        Helpers::recordTest('flattening-inline-body-and-param-no-conflict');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $requestBody = new \OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamNoConflictRequestBody();
        $requestBody->bodyStr = 'body test';

        $response = $sdk->flattening->inlineBodyAndParamNoConflict($requestBody, 'param test');

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
        $this->assertEquals('param test', $response->res->args['paramStr']);
        $this->assertEquals('body test', $response->res->json->bodyStr);
    }

    public function testConflictingParams(): void
    {
        Helpers::recordTest('flattening-conflicting-params');

        $sdk = \OpenAPI\OpenAPI\SDK::builder()->build();

        $this->assertInstanceOf(\OpenAPI\OpenAPI\SDK::class, $sdk);

        $response = $sdk->flattening->conflictingParams('pathParam', 'queryParam');

        $this->assertNotNull($response);
        $this->assertEquals(200, $response->statusCode);
        $this->assertStringContainsString('/pathParam?', $response->res->url);
        $this->assertEquals('queryParam', $response->res->args['str']);
    }
}
