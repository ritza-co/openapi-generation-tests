<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Shared;

use \OpenAPI\OpenAPI\Utils\SpeakeasyMetadata;
class Security
{
	#[SpeakeasyMetadata('security:scheme=true,type=apiKey,subtype=header,name=Authorization')]
    public ?string $apiKeyAuth = null;
    
	#[SpeakeasyMetadata('security:scheme=true,type=apiKey,subtype=header,name=x-api-key')]
    public ?string $apiKeyAuthNew = null;
    
	public function __construct()
	{
		$this->apiKeyAuth = null;
		$this->apiKeyAuthNew = null;
	}
}
