<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


/**
 * FormQueryParamsPrimitiveRes - OK
 * 
 * @package OpenAPI\OpenAPI\Models\Operations
 * @access public
 */
class FormQueryParamsPrimitiveRes
{
	#[\JMS\Serializer\Annotation\SerializedName('args')]
    #[\JMS\Serializer\Annotation\Type('OpenAPI\OpenAPI\Models\Operations\FormQueryParamsPrimitiveResArgs')]
    public FormQueryParamsPrimitiveResArgs $args;
    
	#[\JMS\Serializer\Annotation\SerializedName('url')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $url;
    
	public function __construct()
	{
		$this->args = new \OpenAPI\OpenAPI\Models\Operations\FormQueryParamsPrimitiveResArgs();
		$this->url = "";
	}
}
