<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI;

class Errors 
{
	
	public const CONNECTION_ERROR_GET_SERVERS = [
		'http://somebrokenapi.broken',
	];
	
	public const STATUS_GET_X_SPEAKEASY_ERRORS_SERVERS = [
		'http://localhost:35456',
	];

	private SDKConfiguration $sdkConfiguration;

	/**
	 * @param SDKConfiguration $sdkConfig
	 */
	public function __construct(SDKConfiguration $sdkConfig)
	{
		$this->sdkConfiguration = $sdkConfig;
	}
	
    /**
     * connectionErrorGet
     * 
     * @param string $serverURL
     * @return \OpenAPI\OpenAPI\Models\Operations\ConnectionErrorGetResponse
     */
	public function connectionErrorGet(
        ?string $serverURL = null,
    ): \OpenAPI\OpenAPI\Models\Operations\ConnectionErrorGetResponse
    {
        $baseUrl = Utils\Utils::templateUrl(Errors::CONNECTION_ERROR_GET_SERVERS[0], array(
        ));
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/connectionError');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = $this->sdkConfiguration->userAgent;
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\ConnectionErrorGetResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
        }

        return $response;
    }
	
    /**
     * statusGetError
     * 
     * @param int $statusCode
     * @return \OpenAPI\OpenAPI\Models\Operations\StatusGetErrorResponse
     */
	public function statusGetError(
        int $statusCode,
    ): \OpenAPI\OpenAPI\Models\Operations\StatusGetErrorResponse
    {
        $request = new \OpenAPI\OpenAPI\Models\Operations\StatusGetErrorRequest();
        $request->statusCode = $statusCode;
        
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/status/{statusCode}', \OpenAPI\OpenAPI\Models\Operations\StatusGetErrorRequest::class, $request, $this->sdkConfiguration->globals);
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = $this->sdkConfiguration->userAgent;
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\StatusGetErrorResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200 or $httpResponse->getStatusCode() === 300 or $httpResponse->getStatusCode() === 400 or $httpResponse->getStatusCode() === 500) {
        }

        return $response;
    }
	
    /**
     * statusGetXSpeakeasyErrors
     * 
     * @param int $statusCode
     * @param string $serverURL
     * @return \OpenAPI\OpenAPI\Models\Operations\StatusGetXSpeakeasyErrorsResponse
     */
	public function statusGetXSpeakeasyErrors(
        int $statusCode,
        ?string $serverURL = null,
    ): \OpenAPI\OpenAPI\Models\Operations\StatusGetXSpeakeasyErrorsResponse
    {
        $request = new \OpenAPI\OpenAPI\Models\Operations\StatusGetXSpeakeasyErrorsRequest();
        $request->statusCode = $statusCode;
        
        $baseUrl = Utils\Utils::templateUrl(Errors::STATUS_GET_X_SPEAKEASY_ERRORS_SERVERS[0], array(
        ));
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/errors/{statusCode}', \OpenAPI\OpenAPI\Models\Operations\StatusGetXSpeakeasyErrorsRequest::class, $request, $this->sdkConfiguration->globals);
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = $this->sdkConfiguration->userAgent;
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\StatusGetXSpeakeasyErrorsResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200 or $httpResponse->getStatusCode() === 300 or $httpResponse->getStatusCode() === 400) {
        }
        else if ($httpResponse->getStatusCode() === 500) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->error = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Shared\Error', 'json');
            }
        }
        else if ($httpResponse->getStatusCode() === 501) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->statusGetXSpeakeasyErrors501ApplicationJSONObject = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\StatusGetXSpeakeasyErrors501ApplicationJSON', 'json');
            }
        }

        return $response;
    }
}