<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


class ResponseBodyOptionalGetResponse
{
	
    public string $contentType;
    
	
    public int $statusCode;
    
	
    public ?\Psr\Http\Message\ResponseInterface $rawResponse = null;
    
    /**
     * OK
     * 
     * @var ?string $responseBodyOptionalGet200TextPlainString
     */
	
    public ?string $responseBodyOptionalGet200TextPlainString = null;
    
    /**
     * OK
     * 
     * @var ?\OpenAPI\OpenAPI\Models\Shared\TypedObject1 $typedObject1
     */
	
    public ?\OpenAPI\OpenAPI\Models\Shared\TypedObject1 $typedObject1 = null;
    
	public function __construct()
	{
		$this->contentType = "";
		$this->statusCode = 0;
		$this->rawResponse = null;
		$this->responseBodyOptionalGet200TextPlainString = null;
		$this->typedObject1 = null;
	}
}
