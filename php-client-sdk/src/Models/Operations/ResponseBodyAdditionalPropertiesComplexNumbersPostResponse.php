<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


class ResponseBodyAdditionalPropertiesComplexNumbersPostResponse
{
	
    public string $contentType;
    
	
    public int $statusCode;
    
	
    public ?\Psr\Http\Message\ResponseInterface $rawResponse = null;
    
    /**
     * OK
     * 
     * @var ?\OpenAPI\OpenAPI\Models\Operations\ResponseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSON $responseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSONObject
     */
	
    public ?ResponseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSON $responseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSONObject = null;
    
	public function __construct()
	{
		$this->contentType = "";
		$this->statusCode = 0;
		$this->rawResponse = null;
		$this->responseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSONObject = null;
	}
}
