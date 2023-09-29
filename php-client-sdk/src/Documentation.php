<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI;

class Documentation 
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
     * Gets documentation for some language, I guess.
     * 
     * @param string $language
     * @return \OpenAPI\OpenAPI\Models\Operations\GetDocumentationPerLanguageResponse
     */
	public function getDocumentationPerLanguage(
        string $language,
    ): \OpenAPI\OpenAPI\Models\Operations\GetDocumentationPerLanguageResponse
    {
        $request = new \OpenAPI\OpenAPI\Models\Operations\GetDocumentationPerLanguageRequest();
        $request->language = $language;
        
        $baseUrl = Utils\Utils::templateUrl($this->sdkConfiguration->getServerUrl(), $this->sdkConfiguration->getServerDefaults());
        $url = Utils\Utils::generateUrl($baseUrl, '/docs/per-language-docs');
        
        $options = ['http_errors' => false];
        $options = array_merge_recursive($options, Utils\Utils::getQueryParams(\OpenAPI\OpenAPI\Models\Operations\GetDocumentationPerLanguageRequest::class, $request, $this->sdkConfiguration->globals));
        $options['headers']['Accept'] = '*/*';
        $options['headers']['x-speakeasy-user-agent'] = $this->sdkConfiguration->userAgent;
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\GetDocumentationPerLanguageResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
        }

        return $response;
    }
}