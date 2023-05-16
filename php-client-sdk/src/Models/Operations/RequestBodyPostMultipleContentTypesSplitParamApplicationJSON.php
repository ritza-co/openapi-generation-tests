<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


class RequestBodyPostMultipleContentTypesSplitParamApplicationJSON
{
	#[\JMS\Serializer\Annotation\SerializedName('bool')]
    #[\JMS\Serializer\Annotation\Type('bool')]
    public bool $bool;
    
	#[\JMS\Serializer\Annotation\SerializedName('num')]
    #[\JMS\Serializer\Annotation\Type('float')]
    public float $num;
    
	#[\JMS\Serializer\Annotation\SerializedName('str')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $str;
    
	public function __construct()
	{
		$this->bool = false;
		$this->num = 0;
		$this->str = "";
	}
}
