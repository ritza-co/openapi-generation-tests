<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


class InlineBodyAndParamNoConflictJson
{
	#[\JMS\Serializer\Annotation\SerializedName('bodyStr')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $bodyStr;
    
	public function __construct()
	{
		$this->bodyStr = "";
	}
}
