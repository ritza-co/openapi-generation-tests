<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI;

class AuthNew 
{
	
	public const API_KEY_AUTH_GLOBAL_NEW_SERVERS = [
		'http://localhost:35456',
	];
	
	public const BASIC_AUTH_NEW_SERVERS = [
		'http://localhost:35456',
	];
	
	public const MULTIPLE_MIXED_OPTIONS_AUTH_SERVERS = [
		'http://localhost:35456',
	];
	
	public const MULTIPLE_MIXED_SCHEME_AUTH_SERVERS = [
		'http://localhost:35456',
	];
	
	public const MULTIPLE_OPTIONS_WITH_MIXED_SCHEMES_AUTH_SERVERS = [
		'http://localhost:35456',
	];
	
	public const MULTIPLE_OPTIONS_WITH_SIMPLE_SCHEMES_AUTH_SERVERS = [
		'http://localhost:35456',
	];
	
	public const MULTIPLE_SIMPLE_OPTIONS_AUTH_SERVERS = [
		'http://localhost:35456',
	];
	
	public const MULTIPLE_SIMPLE_SCHEME_AUTH_SERVERS = [
		'http://localhost:35456',
	];
	
	public const OAUTH2_AUTH_NEW_SERVERS = [
		'http://localhost:35456',
	];
	
	public const OPEN_ID_CONNECT_AUTH_NEW_SERVERS = [
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
     * apiKeyAuthGlobalNew
     * 
     * @param \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request
     * @param string $serverURL
     * @return \OpenAPI\OpenAPI\Models\Operations\ApiKeyAuthGlobalNewResponse
     */
	public function apiKeyAuthGlobalNew(
        \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request,
        ?string $serverURL = null,
    ): \OpenAPI\OpenAPI\Models\Operations\ApiKeyAuthGlobalNewResponse
    {
        $baseUrl = Utils\Utils::templateUrl(AuthNew::API_KEY_AUTH_GLOBAL_NEW_SERVERS[0], array(
        ));
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/auth#apiKeyAuthGlobal');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "request", "json");
        $options = array_merge_recursive($options, $body);
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\ApiKeyAuthGlobalNewResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200 or $httpResponse->getStatusCode() === 401) {
        }

        return $response;
    }
	
    /**
     * basicAuthNew
     * 
     * @param \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request
     * @param \OpenAPI\OpenAPI\Models\Operations\BasicAuthNewSecurity $security
     * @param string $serverURL
     * @return \OpenAPI\OpenAPI\Models\Operations\BasicAuthNewResponse
     */
	public function basicAuthNew(
        \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request,
        \OpenAPI\OpenAPI\Models\Operations\BasicAuthNewSecurity $security,
        ?string $serverURL = null,
    ): \OpenAPI\OpenAPI\Models\Operations\BasicAuthNewResponse
    {
        $baseUrl = Utils\Utils::templateUrl(AuthNew::BASIC_AUTH_NEW_SERVERS[0], array(
        ));
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/auth#basicAuth');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "request", "json");
        $options = array_merge_recursive($options, $body);
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $client = Utils\Utils::configureSecurityClient($this->sdkConfiguration->defaultClient, $security);
        $httpResponse = $client->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\BasicAuthNewResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200 or $httpResponse->getStatusCode() === 401) {
        }

