<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI;

/**
 * SDK - Test Summary
 * 
 * Some test description.
 * About our test document.
 * https://speakeasyapi.dev/docs/home - Speakeasy Docs
 * 
 * @package OpenAPI\OpenAPI
 * @access public
 * @see https://speakeasyapi.dev/docs/home
 */
class SDK
{
	public const SERVERS = [
        /** The default server. */
		'http://localhost:35123',
        /** A server url to a non-existent server. */
		'http://broken',
        /** A server url with templated variables. */
		'http://{hostname}:{port}',
	];
  	
    /**
     * Endpoints for testing authentication.
     * 
     * @var Auth $$auth
     */
	public Auth $auth;
	
    /**
     * Endpoints for testing authentication.
     * 
     * @var AuthNew $$authNew
     */
	public AuthNew $authNew;
	
    /**
     * Endpoints for testing error responses.
     * 
     * @var Errors $$errors
     */
	public Errors $errors;
	
    /**
     * Endpoints for testing flattening through request body and parameter combinations.
     * 
     * @var Flattening $$flattening
     */
	public Flattening $flattening;
	
    /**
     * Endpoints for purely testing valid generation behavior.
     * 
     * @var Generation $$generation
     */
	public Generation $generation;
	
    /**
     * Endpoints for testing global parameters.
     * 
     * @var Globals $$globals
     */
	public Globals $globals;
	
    /**
     * Endpoints for testing parameters.
     * 
     * @var Parameters $$parameters
     */
	public Parameters $parameters;
	
    /**
     * Endpoints for testing request bodies.
     * 
     * @var RequestBodies $$requestBodies
     */
	public RequestBodies $requestBodies;
	
    /**
     * Endpoints for testing response bodies.
     * 
     * @var ResponseBodies $$responseBodies
     */
	public ResponseBodies $responseBodies;
	
    /**
     * Endpoints for testing servers.
     * 
     * @var Servers $$servers
     */
	public Servers $servers;
	
    /**
     * Endpoints for testing union types.
     * 
     * @var Unions $$unions
     */
	public Unions $unions;
		
	// SDK private variables namespaced with _ to avoid conflicts with API models
	private ?\GuzzleHttp\ClientInterface $_defaultClient;
	private ?\GuzzleHttp\ClientInterface $_securityClient;
	private ?Models\Shared\Security $_security;
	private string $_serverUrl;
	private string $_language = 'php';
	private string $_sdkVersion = '1.1.0';
	private string $_genVersion = '2.30.0';
	/** @var array<string, array<string, array<string, mixed>>> */
	private ?array $_globals;

	/**
	 * Returns a new instance of the SDK builder used to configure and create the SDK instance.
	 * 
	 * @return SDKBuilder
	 */
	public static function builder(): SDKBuilder
	{
		return new SDKBuilder();
	}

