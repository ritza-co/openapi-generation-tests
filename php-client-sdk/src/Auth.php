<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI;

class Auth 
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
     * apiKeyAuth
     * 
     * @param \OpenAPI\OpenAPI\Models\Operations\ApiKeyAuthSecurity $security
     * @return \OpenAPI\OpenAPI\Models\Operations\ApiKeyAuthResponse
     */
	public function apiKeyAuth(
        \OpenAPI\OpenAPI\Models\Operations\ApiKeyAuthSecurity $security,
    ): \OpenAPI\OpenAPI\Models\Operations\ApiKeyAuthResponse
    {
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/bearer#operation');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion);
        
        $client = Utils\Utils::configureSecurityClient($this->sdkConfiguration->defaultClient, $security);
        $httpResponse = $client->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\ApiKeyAuthResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->token = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\ApiKeyAuthToken', 'json');
            }
        }
        else if ($httpResponse->getStatusCode() === 401) {
        }

        return $response;
    }
	
    /**
     * apiKeyAuthGlobal
     * 
     * @return \OpenAPI\OpenAPI\Models\Operations\ApiKeyAuthGlobalResponse
     */
	public function apiKeyAuthGlobal(
    ): \OpenAPI\OpenAPI\Models\Operations\ApiKeyAuthGlobalResponse
    {
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/bearer');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\ApiKeyAuthGlobalResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->token = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\ApiKeyAuthGlobalToken', 'json');
            }
        }
        else if ($httpResponse->getStatusCode() === 401) {
        }

        return $response;
    }
	
    /**
     * basicAuth
     * 
     * @param \OpenAPI\OpenAPI\Models\Operations\BasicAuthSecurity $security
     * @param string $passwd
     * @param string $user
     * @return \OpenAPI\OpenAPI\Models\Operations\BasicAuthResponse
     */
	public function basicAuth(
        \OpenAPI\OpenAPI\Models\Operations\BasicAuthSecurity $security,
        string $passwd,
        string $user,
    ): \OpenAPI\OpenAPI\Models\Operations\BasicAuthResponse
    {
        $request = new \OpenAPI\OpenAPI\Models\Operations\BasicAuthRequest();
        $request->passwd = $passwd;
        $request->user = $user;
        
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/basic-auth/{user}/{passwd}', \OpenAPI\OpenAPI\Models\Operations\BasicAuthRequest::class, $request, $this->sdkConfiguration->globals);
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion);
        
        $client = Utils\Utils::configureSecurityClient($this->sdkConfiguration->defaultClient, $security);
        $httpResponse = $client->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\BasicAuthResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->user = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\BasicAuthUser', 'json');
            }
        }
        else if ($httpResponse->getStatusCode() === 401) {
        }

        return $response;
    }
	
    /**
     * bearerAuth
     * 
     * @param \OpenAPI\OpenAPI\Models\Operations\BearerAuthSecurity $security
     * @return \OpenAPI\OpenAPI\Models\Operations\BearerAuthResponse
     */
	public function bearerAuth(
        \OpenAPI\OpenAPI\Models\Operations\BearerAuthSecurity $security,
    ): \OpenAPI\OpenAPI\Models\Operations\BearerAuthResponse
    {
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/bearer#bearer');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion);
        
        $client = Utils\Utils::configureSecurityClient($this->sdkConfiguration->defaultClient, $security);
        $httpResponse = $client->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\BearerAuthResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->token = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\BearerAuthToken', 'json');
            }
        }
        else if ($httpResponse->getStatusCode() === 401) {
        }

        return $response;
    }
	
    /**
     * oauth2Auth
     * 
     * @param \OpenAPI\OpenAPI\Models\Operations\Oauth2AuthSecurity $security
     * @return \OpenAPI\OpenAPI\Models\Operations\Oauth2AuthResponse
     */
	public function oauth2Auth(
        \OpenAPI\OpenAPI\Models\Operations\Oauth2AuthSecurity $security,
    ): \OpenAPI\OpenAPI\Models\Operations\Oauth2AuthResponse
    {
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/bearer#oauth2');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion);
        
        $client = Utils\Utils::configureSecurityClient($this->sdkConfiguration->defaultClient, $security);
        $httpResponse = $client->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\Oauth2AuthResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->token = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\Oauth2AuthToken', 'json');
            }
        }
        else if ($httpResponse->getStatusCode() === 401) {
        }

        return $response;
    }
	
    /**
     * openIdConnectAuth
     * 
     * @param \OpenAPI\OpenAPI\Models\Operations\OpenIdConnectAuthSecurity $security
     * @return \OpenAPI\OpenAPI\Models\Operations\OpenIdConnectAuthResponse
     */
	public function openIdConnectAuth(
        \OpenAPI\OpenAPI\Models\Operations\OpenIdConnectAuthSecurity $security,
    ): \OpenAPI\OpenAPI\Models\Operations\OpenIdConnectAuthResponse
    {
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/bearer#openIdConnect');
        
        $options = ['http_errors' => false];
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion);
        
        $client = Utils\Utils::configureSecurityClient($this->sdkConfiguration->defaultClient, $security);
        $httpResponse = $client->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\OpenIdConnectAuthResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->token = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\OpenIdConnectAuthToken', 'json');
            }
        }
        else if ($httpResponse->getStatusCode() === 401) {
        }

        return $response;
    }
}