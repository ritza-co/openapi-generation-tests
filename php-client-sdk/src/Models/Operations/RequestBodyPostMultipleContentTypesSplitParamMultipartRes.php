<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


/**
 * RequestBodyPostMultipleContentTypesSplitParamMultipartRes - OK
 * 
 * @package OpenAPI\OpenAPI\Models\Operations
 * @access public
 */
class RequestBodyPostMultipleContentTypesSplitParamMultipartRes
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
    
	#[\JMS\Serializer\Annotation\SerializedName('form')]
    #[\JMS\Serializer\Annotation\Type('OpenAPI\OpenAPI\Models\Operations\RequestBodyPostMultipleContentTypesSplitParamMultipartResForm')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?RequestBodyPostMultipleContentTypesSplitParamMultipartResForm $form = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('json')]
    #[\JMS\Serializer\Annotation\Type('OpenAPI\OpenAPI\Models\Operations\RequestBodyPostMultipleContentTypesSplitParamMultipartResJson')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?RequestBodyPostMultipleContentTypesSplitParamMultipartResJson $json = null;
    
	public function __construct()
	{
		$this->args = null;
		$this->form = null;
		$this->json = null;
	}
}
