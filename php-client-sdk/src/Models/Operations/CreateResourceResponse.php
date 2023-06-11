<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


class CreateResourceResponse
{
	
    public string $contentType;
    
    /**
     * OK
     * 
     * @var ?\OpenAPI\OpenAPI\Models\Shared\ExampleResource $exampleResource
     */
	
    public ?\OpenAPI\OpenAPI\Models\Shared\ExampleResource $exampleResource = null;
    
	
    public int $statusCode;
    
	
    public ?\Psr\Http\Message\ResponseInterface $rawResponse = null;
    
	public function __construct()
	{
		$this->contentType = "";
		$this->exampleResource = null;
		$this->statusCode = 0;
		$this->rawResponse = null;
	}
}