        return $response;
    }
	
    /**
     * multipleMixedOptionsAuth
     * 
     * @param \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request
     * @param \OpenAPI\OpenAPI\Models\Operations\MultipleMixedOptionsAuthSecurity $security
     * @param string $serverURL
     * @return \OpenAPI\OpenAPI\Models\Operations\MultipleMixedOptionsAuthResponse
     */
	public function multipleMixedOptionsAuth(
        \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request,
        \OpenAPI\OpenAPI\Models\Operations\MultipleMixedOptionsAuthSecurity $security,
        ?string $serverURL = null,
    ): \OpenAPI\OpenAPI\Models\Operations\MultipleMixedOptionsAuthResponse
    {
        $baseUrl = Utils\Utils::templateUrl(AuthNew::MULTIPLE_MIXED_OPTIONS_AUTH_SERVERS[0], array(
        ));
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/auth#multipleMixedOptionsAuth');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "request", "json");
        $options = array_merge_recursive($options, $body);
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $client = Utils\Utils::configureSecurityClient($this->sdkConfiguration->defaultClient, $security);
        $httpResponse = $client->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\MultipleMixedOptionsAuthResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200 or $httpResponse->getStatusCode() === 401) {
        }

        return $response;
    }
	
    /**
     * multipleMixedSchemeAuth
     * 
     * @param \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request
     * @param \OpenAPI\OpenAPI\Models\Operations\MultipleMixedSchemeAuthSecurity $security
     * @param string $serverURL
     * @return \OpenAPI\OpenAPI\Models\Operations\MultipleMixedSchemeAuthResponse
     */
	public function multipleMixedSchemeAuth(
        \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request,
        \OpenAPI\OpenAPI\Models\Operations\MultipleMixedSchemeAuthSecurity $security,
        ?string $serverURL = null,
    ): \OpenAPI\OpenAPI\Models\Operations\MultipleMixedSchemeAuthResponse
    {
        $baseUrl = Utils\Utils::templateUrl(AuthNew::MULTIPLE_MIXED_SCHEME_AUTH_SERVERS[0], array(
        ));
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/auth#multipleMixedSchemeAuth');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "request", "json");
        $options = array_merge_recursive($options, $body);
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $client = Utils\Utils::configureSecurityClient($this->sdkConfiguration->defaultClient, $security);
        $httpResponse = $client->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\MultipleMixedSchemeAuthResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200 or $httpResponse->getStatusCode() === 401) {
        }

        return $response;
    }
	
    /**
     * multipleOptionsWithMixedSchemesAuth
     * 
     * @param \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request
     * @param \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithMixedSchemesAuthSecurity $security
     * @param string $serverURL
     * @return \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithMixedSchemesAuthResponse
     */
	public function multipleOptionsWithMixedSchemesAuth(
        \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request,
        \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithMixedSchemesAuthSecurity $security,
        ?string $serverURL = null,
    ): \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithMixedSchemesAuthResponse
    {
        $baseUrl = Utils\Utils::templateUrl(AuthNew::MULTIPLE_OPTIONS_WITH_MIXED_SCHEMES_AUTH_SERVERS[0], array(
        ));
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/auth#multipleOptionsWithMixedSchemesAuth');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "request", "json");
        $options = array_merge_recursive($options, $body);
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $client = Utils\Utils::configureSecurityClient($this->sdkConfiguration->defaultClient, $security);
        $httpResponse = $client->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithMixedSchemesAuthResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200 or $httpResponse->getStatusCode() === 401) {
        }

        return $response;
    }
	
    /**
     * multipleOptionsWithSimpleSchemesAuth
     * 
     * @param \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request
     * @param \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithSimpleSchemesAuthSecurity $security
     * @param string $serverURL
     * @return \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithSimpleSchemesAuthResponse
     */
	public function multipleOptionsWithSimpleSchemesAuth(
        \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request,
        \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithSimpleSchemesAuthSecurity $security,
        ?string $serverURL = null,
    ): \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithSimpleSchemesAuthResponse
    {
        $baseUrl = Utils\Utils::templateUrl(AuthNew::MULTIPLE_OPTIONS_WITH_SIMPLE_SCHEMES_AUTH_SERVERS[0], array(
        ));
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/auth#multipleOptionsWithSimpleSchemesAuth');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "request", "json");
        $options = array_merge_recursive($options, $body);
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $client = Utils\Utils::configureSecurityClient($this->sdkConfiguration->defaultClient, $security);
        $httpResponse = $client->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\MultipleOptionsWithSimpleSchemesAuthResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200 or $httpResponse->getStatusCode() === 401) {
        }

        return $response;
    }
	
    /**
     * multipleSimpleOptionsAuth
     * 
     * @param \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request
     * @param \OpenAPI\OpenAPI\Models\Operations\MultipleSimpleOptionsAuthSecurity $security
     * @param string $serverURL
     * @return \OpenAPI\OpenAPI\Models\Operations\MultipleSimpleOptionsAuthResponse
     */
	public function multipleSimpleOptionsAuth(
        \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request,
        \OpenAPI\OpenAPI\Models\Operations\MultipleSimpleOptionsAuthSecurity $security,
        ?string $serverURL = null,
    ): \OpenAPI\OpenAPI\Models\Operations\MultipleSimpleOptionsAuthResponse
    {
        $baseUrl = Utils\Utils::templateUrl(AuthNew::MULTIPLE_SIMPLE_OPTIONS_AUTH_SERVERS[0], array(
        ));
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/auth#multipleSimpleOptionsAuth');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "request", "json");
        $options = array_merge_recursive($options, $body);
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $client = Utils\Utils::configureSecurityClient($this->sdkConfiguration->defaultClient, $security);
        $httpResponse = $client->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\MultipleSimpleOptionsAuthResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200 or $httpResponse->getStatusCode() === 401) {
        }

        return $response;
    }
	
    /**
     * multipleSimpleSchemeAuth
     * 
     * @param \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request
     * @param \OpenAPI\OpenAPI\Models\Operations\MultipleSimpleSchemeAuthSecurity $security
     * @param string $serverURL
     * @return \OpenAPI\OpenAPI\Models\Operations\MultipleSimpleSchemeAuthResponse
     */
	public function multipleSimpleSchemeAuth(
        \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request,
        \OpenAPI\OpenAPI\Models\Operations\MultipleSimpleSchemeAuthSecurity $security,
        ?string $serverURL = null,
    ): \OpenAPI\OpenAPI\Models\Operations\MultipleSimpleSchemeAuthResponse
    {
        $baseUrl = Utils\Utils::templateUrl(AuthNew::MULTIPLE_SIMPLE_SCHEME_AUTH_SERVERS[0], array(
        ));
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/auth#multipleSimpleSchemeAuth');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "request", "json");
        $options = array_merge_recursive($options, $body);
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $client = Utils\Utils::configureSecurityClient($this->sdkConfiguration->defaultClient, $security);
        $httpResponse = $client->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\MultipleSimpleSchemeAuthResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200 or $httpResponse->getStatusCode() === 401) {
        }

        return $response;
    }
	
    /**
     * oauth2AuthNew
     * 
     * @param \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request
     * @param \OpenAPI\OpenAPI\Models\Operations\Oauth2AuthNewSecurity $security
     * @param string $serverURL
     * @return \OpenAPI\OpenAPI\Models\Operations\Oauth2AuthNewResponse
     */
	public function oauth2AuthNew(
        \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request,
        \OpenAPI\OpenAPI\Models\Operations\Oauth2AuthNewSecurity $security,
        ?string $serverURL = null,
    ): \OpenAPI\OpenAPI\Models\Operations\Oauth2AuthNewResponse
    {
        $baseUrl = Utils\Utils::templateUrl(AuthNew::OAUTH2_AUTH_NEW_SERVERS[0], array(
        ));
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/auth#oauth2Auth');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "request", "json");
        $options = array_merge_recursive($options, $body);
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $client = Utils\Utils::configureSecurityClient($this->sdkConfiguration->defaultClient, $security);
        $httpResponse = $client->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\Oauth2AuthNewResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200 or $httpResponse->getStatusCode() === 401) {
        }

        return $response;
    }
	
    /**
     * openIdConnectAuthNew
     * 
     * @param \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request
     * @param \OpenAPI\OpenAPI\Models\Operations\OpenIdConnectAuthNewSecurity $security
     * @param string $serverURL
     * @return \OpenAPI\OpenAPI\Models\Operations\OpenIdConnectAuthNewResponse
     */
	public function openIdConnectAuthNew(
        \OpenAPI\OpenAPI\Models\Shared\AuthServiceRequestBody $request,
        \OpenAPI\OpenAPI\Models\Operations\OpenIdConnectAuthNewSecurity $security,
        ?string $serverURL = null,
    ): \OpenAPI\OpenAPI\Models\Operations\OpenIdConnectAuthNewResponse
    {
        $baseUrl = Utils\Utils::templateUrl(AuthNew::OPEN_ID_CONNECT_AUTH_NEW_SERVERS[0], array(
        ));
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/auth#openIdConnectAuth');
        
        $options = ['http_errors' => false];
        $body = Utils\Utils::serializeRequestBody($request, "request", "json");
        $options = array_merge_recursive($options, $body);
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $client = Utils\Utils::configureSecurityClient($this->sdkConfiguration->defaultClient, $security);
        $httpResponse = $client->request('POST', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\OpenIdConnectAuthNewResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200 or $httpResponse->getStatusCode() === 401) {
        }

        return $response;
    }
}