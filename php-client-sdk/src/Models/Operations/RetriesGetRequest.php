<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;

use \OpenAPI\OpenAPI\Utils\SpeakeasyMetadata;
class RetriesGetRequest
{
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=request-id')]
    public string $requestId;
    
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=num-retries')]
    public ?int $numRetries = null;
    
	public function __construct()
	{
		$this->requestId = "";
		$this->numRetries = null;
	}
}
