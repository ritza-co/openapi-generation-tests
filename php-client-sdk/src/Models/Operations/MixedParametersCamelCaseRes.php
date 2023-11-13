<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


/**
 * MixedParametersCamelCaseRes - OK
 * 
 * @package OpenAPI\OpenAPI\Models\Operations
 * @access public
 */
class MixedParametersCamelCaseRes
{
	#[\JMS\Serializer\Annotation\SerializedName('args')]
    #[\JMS\Serializer\Annotation\Type('OpenAPI\OpenAPI\Models\Operations\MixedParametersCamelCaseArgs')]
    public MixedParametersCamelCaseArgs $args;
    
	#[\JMS\Serializer\Annotation\SerializedName('headers')]
    #[\JMS\Serializer\Annotation\Type('OpenAPI\OpenAPI\Models\Operations\MixedParametersCamelCaseHeaders')]
    public MixedParametersCamelCaseHeaders $headers;
    
	#[\JMS\Serializer\Annotation\SerializedName('url')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $url;
    
	public function __construct()
	{
		$this->args = new \OpenAPI\OpenAPI\Models\Operations\MixedParametersCamelCaseArgs();
		$this->headers = new \OpenAPI\OpenAPI\Models\Operations\MixedParametersCamelCaseHeaders();
		$this->url = "";
	}
}
