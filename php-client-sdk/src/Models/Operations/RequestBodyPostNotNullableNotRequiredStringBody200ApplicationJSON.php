<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


/**
 * RequestBodyPostNotNullableNotRequiredStringBody200ApplicationJSON - OK
 * 
 * @package OpenAPI\OpenAPI\Models\Operations
 * @access public
 */
class RequestBodyPostNotNullableNotRequiredStringBody200ApplicationJSON
{
	#[\JMS\Serializer\Annotation\SerializedName('data')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $data;
    
	public function __construct()
	{
		$this->data = "";
	}
}
