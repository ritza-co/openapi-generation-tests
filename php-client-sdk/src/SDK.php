<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI;

/**
 * SDK - Test: Test Summary
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
        /** A server url with templated variables. */
		'http://localhost:35123/anything/{something}',
        /** A server url with templated variables (including the protocol). */
		'{protocol}://{hostname}:{port}',
	];
  	
    /**
     * Endpoints for purely testing valid generation behavior.
     * 
     * @var Generation $$generation
     */
	public Generation $generation;
	
    /**
     * Endpoints for testing error responses.
     * 
     * @var Errors $$errors
     */
	public Errors $errors;
	
    /**
     * Endpoints for testing union types.
     * 
     * @var Unions $$unions
     */
	public Unions $unions;
	
    /**
     * Endpoints for testing flattening through request body and parameter combinations.
     * 
     * @var Flattening $$flattening
     */
	public Flattening $flattening;
	
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
	
	public NestFirst $nestFirst;
	
	public Nested $nested;
	
	public NestedFirst $nestedFirst;
	
	public NestedSecond $nestedSecond;
	
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
     * Endpoints for testing telemetry.
     * 
     * @var Telemetry $$telemetry
     */
	public Telemetry $telemetry;
	
    /**
     * Endpoints for testing authentication.
     * 
     * @var AuthNew $$authNew
     */
	public AuthNew $authNew;
	
    /**
     * Endpoints for testing authentication.
     * 
     * @var Auth $$auth
     */
	public Auth $auth;
	
    /**
     * Testing for documentation extensions and tooling.
     * 
     * @var Documentation $$documentation
     */
	public Documentation $documentation;
	
	public Resource $resource;
	
	public First $first;
	
	public Second $second;
	
    /**
     * Endpoints for testing the pagination extension
     * 
     * @var Pagination $$pagination
     */
	public Pagination $pagination;
	
    /**
     * Endpoints for testing retries.
     * 
     * @var Retries $$retries
     */
	public Retries $retries;
		
	private SDKConfiguration $sdkConfiguration;

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
	 * @param SDKConfiguration $sdkConfiguration
	 */
	public function __construct(SDKConfiguration $sdkConfiguration)
	{
		$this->sdkConfiguration = $sdkConfiguration;
		
		$this->generation = new Generation($this->sdkConfiguration);
		
		$this->errors = new Errors($this->sdkConfiguration);
		
		$this->unions = new Unions($this->sdkConfiguration);
		
		$this->flattening = new Flattening($this->sdkConfiguration);
		
		$this->globals = new Globals($this->sdkConfiguration);
		
		$this->parameters = new Parameters($this->sdkConfiguration);
		
		$this->nestFirst = new NestFirst($this->sdkConfiguration);
		
		$this->nested = new Nested($this->sdkConfiguration);
		
		$this->nestedFirst = new NestedFirst($this->sdkConfiguration);
		
		$this->nestedSecond = new NestedSecond($this->sdkConfiguration);
		
		$this->requestBodies = new RequestBodies($this->sdkConfiguration);
		
		$this->responseBodies = new ResponseBodies($this->sdkConfiguration);
		
		$this->servers = new Servers($this->sdkConfiguration);
		
		$this->telemetry = new Telemetry($this->sdkConfiguration);
		
		$this->authNew = new AuthNew($this->sdkConfiguration);
		
		$this->auth = new Auth($this->sdkConfiguration);
		
		$this->documentation = new Documentation($this->sdkConfiguration);
		
		$this->resource = new Resource($this->sdkConfiguration);
		
		$this->first = new First($this->sdkConfiguration);
		
		$this->second = new Second($this->sdkConfiguration);
		
		$this->pagination = new Pagination($this->sdkConfiguration);
		
		$this->retries = new Retries($this->sdkConfiguration);
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
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/anything/ignoredGeneration');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "request", "json");
        if ($body === null) {
            throw new \Exception('Request body is required');
        }
        $options = array_merge_recursive($options, $body);
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = $this->sdkConfiguration->userAgent;
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('PUT', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $statusCode = $httpResponse->getStatusCode();

        $response = new \OpenAPI\OpenAPI\Models\Operations\PutAnythingIgnoredGenerationResponse();
        $response->statusCode = $statusCode;
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->object = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\PutAnythingIgnoredGenerationResponseBody', 'json');
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
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/json');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = $this->sdkConfiguration->userAgent;
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $statusCode = $httpResponse->getStatusCode();

        $response = new \OpenAPI\OpenAPI\Models\Operations\ResponseBodyJsonGetResponse();
        $response->statusCode = $statusCode;
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