<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


/**
 * RequestBodyPostFormMapPrimitiveRes - OK
 * 
 * @package OpenAPI\OpenAPI\Models\Operations
 * @access public
 */
class RequestBodyPostFormMapPrimitiveRes
{
    /**
     * $form
     * 
     * @var array<string, string> $form
     */
	#[\JMS\Serializer\Annotation\SerializedName('form')]
    #[\JMS\Serializer\Annotation\Type('array<string, string>')]
    public array $form;
    
	public function __construct()
	{
		$this->form = [];
	}
}
