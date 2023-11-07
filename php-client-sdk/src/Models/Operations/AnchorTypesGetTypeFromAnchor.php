<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


/**
 * AnchorTypesGetTypeFromAnchor - A successful response that contains the simpleObject sent in the request body
 * 
 * @package OpenAPI\OpenAPI\Models\Operations
 * @access public
 */
class AnchorTypesGetTypeFromAnchor
{
    /**
     * A simple object that uses all our supported primitive types and enums and has optional properties.
     * 
     * @var ?\OpenAPI\OpenAPI\Models\Shared\SimpleObject $json
     */
	#[\JMS\Serializer\Annotation\SerializedName('json')]
    #[\JMS\Serializer\Annotation\Type('OpenAPI\OpenAPI\Models\Shared\SimpleObject')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?\OpenAPI\OpenAPI\Models\Shared\SimpleObject $json = null;
    
	public function __construct()
	{
		$this->json = null;
	}
}
