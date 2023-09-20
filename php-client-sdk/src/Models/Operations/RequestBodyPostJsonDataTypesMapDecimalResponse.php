<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


class RequestBodyPostJsonDataTypesMapDecimalResponse
{
	
    public string $contentType;
    
	
    public int $statusCode;
    
	
    public ?\Psr\Http\Message\ResponseInterface $rawResponse = null;
    
    /**
     * OK
     * 
     * @var ?\OpenAPI\OpenAPI\Models\Operations\RequestBodyPostJSONDataTypesMapDecimal200ApplicationJSON $requestBodyPostJSONDataTypesMapDecimal200ApplicationJSONObject
     */
	
    public ?RequestBodyPostJSONDataTypesMapDecimal200ApplicationJSON $requestBodyPostJSONDataTypesMapDecimal200ApplicationJSONObject = null;
    
	public function __construct()
	{
		$this->contentType = "";
		$this->statusCode = 0;
		$this->rawResponse = null;
		$this->requestBodyPostJSONDataTypesMapDecimal200ApplicationJSONObject = null;
	}
}
