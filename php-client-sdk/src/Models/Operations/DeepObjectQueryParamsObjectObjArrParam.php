<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;

use \OpenAPI\OpenAPI\Utils\SpeakeasyMetadata;
/**
 * DeepObjectQueryParamsObjectObjArrParam
 * 
 * @package OpenAPI\OpenAPI\Models\Operations
 * @access public
 */
class DeepObjectQueryParamsObjectObjArrParam
{
    /**
     * $arr
     * 
     * @var ?array<string> $arr
     */
	#[SpeakeasyMetadata('queryParam:name=arr')]
    public ?array $arr = null;
    
	public function __construct()
	{
		$this->arr = null;
	}
}
