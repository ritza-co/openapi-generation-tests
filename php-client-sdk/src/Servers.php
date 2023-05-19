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
     * selectGlobalServer
     * 
     * @return \OpenAPI\OpenAPI\Models\Operations\SelectGlobalServerResponse
     */
	public function selectGlobalServer(
    ): \OpenAPI\OpenAPI\Models\Operations\SelectGlobalServerResponse
    {
        $baseUrl = $this->_serverUrl;
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/selectGlobalServer');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->_language, $this->_sdkVersion, $this->_genVersion);
        
        $httpResponse = $this->_securityClient->request('GET', $url, $options);
        
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
        $baseUrl = Servers::SELECT_SERVER_WITH_ID_SERVERS[Servers::SELECT_SERVER_WITH_ID_SERVER_VALID];
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/selectServerWithID');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->_language, $this->_sdkVersion, $this->_genVersion);
        
        $httpResponse = $this->_securityClient->request('GET', $url, $options);
        
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
        $baseUrl = Servers::SERVER_WITH_TEMPLATES_SERVERS[0];
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/serverWithTemplates');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->_language, $this->_sdkVersion, $this->_genVersion);
        
        $httpResponse = $this->_securityClient->request('GET', $url, $options);
        
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
        $baseUrl = $this->_serverUrl;
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/serverWithTemplatesGlobal');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->_language, $this->_sdkVersion, $this->_genVersion);
        
        $httpResponse = $this->_securityClient->request('GET', $url, $options);
        
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