<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


class MixedParametersCamelCaseResHeaders
{
	#[\JMS\Serializer\Annotation\SerializedName('Header-Param')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $headerParam;
    
	public function __construct()
	{
		$this->headerParam = "";
	}
}
