<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


class RequestBodyPutMultipartSimpleResHeaders
{
	#[\JMS\Serializer\Annotation\SerializedName('Content-Type')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $contentType;
    
	public function __construct()
	{
		$this->contentType = "";
	}
}
