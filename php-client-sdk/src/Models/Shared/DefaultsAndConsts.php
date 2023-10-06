<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Shared;


class DefaultsAndConsts
{
	#[\JMS\Serializer\Annotation\SerializedName('constBigInt')]
    #[\JMS\Serializer\Annotation\Type('int')]
    public int $constBigInt;
    
	#[\JMS\Serializer\Annotation\SerializedName('constBigIntStr')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $constBigIntStr;
    
	#[\JMS\Serializer\Annotation\SerializedName('constBool')]
    #[\JMS\Serializer\Annotation\Type('bool')]
    public bool $constBool;
    
	#[\JMS\Serializer\Annotation\SerializedName('constDate')]
    #[\JMS\Serializer\Annotation\Type("DateTime<'Y-m-d', '', '|Y-m-d'>")]
    public \DateTime $constDate;
    
	#[\JMS\Serializer\Annotation\SerializedName('constDateTime')]
    #[\JMS\Serializer\Annotation\Type("DateTime<'Y-m-d\TH:i:s.up'>")]
    public \DateTime $constDateTime;
    
	#[\JMS\Serializer\Annotation\SerializedName('constDecimal')]
    #[\JMS\Serializer\Annotation\Type('float')]
    public float $constDecimal;
    
	#[\JMS\Serializer\Annotation\SerializedName('constDecimalStr')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $constDecimalStr;
    
	#[\JMS\Serializer\Annotation\SerializedName('constEnumInt')]
    #[\JMS\Serializer\Annotation\Type('enum<OpenAPI\OpenAPI\Models\Shared\DefaultsAndConstsConstEnumInt>')]
    public DefaultsAndConstsConstEnumInt $constEnumInt;
    
	#[\JMS\Serializer\Annotation\SerializedName('constEnumStr')]
    #[\JMS\Serializer\Annotation\Type('enum<OpenAPI\OpenAPI\Models\Shared\DefaultsAndConstsConstEnumStr>')]
    public DefaultsAndConstsConstEnumStr $constEnumStr;
    
	#[\JMS\Serializer\Annotation\SerializedName('constInt')]
    #[\JMS\Serializer\Annotation\Type('int')]
    public int $constInt;
    
	#[\JMS\Serializer\Annotation\SerializedName('constNum')]
    #[\JMS\Serializer\Annotation\Type('float')]
    public float $constNum;
    
	#[\JMS\Serializer\Annotation\SerializedName('constStr')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $constStr;
    
	#[\JMS\Serializer\Annotation\SerializedName('constStrNull')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $constStrNull;
    
	#[\JMS\Serializer\Annotation\SerializedName('defaultBigInt')]
    #[\JMS\Serializer\Annotation\Type('int')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?int $defaultBigInt = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('defaultBigIntStr')]
    #[\JMS\Serializer\Annotation\Type('string')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?string $defaultBigIntStr = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('defaultBool')]
    #[\JMS\Serializer\Annotation\Type('bool')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?bool $defaultBool = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('defaultDate')]
    #[\JMS\Serializer\Annotation\Type("DateTime<'Y-m-d', '', '|Y-m-d'>")]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?\DateTime $defaultDate = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('defaultDateTime')]
    #[\JMS\Serializer\Annotation\Type("DateTime<'Y-m-d\TH:i:s.up'>")]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?\DateTime $defaultDateTime = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('defaultDecimal')]
    #[\JMS\Serializer\Annotation\Type('float')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?float $defaultDecimal = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('defaultDecimalStr')]
    #[\JMS\Serializer\Annotation\Type('string')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?string $defaultDecimalStr = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('defaultEnumInt')]
    #[\JMS\Serializer\Annotation\Type('enum<OpenAPI\OpenAPI\Models\Shared\DefaultsAndConstsDefaultEnumInt>')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?DefaultsAndConstsDefaultEnumInt $defaultEnumInt = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('defaultEnumStr')]
    #[\JMS\Serializer\Annotation\Type('enum<OpenAPI\OpenAPI\Models\Shared\DefaultsAndConstsDefaultEnumStr>')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?DefaultsAndConstsDefaultEnumStr $defaultEnumStr = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('defaultInt')]
    #[\JMS\Serializer\Annotation\Type('int')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?int $defaultInt = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('defaultNum')]
    #[\JMS\Serializer\Annotation\Type('float')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?float $defaultNum = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('defaultStr')]
    #[\JMS\Serializer\Annotation\Type('string')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?string $defaultStr = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('defaultStrNullable')]
    #[\JMS\Serializer\Annotation\Type('string')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?string $defaultStrNullable = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('defaultStrOptional')]
    #[\JMS\Serializer\Annotation\Type('string')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?string $defaultStrOptional = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('normalField')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $normalField;
    
	public function __construct()
	{
		$this->constBigInt = 0;
		$this->constBigIntStr = "";
		$this->constBool = false;
		$this->constDate = new \DateTime();
		$this->constDateTime = new \DateTime();
		$this->constDecimal = 0;
		$this->constDecimalStr = "";
		$this->constEnumInt = \OpenAPI\OpenAPI\Models\Shared\DefaultsAndConstsConstEnumInt::One;
		$this->constEnumStr = \OpenAPI\OpenAPI\Models\Shared\DefaultsAndConstsConstEnumStr::One;
		$this->constInt = 0;
		$this->constNum = 0;
		$this->constStr = "";
		$this->constStrNull = "";
		$this->defaultBigInt = null;
		$this->defaultBigIntStr = null;
		$this->defaultBool = null;
		$this->defaultDate = null;
		$this->defaultDateTime = null;
		$this->defaultDecimal = null;
		$this->defaultDecimalStr = null;
		$this->defaultEnumInt = null;
		$this->defaultEnumStr = null;
		$this->defaultInt = null;
		$this->defaultNum = null;
		$this->defaultStr = null;
		$this->defaultStrNullable = null;
		$this->defaultStrOptional = null;
		$this->normalField = "";
	}
}
