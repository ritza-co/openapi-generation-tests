<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;

use \OpenAPI\OpenAPI\Utils\SpeakeasyMetadata;
class MultipleMixedSchemeAuthSecurity
{
	#[SpeakeasyMetadata('security:scheme=true,type=apiKey,subtype=header,name=x-api-key')]
    public string $apiKeyAuthNew;
    
	#[SpeakeasyMetadata('security:scheme=true,type=http,subtype=basic')]
    public \OpenAPI\OpenAPI\Models\Shared\SchemeBasicAuth $basicAuth;
    
	public function __construct()
	{
		$this->apiKeyAuthNew = "";
		$this->basicAuth = new \OpenAPI\OpenAPI\Models\Shared\SchemeBasicAuth();
	}
}
