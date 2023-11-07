<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


/**
 * ResponseBodyAdditionalPropertiesComplexNumbersPostResponseBody - OK
 * 
 * @package OpenAPI\OpenAPI\Models\Operations
 * @access public
 */
class ResponseBodyAdditionalPropertiesComplexNumbersPostResponseBody
{
    /**
     * $json
     * 
     * @var array<string, string> $json
     */
	#[\JMS\Serializer\Annotation\SerializedName('json')]
    #[\JMS\Serializer\Annotation\Type('array<string, string>')]
    public array $json;
    
	public function __construct()
	{
		$this->json = [];
	}
}
