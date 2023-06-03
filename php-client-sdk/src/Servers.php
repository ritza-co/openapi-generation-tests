<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI;

class Servers 
{
	
    /** SELECT_SERVER_WITH_ID_SERVER_VALID - The default server. */
	public const SELECT_SERVER_WITH_ID_SERVER_VALID = 'valid';
	
    /** SELECT_SERVER_WITH_ID_SERVER_BROKEN - A server url to a non-existent server. */
	public const SELECT_SERVER_WITH_ID_SERVER_BROKEN = 'broken';
	
	public const SELECT_SERVER_WITH_ID_SERVERS = [
        /** The default server. */
		Servers::SELECT_SERVER_WITH_ID_SERVER_VALID => 'http://localhost:35123',
        /** A server url to a non-existent server. */
		Servers::SELECT_SERVER_WITH_ID_SERVER_BROKEN => 'http://broken',
	];
	
	public const SERVER_WITH_TEMPLATES_SERVERS = [
		'http://{hostname}:{port}',
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
     * selectGlobalServer
     * 
     * @return \OpenAPI\OpenAPI\Models\Operations\SelectGlobalServerResponse
     */
	public function selectGlobalServer(
    ): \OpenAPI\OpenAPI\Models\Operations\SelectGlobalServerResponse
    {
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/selectGlobalServer');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\SelectGlobalServerResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            $response->headers = $httpResponse->getHeaders();
            
        }

        return $response;
    }
	
    /**
     * Select a server by ID.
     * 
     * @param string $serverURL
     * @return \OpenAPI\OpenAPI\Models\Operations\SelectServerWithIDResponse
     */
	public function selectServerWithID(
        ?string $serverURL = null,
    ): \OpenAPI\OpenAPI\Models\Operations\SelectServerWithIDResponse
    {
        $baseUrl = Utils\Utils::templateUrl(Servers::SELECT_SERVER_WITH_ID_SERVERS[Servers::SELECT_SERVER_WITH_ID_SERVER_VALID], array(
        ));
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/selectServerWithID');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\SelectServerWithIDResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
        }

        return $response;
    }
	
    /**
     * serverWithTemplates
     * 
     * @param string $serverURL
     * @return \OpenAPI\OpenAPI\Models\Operations\ServerWithTemplatesResponse
     */
	public function serverWithTemplates(
        ?string $serverURL = null,
    ): \OpenAPI\OpenAPI\Models\Operations\ServerWithTemplatesResponse
    {
        $baseUrl = Utils\Utils::templateUrl(Servers::SERVER_WITH_TEMPLATES_SERVERS[0], array(
            'hostname' => 'localhost',
            'port' => '35123',
        ));
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/serverWithTemplates');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\ServerWithTemplatesResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
        }

        return $response;
    }
	
    /**
     * serverWithTemplatesGlobal
     * 
     * @return \OpenAPI\OpenAPI\Models\Operations\ServerWithTemplatesGlobalResponse
     */
	public function serverWithTemplatesGlobal(
    ): \OpenAPI\OpenAPI\Models\Operations\ServerWithTemplatesGlobalResponse
    {
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/serverWithTemplatesGlobal');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\ServerWithTemplatesGlobalResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
        }

        return $response;
    }
}