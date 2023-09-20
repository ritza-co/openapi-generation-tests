<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


/**
 * RequestBodyPostJSONDataTypesMapDecimal200ApplicationJSON - OK
 * 
 * @package OpenAPI\OpenAPI\Models\Operations
 * @access public
 */
class RequestBodyPostJSONDataTypesMapDecimal200ApplicationJSON
{
    /**
     * $json
     * 
     * @var array<string, float> $json
     */
	#[\JMS\Serializer\Annotation\SerializedName('json')]
    #[\JMS\Serializer\Annotation\Type('array<string, float>')]
    public array $json;
    
	public function __construct()
	{
		$this->json = [];
	}
}
