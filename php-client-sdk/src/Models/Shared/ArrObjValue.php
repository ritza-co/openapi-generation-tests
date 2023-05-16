<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Shared;


/**
 * ArrObjValue - OK
 * 
 * @package OpenAPI\OpenAPI\Models\Shared
 * @access public
 */
class ArrObjValue
{
    /**
     * $json
     * 
     * @var ?array<\OpenAPI\OpenAPI\Models\Shared\SimpleObject> $json
     */
	#[\JMS\Serializer\Annotation\SerializedName('json')]
    #[\JMS\Serializer\Annotation\Type('array<OpenAPI\OpenAPI\Models\Shared\SimpleObject>')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?array $json = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('required')]
    #[\JMS\Serializer\Annotation\Type('mixed')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public mixed $required = null;
    
	public function __construct()
	{
		$this->json = null;
		$this->required = null;
	}
}
