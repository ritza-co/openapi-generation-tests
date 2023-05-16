<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;

use \OpenAPI\OpenAPI\Utils\SpeakeasyMetadata;
class MultipleOptionsWithSimpleSchemesAuthSecurityOption2
{
	#[SpeakeasyMetadata('security:scheme=true,type=apiKey,subtype=header,name=x-api-key')]
    public string $apiKeyAuthNew;
    
	#[SpeakeasyMetadata('security:scheme=true,type=openIdConnect,name=Authorization')]
    public string $openIdConnect;
    
	public function __construct()
	{
		$this->apiKeyAuthNew = "";
		$this->openIdConnect = "";
	}
}
