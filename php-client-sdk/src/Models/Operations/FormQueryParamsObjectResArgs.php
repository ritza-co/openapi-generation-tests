<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


class FormQueryParamsObjectResArgs
{
	#[\JMS\Serializer\Annotation\SerializedName('any')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $any;
    
	#[\JMS\Serializer\Annotation\SerializedName('bigint')]
    #[\JMS\Serializer\Annotation\Type('string')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?string $bigint = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('bigintStr')]
    #[\JMS\Serializer\Annotation\Type('string')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?string $bigintStr = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('bool')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $bool;
    
	#[\JMS\Serializer\Annotation\SerializedName('boolOpt')]
    #[\JMS\Serializer\Annotation\Type('string')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?string $boolOpt = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('date')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $date;
    
	#[\JMS\Serializer\Annotation\SerializedName('dateTime')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $dateTime;
    
	#[\JMS\Serializer\Annotation\SerializedName('enum')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $enum;
    
	#[\JMS\Serializer\Annotation\SerializedName('float32')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $float32;
    
	#[\JMS\Serializer\Annotation\SerializedName('int')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $int;
    
	#[\JMS\Serializer\Annotation\SerializedName('int32')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $int32;
    
	#[\JMS\Serializer\Annotation\SerializedName('int32Enum')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $int32Enum;
    
	#[\JMS\Serializer\Annotation\SerializedName('intEnum')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $intEnum;
    
	#[\JMS\Serializer\Annotation\SerializedName('intOptNull')]
    #[\JMS\Serializer\Annotation\Type('string')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?string $intOptNull = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('num')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $num;
    
	#[\JMS\Serializer\Annotation\SerializedName('numOptNull')]
    #[\JMS\Serializer\Annotation\Type('string')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?string $numOptNull = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('objParam')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $objParam;
    
	#[\JMS\Serializer\Annotation\SerializedName('str')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $str;
    
	#[\JMS\Serializer\Annotation\SerializedName('strOpt')]
    #[\JMS\Serializer\Annotation\Type('string')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?string $strOpt = null;
    
	public function __construct()
	{
		$this->any = "";
		$this->bigint = null;
		$this->bigintStr = null;
		$this->bool = "";
		$this->boolOpt = null;
		$this->date = "";
		$this->dateTime = "";
		$this->enum = "";
		$this->float32 = "";
		$this->int = "";
		$this->int32 = "";
		$this->int32Enum = "";
		$this->intEnum = "";
		$this->intOptNull = null;
		$this->num = "";
		$this->numOptNull = null;
		$this->objParam = "";
		$this->str = "";
		$this->strOpt = null;
	}
}
