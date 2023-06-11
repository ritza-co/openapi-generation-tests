<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


/**
 * RequestBodyPostMultipleContentTypesSplitParamJsonRes - OK
 * 
 * @package OpenAPI\OpenAPI\Models\Operations
 * @access public
 */
class RequestBodyPostMultipleContentTypesSplitParamJsonRes
{
    /**
     * $args
     * 
     * @var ?array<string, string> $args
     */
	#[\JMS\Serializer\Annotation\SerializedName('args')]
    #[\JMS\Serializer\Annotation\Type('array<string, string>')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?array $args = null;
    
    /**
     * $form
     * 
     * @var ?array<string, mixed> $form
     */
	#[\JMS\Serializer\Annotation\SerializedName('form')]
    #[\JMS\Serializer\Annotation\Type('array<string, mixed>')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?array $form = null;
    
    /**
     * $json
     * 
     * @var ?array<string, mixed> $json
     */
	#[\JMS\Serializer\Annotation\SerializedName('json')]
    #[\JMS\Serializer\Annotation\Type('array<string, mixed>')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?array $json = null;
    
	public function __construct()
	{
		$this->args = null;
		$this->form = null;
		$this->json = null;
	}
}
