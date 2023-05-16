<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


class RequestBodyPostFormDeepResForm
{
	#[\JMS\Serializer\Annotation\SerializedName('arr')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $arr;
    
	#[\JMS\Serializer\Annotation\SerializedName('bool')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $bool;
    
	#[\JMS\Serializer\Annotation\SerializedName('int')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $int;
    
	#[\JMS\Serializer\Annotation\SerializedName('map')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $map;
    
	#[\JMS\Serializer\Annotation\SerializedName('num')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $num;
    
	#[\JMS\Serializer\Annotation\SerializedName('obj')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $obj;
    
	#[\JMS\Serializer\Annotation\SerializedName('str')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $str;
    
	public function __construct()
	{
		$this->arr = "";
		$this->bool = "";
		$this->int = "";
		$this->map = "";
		$this->num = "";
		$this->obj = "";
		$this->str = "";
	}
}
