<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


/**
 * RequestBodyPostJsonDataTypesIntegerResponseBody - OK
 * 
 * @package OpenAPI\OpenAPI\Models\Operations
 * @access public
 */
class RequestBodyPostJsonDataTypesIntegerResponseBody
{
	#[\JMS\Serializer\Annotation\SerializedName('json')]
    #[\JMS\Serializer\Annotation\Type('int')]
    public int $json;
    
	public function __construct()
	{
		$this->json = 0;
	}
}
