<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;

use \OpenAPI\OpenAPI\Utils\SpeakeasyMetadata;
class InlineBodyAndParamNoConflictRequest
{
	#[SpeakeasyMetadata('request:mediaType=application/json')]
    public InlineBodyAndParamNoConflictRequestBody $requestBody;
    
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=paramStr')]
    public string $paramStr;
    
	public function __construct()
	{
		$this->requestBody = new \OpenAPI\OpenAPI\Models\Operations\InlineBodyAndParamNoConflictRequestBody();
		$this->paramStr = "";
	}
}
