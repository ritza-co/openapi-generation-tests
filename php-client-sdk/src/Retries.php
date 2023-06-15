<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI;

class Retries 
{
	
	public const RETRIES_GET_SERVERS = [
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
     * retriesGet
     * 
     * @param string $requestId
     * @param ?int $numRetries
     * @param string $serverURL
     * @return \OpenAPI\OpenAPI\Models\Operations\RetriesGetResponse
     */
	public function retriesGet(
        string $requestId,
        ?int $numRetries = null,
        ?string $serverURL = null,
    ): \OpenAPI\OpenAPI\Models\Operations\RetriesGetResponse
    {
        $request = new \OpenAPI\OpenAPI\Models\Operations\RetriesGetRequest();
        $request->requestId = $requestId;
        $request->numRetries = $numRetries;
        
        $baseUrl = Utils\Utils::templateUrl(Retries::RETRIES_GET_SERVERS[0], array(
        ));
        if (!empty($serverURL)) {
            $baseUrl = $serverURL;
        }
        
        $url = Utils\Utils::generateUrl($baseUrl, '/retries');
        
        $options = ['http_errors' => false];
        $options = array_merge_recursive($options, Utils\Utils::getQueryParams(\OpenAPI\OpenAPI\Models\Operations\RetriesGetRequest::class, $request, $this->sdkConfiguration->globals));
        $options['headers']['Accept'] = 'application/json';
        $options['headers']['x-speakeasy-user-agent'] = sprintf('speakeasy-sdk/%s %s %s %s', $this->sdkConfiguration->language, $this->sdkConfiguration->sdkVersion, $this->sdkConfiguration->genVersion, $this->sdkConfiguration->openapiDocVersion);
        
        $httpResponse = $this->sdkConfiguration->securityClient->request('GET', $url, $options);
        
        $contentType = $httpResponse->getHeader('Content-Type')[0] ?? '';

        $response = new \OpenAPI\OpenAPI\Models\Operations\RetriesGetResponse();
        $response->statusCode = $httpResponse->getStatusCode();
        $response->contentType = $contentType;
        $response->rawResponse = $httpResponse;
        
        if ($httpResponse->getStatusCode() === 200) {
            if (Utils\Utils::matchContentType($contentType, 'application/json')) {
                $serializer = Utils\JSON::createSerializer();
                $response->retries = $serializer->deserialize((string)$httpResponse->getBody(), 'OpenAPI\OpenAPI\Models\Operations\RetriesGetRetries', 'json');
            }
        }

        return $response;
    }
}