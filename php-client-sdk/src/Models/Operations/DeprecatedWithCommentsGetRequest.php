<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;

use \OpenAPI\OpenAPI\Utils\SpeakeasyMetadata;
class DeprecatedWithCommentsGetRequest
{
    /**
     * This is a string parameter
     * 
     * @var ?string $deprecatedParameter
     * @deprecated this field will be removed in a future release, please migrate away from it as soon as possible
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=deprecatedParameter')]
    public ?string $deprecatedParameter = null;
    
	public function __construct()
	{
		$this->deprecatedParameter = null;
	}
}
