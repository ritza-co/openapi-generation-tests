<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI;

class Globals 
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
     * globalPathParameterGet
     * 
     * @param ?int $globalPathParam
     * @return \OpenAPI\OpenAPI\Models\Operations\GlobalPathParameterGetResponse
     */
	public function globalPathParameterGet(
        ?int $globalPathParam = null,
    ): \OpenAPI\OpenAPI\Models\Operations\GlobalPathParameterGetResponse
    {
        $request = new \OpenAPI\OpenAPI\Models\Operations\GlobalPathParameterGetRequest();
        $request->globalPathParam = $globalPathParam;
        
        $baseUrl = $this->_serverUrl;
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/globals/pathParameter/{globalPathParam}', \OpenAPI\OpenAPI\Models\Operations\GlobalPathParameterGetRequest::class, $request, $this->_globals);
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->_language, $this->_sdkVersion, $this->_genVersion);
        
        $httpResponse = $this->_securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\GlobalPathParameterGetResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->res = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\GlobalPathParameterGetRes', 'json');
            }
        }

        return $response;
    }
	
    /**
     * globalsQueryParameterGet
     * 
     * @param ?string $globalQueryParam
     * @return \OpenAPI\OpenAPI\Models\Operations\GlobalsQueryParameterGetResponse
     */
	public function globalsQueryParameterGet(
        ?string $globalQueryParam = null,
    ): \OpenAPI\OpenAPI\Models\Operations\GlobalsQueryParameterGetResponse
    {
        $request = new \OpenAPI\OpenAPI\Models\Operations\GlobalsQueryParameterGetRequest();
        $request->globalQueryParam = $globalQueryParam;
        
        $baseUrl = $this->_serverUrl;
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/globals/queryParameter');
        
        $options = ['http_errors' => false];
        $options = array_merge_recursive($options, Utils\Utils::getQueryParams(\OpenAPI\OpenAPI\Models\Operations\GlobalsQueryParameterGetRequest::class, $request, $this->_globals));
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->_language, $this->_sdkVersion, $this->_genVersion);
        
        $httpResponse = $this->_securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\GlobalsQueryParameterGetResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->res = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\GlobalsQueryParameterGetRes', 'json');
            }
        }

        return $response;
    }
}