	/**
	 * @param \GuzzleHttp\ClientInterface|null $client	 
	 * @param Models\Shared\Security|null $security
	 * @param string $serverUrl
	 * @param array<string, string>|null $params
	 * @param array<string, array<string, array<string, string>>> $globals
	 */
	public function __construct(?\GuzzleHttp\ClientInterface $client, ?Models\Shared\Security $security, string $serverUrl, ?array $params, ?array $globals)
	{
		$this->_defaultClient = $client;
		
		if ($this->_defaultClient === null) {
			$this->_defaultClient = new \GuzzleHttp\Client([
				'timeout' => 60,
			]);
		}

		$this->_securityClient = null;
		if ($security !== null) {
			$this->_security = $security;
			$this->_securityClient = Utils\Utils::configureSecurityClient($this->_defaultClient, $this->_security);
		}
		
		if ($this->_securityClient === null) {
			$this->_securityClient = $this->_defaultClient;
		}

		if (!empty($serverUrl)) {
			$this->_serverUrl = Utils\Utils::templateUrl($serverUrl, $params);
		}
		
		if (empty($this->_serverUrl)) {
			$this->_serverUrl = $this::SERVERS[0];
		}
		$this->_globals = $globals;
		
		$this->auth = new Auth(
			$this->_defaultClient,
			$this->_securityClient,
			$this->_serverUrl,
			$this->_language,
			$this->_sdkVersion,
			$this->_genVersion,
			$this->_globals
		);
		
		$this->authNew = new AuthNew(
			$this->_defaultClient,
			$this->_securityClient,
			$this->_serverUrl,
			$this->_language,
			$this->_sdkVersion,
			$this->_genVersion,
			$this->_globals
		);
		
		$this->errors = new Errors(
			$this->_defaultClient,
			$this->_securityClient,
			$this->_serverUrl,
			$this->_language,
			$this->_sdkVersion,
			$this->_genVersion,
			$this->_globals
		);
		
		$this->flattening = new Flattening(
			$this->_defaultClient,
			$this->_securityClient,
			$this->_serverUrl,
			$this->_language,
			$this->_sdkVersion,
			$this->_genVersion,
			$this->_globals
		);
		
		$this->generation = new Generation(
			$this->_defaultClient,
			$this->_securityClient,
			$this->_serverUrl,
			$this->_language,
			$this->_sdkVersion,
			$this->_genVersion,
			$this->_globals
		);
		
		$this->globals = new Globals(
			$this->_defaultClient,
			$this->_securityClient,
			$this->_serverUrl,
			$this->_language,
			$this->_sdkVersion,
			$this->_genVersion,
			$this->_globals
		);
		
		$this->parameters = new Parameters(
			$this->_defaultClient,
			$this->_securityClient,
			$this->_serverUrl,
			$this->_language,
			$this->_sdkVersion,
			$this->_genVersion,
			$this->_globals
		);
		
		$this->requestBodies = new RequestBodies(
			$this->_defaultClient,
			$this->_securityClient,
			$this->_serverUrl,
			$this->_language,
			$this->_sdkVersion,
			$this->_genVersion,
			$this->_globals
		);
		
		$this->responseBodies = new ResponseBodies(
			$this->_defaultClient,
			$this->_securityClient,
			$this->_serverUrl,
			$this->_language,
			$this->_sdkVersion,
			$this->_genVersion,
			$this->_globals
		);
		
		$this->servers = new Servers(
			$this->_defaultClient,
			$this->_securityClient,
			$this->_serverUrl,
			$this->_language,
			$this->_sdkVersion,
			$this->_genVersion,
			$this->_globals
		);
		
		$this->unions = new Unions(
			$this->_defaultClient,
			$this->_securityClient,
			$this->_serverUrl,
			$this->_language,
			$this->_sdkVersion,
			$this->_genVersion,
			$this->_globals
		);
	}
	
    /**
     * putAnythingIgnoredGeneration
     * 
     * @param string $request
     * @return \OpenAPI\OpenAPI\Models\Operations\PutAnythingIgnoredGenerationResponse
     */
	public function putAnythingIgnoredGeneration(
        string $request,
    ): \OpenAPI\OpenAPI\Models\Operations\PutAnythingIgnoredGenerationResponse
    {
        $baseUrl = $this->_serverUrl;
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/ignoredGeneration');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "request", "string");
        $options = array_merge_recursive($options, $body);
        $options['headers']['user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->_language, $this->_sdkVersion, $this->_genVersion);
        
        $httpResponse = $this->_securityClient->request('PUT', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\PutAnythingIgnoredGenerationResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->putAnythingIgnoredGeneration200ApplicationJSONObject = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\PutAnythingIgnoredGeneration200ApplicationJSON', 'json');
            }
        }

        return $response;
    }
	
    /**
     * responseBodyJsonGet
     * 
     * @return \OpenAPI\OpenAPI\Models\Operations\ResponseBodyJsonGetResponse
     */
	public function responseBodyJsonGet(
    ): \OpenAPI\OpenAPI\Models\Operations\ResponseBodyJsonGetResponse
    {
        $baseUrl = $this->_serverUrl;
        $url = Utils\Utils::generateUrl($baseUrl, '/json');
        
        $options = ['http_errors' => false];
        $options['headers']['user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->_language, $this->_sdkVersion, $this->_genVersion);
        
        $httpResponse = $this->_securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\ResponseBodyJsonGetResponse();
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
}