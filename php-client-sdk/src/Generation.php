<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI;

class Generation 
{

	private SDKConfiguration $sdkConfiguration;

	/**
	 * @param SDKConfiguration $sdkConfig
	 */
	public function __construct(SDKConfiguration $sdkConfig)
	{
		$this->sdkConfiguration = $sdkConfig;
	}
	
    /**
     * anchorTypesGet
     * 
     * @return \OpenAPI\OpenAPI\Models\Operations\AnchorTypesGetResponse
     */
	public function anchorTypesGet(
    ): \OpenAPI\OpenAPI\Models\Operations\AnchorTypesGetResponse
    {
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/anchorTypes');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\AnchorTypesGetResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->typeFromAnchor = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\TypeFromAnchor', 'json');
            }
        }

        return $response;
    }
	
    /**
     * circularReferenceGet
     * 
     * @return \OpenAPI\OpenAPI\Models\Operations\CircularReferenceGetResponse
     */
	public function circularReferenceGet(
    ): \OpenAPI\OpenAPI\Models\Operations\CircularReferenceGetResponse
    {
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/circularReference');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\CircularReferenceGetResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->validCircularReferenceObject = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Shared\ValidCircularReferenceObject', 'json');
            }
        }

        return $response;
    }
	
    /**
     * deprecatedFieldInSchemaPost
     * 
     * @param \OpenAPI\OpenAPI\Models\Shared\DeprecatedFieldInObject $request
     * @return \OpenAPI\OpenAPI\Models\Operations\DeprecatedFieldInSchemaPostResponse
     */
	public function deprecatedFieldInSchemaPost(
        \OpenAPI\OpenAPI\Models\Shared\DeprecatedFieldInObject $request,
    ): \OpenAPI\OpenAPI\Models\Operations\DeprecatedFieldInSchemaPostResponse
    {
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/deprecatedFieldInSchema');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "request", "json");
        if ($body === null) {
            throw new \Exception('Request body is required');
        }
        $options = array_merge_recursive($options, $body);
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\DeprecatedFieldInSchemaPostResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
        }

        return $response;
    }
	
    /**
     * deprecatedObjectInSchemaGet
     * 
     * @return \OpenAPI\OpenAPI\Models\Operations\DeprecatedObjectInSchemaGetResponse
     */
	public function deprecatedObjectInSchemaGet(
    ): \OpenAPI\OpenAPI\Models\Operations\DeprecatedObjectInSchemaGetResponse
    {
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/deprecatedObjectInSchema');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\DeprecatedObjectInSchemaGetResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->deprecatedObjectInSchemaGet200ApplicationJSONObject = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\DeprecatedObjectInSchemaGet200ApplicationJSON', 'json');
            }
        }

        return $response;
    }
	
    /**
     * deprecatedOperationNoCommentsGet
     * 
     * @param ?string $deprecatedParameter
     * @return \OpenAPI\OpenAPI\Models\Operations\DeprecatedOperationNoCommentsGetResponse
     * @deprecated  method: This will be removed in a future release, please migrate away from it as soon as possible.
     */
	public function deprecatedOperationNoCommentsGet(
        ?string $deprecatedParameter = null,
    ): \OpenAPI\OpenAPI\Models\Operations\DeprecatedOperationNoCommentsGetResponse
    {
        trigger_error('Method ' . __METHOD__ . ' is deprecated', E_USER_DEPRECATED);
        
        $request = new \OpenAPI\OpenAPI\Models\Operations\DeprecatedOperationNoCommentsGetRequest();
        $request->deprecatedParameter = $deprecatedParameter;
        
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/deprecatedOperationNoComments');
        
        $options = ['http_errors' => false];
        $options = array_merge_recursive($options, Utils\Utils::getQueryParams(\OpenAPI\OpenAPI\Models\Operations\DeprecatedOperationNoCommentsGetRequest::class, $request, $this->sdkConfiguration->globals));
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\DeprecatedOperationNoCommentsGetResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
        }

        return $response;
    }
	
    /**
     * This is an endpoint setup to test deprecation with comments
     * 
     * @param ?string $deprecatedParameter
     * @param ?string $newParameter
     * @return \OpenAPI\OpenAPI\Models\Operations\DeprecatedOperationWithCommentsGetResponse
     * @deprecated  method: This operation is deprecated. Use simplePathParameterObjects instead.
     */
	public function deprecatedOperationWithCommentsGet(
        ?string $deprecatedParameter = null,
        ?string $newParameter = null,
    ): \OpenAPI\OpenAPI\Models\Operations\DeprecatedOperationWithCommentsGetResponse
    {
        trigger_error('Method ' . __METHOD__ . ' is deprecated', E_USER_DEPRECATED);
        
        $request = new \OpenAPI\OpenAPI\Models\Operations\DeprecatedOperationWithCommentsGetRequest();
        $request->deprecatedParameter = $deprecatedParameter;
        $request->newParameter = $newParameter;
        
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/deprecatedOperationWithComments');
        
        $options = ['http_errors' => false];
        $options = array_merge_recursive($options, Utils\Utils::getQueryParams(\OpenAPI\OpenAPI\Models\Operations\DeprecatedOperationWithCommentsGetRequest::class, $request, $this->sdkConfiguration->globals));
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\DeprecatedOperationWithCommentsGetResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
        }

        return $response;
    }
	
    /**
     * emptyObjectGet
     * 
     * @param \OpenAPI\OpenAPI\Models\Shared\EmptyObjectParam $emptyObject
     * @return \OpenAPI\OpenAPI\Models\Operations\EmptyObjectGetResponse
     */
	public function emptyObjectGet(
        \OpenAPI\OpenAPI\Models\Shared\EmptyObjectParam $emptyObject,
    ): \OpenAPI\OpenAPI\Models\Operations\EmptyObjectGetResponse
    {
        $request = new \OpenAPI\OpenAPI\Models\Operations\EmptyObjectGetRequest();
        $request->emptyObject = $emptyObject;
        
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/{emptyObject}', \OpenAPI\OpenAPI\Models\Operations\EmptyObjectGetRequest::class, $request, $this->sdkConfiguration->globals);
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\EmptyObjectGetResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
        }

        return $response;
    }
	
    /**
     * emptyResponseObjectWithCommentGet
     * 
     * @return \OpenAPI\OpenAPI\Models\Operations\EmptyResponseObjectWithCommentGetResponse
     */
	public function emptyResponseObjectWithCommentGet(
    ): \OpenAPI\OpenAPI\Models\Operations\EmptyResponseObjectWithCommentGetResponse
    {
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/emptyResponseObjectWithComment');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = 'application/octet-stream';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\EmptyResponseObjectWithCommentGetResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/octet-stream')) {
                $response->body = $httpResponse->getBody()->getContents();
            }
        }

        return $response;
    }
	
    /**
     * globalNameOverridden
     * 
     * @return \OpenAPI\OpenAPI\Models\Operations\GetGlobalNameOverrideResponse
     */
	public function globalNameOverridden(
    ): \OpenAPI\OpenAPI\Models\Operations\GetGlobalNameOverrideResponse
    {
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/globalNameOverride');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\GetGlobalNameOverrideResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->getGlobalNameOverride200ApplicationJSONObject = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\GetGlobalNameOverride200ApplicationJSON', 'json');
            }
        }

        return $response;
    }
	
    /**
     * ignoredGenerationGet
     * 
     * @return \OpenAPI\OpenAPI\Models\Operations\IgnoredGenerationGetResponse
     */
	public function ignoredGenerationGet(
    ): \OpenAPI\OpenAPI\Models\Operations\IgnoredGenerationGetResponse
    {
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/ignoredGeneration');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\IgnoredGenerationGetResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->ignoredGenerationGet200ApplicationJSONObject = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\IgnoredGenerationGet200ApplicationJSON', 'json');
            }
        }

        return $response;
    }
	
    /**
     * ignoresPost
     * 
     * @param ?\OpenAPI\OpenAPI\Models\Operations\IgnoresPostApplicationJSON $requestBody
     * @param ?string $testParam
     * @return \OpenAPI\OpenAPI\Models\Operations\IgnoresPostResponse
     */
	public function ignoresPost(
        ?\OpenAPI\OpenAPI\Models\Operations\IgnoresPostApplicationJSON $requestBody = null,
        ?string $testParam = null,
    ): \OpenAPI\OpenAPI\Models\Operations\IgnoresPostResponse
    {
        $request = new \OpenAPI\OpenAPI\Models\Operations\IgnoresPostRequest();
        $request->requestBody = $requestBody;
        $request->testParam = $testParam;
        
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/ignores');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "requestBody", "json");
        $options = array_merge_recursive($options, $body);
        $options = array_merge_recursive($options, Utils\Utils::getQueryParams(\OpenAPI\OpenAPI\Models\Operations\IgnoresPostRequest::class, $request, $this->sdkConfiguration->globals));
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\IgnoresPostResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->httpBinSimpleJsonObject = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Shared\HttpBinSimpleJsonObject', 'json');
            }
        }

        return $response;
    }
	
    /**
     * nameOverride
     * 
     * @param \OpenAPI\OpenAPI\Models\Operations\NameOverrideGetEnumNameOverride $testEnumQueryParam
     * @param string $testQueryParam
     * @return \OpenAPI\OpenAPI\Models\Operations\NameOverrideGetResponse
     */
	public function nameOverride(
        \OpenAPI\OpenAPI\Models\Operations\NameOverrideGetEnumNameOverride $testEnumQueryParam,
        string $testQueryParam,
    ): \OpenAPI\OpenAPI\Models\Operations\NameOverrideGetResponse
    {
        $request = new \OpenAPI\OpenAPI\Models\Operations\NameOverrideGetRequest();
        $request->testEnumQueryParam = $testEnumQueryParam;
        $request->testQueryParam = $testQueryParam;
        
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/nameOverride');
        
        $options = ['http_errors' => false];
        $options = array_merge_recursive($options, Utils\Utils::getQueryParams(\OpenAPI\OpenAPI\Models\Operations\NameOverrideGetRequest::class, $request, $this->sdkConfiguration->globals));
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\NameOverrideGetResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->overriddenResponse = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\OverriddenResponse', 'json');
            }
        }

        return $response;
    }
	
    /**
     * typedParameterGenerationGet
     * 
     * @param ?int $bigint
     * @param ?\DateTime $date
     * @param ?\OpenAPI\OpenAPI\Models\Operations\TypedParameterGenerationGetObj $obj
     * @return \OpenAPI\OpenAPI\Models\Operations\TypedParameterGenerationGetResponse
     */
	public function typedParameterGenerationGet(
        ?int $bigint = null,
        ?\DateTime $date = null,
        ?\OpenAPI\OpenAPI\Models\Operations\TypedParameterGenerationGetObj $obj = null,
    ): \OpenAPI\OpenAPI\Models\Operations\TypedParameterGenerationGetResponse
    {
        $request = new \OpenAPI\OpenAPI\Models\Operations\TypedParameterGenerationGetRequest();
        $request->bigint = $bigint;
        $request->date = $date;
        $request->obj = $obj;
        
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/typedParameterGeneration');
        
        $options = ['http_errors' => false];
        $options = array_merge_recursive($options, Utils\Utils::getQueryParams(\OpenAPI\OpenAPI\Models\Operations\TypedParameterGenerationGetRequest::class, $request, $this->sdkConfiguration->globals));
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\TypedParameterGenerationGetResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
        }

        return $response;
    }
	
    /**
     * An operation used for testing usage examples
     * 
     * An operation used for testing usage examples that includes a large array of parameters and input types to ensure that all are handled correctly
     * https://docs.example.com - Usage example docs
     * 
     * @param \OpenAPI\OpenAPI\Models\Operations\UsageExamplePostRequest $request
     * @param \OpenAPI\OpenAPI\Models\Operations\UsageExamplePostSecurity $security
     * @return \OpenAPI\OpenAPI\Models\Operations\UsageExamplePostResponse
     * @see https://docs.example.com
     */
	public function usageExamplePost(
        \OpenAPI\OpenAPI\Models\Operations\UsageExamplePostRequest $request,
        \OpenAPI\OpenAPI\Models\Operations\UsageExamplePostSecurity $security,
    ): \OpenAPI\OpenAPI\Models\Operations\UsageExamplePostResponse
    {
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/usageExample');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "requestBody", "json");
        $options = array_merge_recursive($options, $body);
        $options = array_merge_recursive($options, Utils\Utils::getQueryParams(\OpenAPI\OpenAPI\Models\Operations\UsageExamplePostRequest::class, $request, $this->sdkConfiguration->globals));
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $client = Utils\Utils::configureSecurityClient($this->sdkConfiguration->defaultClient, $security);
        $httpResponse = $client->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\UsageExamplePostResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->usageExamplePost200ApplicationJSONObject = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\UsageExamplePost200ApplicationJSON', 'json');
            }
        }

        return $response;
    }
}