<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


class MixedParametersPrimitivesHeaders
{
	#[\JMS\Serializer\Annotation\SerializedName('Headerparam')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $headerparam;
    
	public function __construct()
	{
		$this->headerparam = "";
	}
}
