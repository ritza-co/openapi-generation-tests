<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI;

class Flattening 
{

	// SDK private variables namespaced with _ to avoid conflicts with API models
	private \GuzzleHttp\ClientInterface $_defaultClient;
	private \GuzzleHttp\ClientInterface $_securityClient;
	private string $_serverUrl;
	private string $_language;
	private string $_sdkVersion;
	private string $_genVersion;
	/** @var array<string, array<string, array<string, string>>> */
	private array $_globals;	

	/**
	 * @param \GuzzleHttp\ClientInterface $defaultClient
	 * @param \GuzzleHttp\ClientInterface $securityClient
	 * @param string $serverUrl
	 * @param string $language
	 * @param string $sdkVersion
	 * @param string $genVersion
	 * @param array<string, array<string, array<string, string>>> $globals
	 */
	public function __construct(\GuzzleHttp\ClientInterface $defaultClient, \GuzzleHttp\ClientInterface $securityClient, string $serverUrl, string $language, string $sdkVersion, string $genVersion, array $globals)
	{
		$this->_defaultClient = $defaultClient;
		$this->_securityClient = $securityClient;
		$this->_serverUrl = $serverUrl;
		$this->_language = $language;
		$this->_sdkVersion = $sdkVersion;
		$this->_genVersion = $genVersion;
		$this->_globals = $globals;
	}
	
    /**
     * componentBodyAndParamConflict
     * 
     * @param \OpenAPI\OpenAPI\Models\Operations\ComponentBodyAndParamConflictRequest $request
     * @return \OpenAPI\OpenAPI\Models\Operations\ComponentBodyAndParamConflictResponse
     */
	public function componentBodyAndParamConflict(
        \OpenAPI\OpenAPI\Models\Operations\ComponentBodyAndParamConflictRequest $request,
    ): \OpenAPI\OpenAPI\Models\Operations\ComponentBodyAndParamConflictResponse
    {
        $baseUrl = $this->_serverUrl;
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/flattening/componentBodyAndParamConflict');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "simpleObject", "json");
        if ($body === null) {
            throw new \Exception('Request body is required');
        }
        $options = array_merge_recursive($options, $body);
        $options = array_merge_recursive($options, Utils\Utils::getQueryParams(\OpenAPI\OpenAPI\Models\Operations\ComponentBodyAndParamConflictRequest::class, $request, $this->_globals));
        
        $httpResponse = $this->_securityClient->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\ComponentBodyAndParamConflictResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->res = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\ComponentBodyAndParamConflictRes', 'json');
            }
        }

        return $response;
    }
	
    /**
     * componentBodyAndParamNoConflict
     * 
     * @param \OpenAPI\OpenAPI\Models\Operations\ComponentBodyAndParamNoConflictRequest $request
     * @return \OpenAPI\OpenAPI\Models\Operations\ComponentBodyAndParamNoConflictResponse
     */
	public function componentBodyAndParamNoConflict(
        \OpenAPI\OpenAPI\Models\Operations\ComponentBodyAndParamNoConflictRequest $request,
    ): \OpenAPI\OpenAPI\Models\Operations\ComponentBodyAndParamNoConflictResponse
    {
        $baseUrl = $this->_serverUrl;
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/flattening/componentBodyAndParamNoConflict');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "simpleObject", "json");
        if ($body === null) {
            throw new \Exception('Request body is required');
        }
        $options = array_merge_recursive($options, $body);
        $options = array_merge_recursive($options, Utils\Utils::getQueryParams(\OpenAPI\OpenAPI\Models\Operations\ComponentBodyAndParamNoConflictRequest::class, $request, $this->_globals));
        
        $httpResponse = $this->_securityClient->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\ComponentBodyAndParamNoConflictResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->res = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\ComponentBodyAndParamNoConflictRes', 'json');
            }
        }

        return $response;
    }
	
    /**
     * conflictingParams
     * 
     * @param \OpenAPI\OpenAPI\Models\Operations\ConflictingParamsRequest $request
     * @return \OpenAPI\OpenAPI\Models\Operations\ConflictingParamsResponse
     */
	public function conflictingParams(
        \OpenAPI\OpenAPI\Models\Operations\ConflictingParamsRequest $request,
    ): \OpenAPI\OpenAPI\Models\Operations\ConflictingParamsResponse
    {
        $baseUrl = $this->_serverUrl;
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/flattening/conflictingParams/{str}', \OpenAPI\OpenAPI\Models\Operations\ConflictingParamsRequest::class, $request, $this->_globals);
        
        $options = ['http_errors' => false];
        $options = array_merge_recursive($options, Utils\Utils::getQueryParams(\OpenAPI\OpenAPI\Models\Operations\ConflictingParamsRequest::class, $request, $this->_globals));
        
        $httpResponse = $this->_securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\ConflictingParamsResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->res = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\ConflictingParamsRes', 'json');
            }
        }

        return $response;
    }
	
    /**
     * inlineBodyAndParamConflict
     * 
     * @param \OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamConflictRequest $request
     * @return \OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamConflictResponse
     */
	public function inlineBodyAndParamConflict(
        \OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamConflictRequest $request,
    ): \OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamConflictResponse
    {
        $baseUrl = $this->_serverUrl;
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/flattening/inlineBodyAndParamConflict');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "requestBody", "json");
        if ($body === null) {
            throw new \Exception('Request body is required');
        }
        $options = array_merge_recursive($options, $body);
        $options = array_merge_recursive($options, Utils\Utils::getQueryParams(\OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamConflictRequest::class, $request, $this->_globals));
        
        $httpResponse = $this->_securityClient->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamConflictResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->res = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamConflictRes', 'json');
            }
        }

        return $response;
    }
	
    /**
     * inlineBodyAndParamNoConflict
     * 
     * @param \OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamNoConflictRequest $request
     * @return \OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamNoConflictResponse
     */
	public function inlineBodyAndParamNoConflict(
        \OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamNoConflictRequest $request,
    ): \OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamNoConflictResponse
    {
        $baseUrl = $this->_serverUrl;
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/flattening/inlineBodyAndParamNoConflict');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "requestBody", "json");
        if ($body === null) {
            throw new \Exception('Request body is required');
        }
        $options = array_merge_recursive($options, $body);
        $options = array_merge_recursive($options, Utils\Utils::getQueryParams(\OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamNoConflictRequest::class, $request, $this->_globals));
        
        $httpResponse = $this->_securityClient->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamNoConflictResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->res = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamNoConflictRes', 'json');
            }
        }

        return $response;
    }
}