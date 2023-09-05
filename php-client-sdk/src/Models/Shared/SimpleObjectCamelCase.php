<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Shared;


/**
 * SimpleObjectCamelCase - A simple object that uses all our supported primitive types and enums and has optional properties.
 * 
 * https://docs.speakeasyapi.dev - A link to the external docs.
 * 
 * @package OpenAPI\OpenAPI\Models\Shared
 * @access public
 * @see https://docs.speakeasyapi.dev
 */
class SimpleObjectCamelCase
{
    /**
     * An any property.
     * 
     * @var mixed $anyVal
     */
	#[\JMS\Serializer\Annotation\SerializedName('any_val')]
    #[\JMS\Serializer\Annotation\Type('mixed')]
    public mixed $anyVal;
    
	#[\JMS\Serializer\Annotation\SerializedName('bigint_str_val')]
    #[\JMS\Serializer\Annotation\Type('string')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?string $bigintStrVal = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('bigint_val')]
    #[\JMS\Serializer\Annotation\Type('int')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?int $bigintVal = null;
    
    /**
     * An optional boolean property.
     * 
     * @var ?bool $boolOptVal
     */
	#[\JMS\Serializer\Annotation\SerializedName('bool_opt_val')]
    #[\JMS\Serializer\Annotation\Type('bool')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?bool $boolOptVal = null;
    
    /**
     * A boolean property.
     * 
     * @var bool $boolVal
     */
	#[\JMS\Serializer\Annotation\SerializedName('bool_val')]
    #[\JMS\Serializer\Annotation\Type('bool')]
    public bool $boolVal;
    
    /**
     * A date-time property.
     * 
     * @var \DateTime $dateTimeVal
     */
	#[\JMS\Serializer\Annotation\SerializedName('date_time_val')]
    #[\JMS\Serializer\Annotation\Type("DateTime<'Y-m-d\TH:i:s.up'>")]
    public \DateTime $dateTimeVal;
    
    /**
     * A date property.
     * 
     * @var \DateTime $dateVal
     */
	#[\JMS\Serializer\Annotation\SerializedName('date_val')]
    #[\JMS\Serializer\Annotation\Type("DateTime<'Y-m-d', '', '|Y-m-d'>")]
    public \DateTime $dateVal;
    
	#[\JMS\Serializer\Annotation\SerializedName('decimal_val')]
    #[\JMS\Serializer\Annotation\Type('float')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?float $decimalVal = null;
    
    /**
     * A string based enum
     * 
     * @var \OpenAPI\OpenAPI\Models\Shared\Enum $enumVal
     */
	#[\JMS\Serializer\Annotation\SerializedName('enum_val')]
    #[\JMS\Serializer\Annotation\Type('enum<OpenAPI\OpenAPI\Models\Shared\Enum>')]
    public Enum $enumVal;
    
    /**
     * A float32 property.
     * 
     * @var float $float32Val
     */
	#[\JMS\Serializer\Annotation\SerializedName('float32_val')]
    #[\JMS\Serializer\Annotation\Type('float')]
    public float $float32Val;
    
    /**
     * An int32 enum property.
     * 
     * @var \OpenAPI\OpenAPI\Models\Shared\SimpleObjectCamelCaseInt32EnumVal $int32EnumVal
     */
	#[\JMS\Serializer\Annotation\SerializedName('int32_enum_val')]
    #[\JMS\Serializer\Annotation\Type('enum<OpenAPI\OpenAPI\Models\Shared\SimpleObjectCamelCaseInt32EnumVal>')]
    public SimpleObjectCamelCaseInt32EnumVal $int32EnumVal;
    
    /**
     * An int32 property.
     * 
     * @var int $int32Val
     */
	#[\JMS\Serializer\Annotation\SerializedName('int32_val')]
    #[\JMS\Serializer\Annotation\Type('int')]
    public int $int32Val;
    
    /**
     * An integer enum property.
     * 
     * @var \OpenAPI\OpenAPI\Models\Shared\SimpleObjectCamelCaseIntEnumVal $intEnumVal
     */
	#[\JMS\Serializer\Annotation\SerializedName('int_enum_val')]
    #[\JMS\Serializer\Annotation\Type('enum<OpenAPI\OpenAPI\Models\Shared\SimpleObjectCamelCaseIntEnumVal>')]
    public SimpleObjectCamelCaseIntEnumVal $intEnumVal;
    
    /**
     * An optional integer property will be null for tests.
     * 
     * @var ?int $intOptNullVal
     */
	#[\JMS\Serializer\Annotation\SerializedName('int_opt_null_val')]
    #[\JMS\Serializer\Annotation\Type('int')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?int $intOptNullVal = null;
    
    /**
     * An integer property.
     * 
     * @var int $intVal
     */
	#[\JMS\Serializer\Annotation\SerializedName('int_val')]
    #[\JMS\Serializer\Annotation\Type('int')]
    public int $intVal;
    
    /**
     * An optional number property will be null for tests.
     * 
     * @var ?float $numOptNullVal
     */
	#[\JMS\Serializer\Annotation\SerializedName('num_opt_null_val')]
    #[\JMS\Serializer\Annotation\Type('float')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?float $numOptNullVal = null;
    
    /**
     * A number property.
     * 
     * @var float $numVal
     */
	#[\JMS\Serializer\Annotation\SerializedName('num_val')]
    #[\JMS\Serializer\Annotation\Type('float')]
    public float $numVal;
    
    /**
     * An optional string property.
     * 
     * @var ?string $strOptVal
     */
	#[\JMS\Serializer\Annotation\SerializedName('str_opt_val')]
    #[\JMS\Serializer\Annotation\Type('string')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?string $strOptVal = null;
    
    /**
     * A string property.
     * 
     * @var string $strVal
     */
	#[\JMS\Serializer\Annotation\SerializedName('str_val')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $strVal;
    
	public function __construct()
	{
		$this->anyVal = null;
		$this->bigintStrVal = null;
		$this->bigintVal = null;
		$this->boolOptVal = null;
		$this->boolVal = false;
		$this->dateTimeVal = new \DateTime();
		$this->dateVal = new \DateTime();
		$this->decimalVal = null;
		$this->enumVal = \OpenAPI\OpenAPI\Models\Shared\Enum::One;
		$this->float32Val = 0;
		$this->int32EnumVal = \OpenAPI\OpenAPI\Models\Shared\SimpleObjectCamelCaseInt32EnumVal::FiftyFive;
		$this->int32Val = 0;
		$this->intEnumVal = \OpenAPI\OpenAPI\Models\Shared\SimpleObjectCamelCaseIntEnumVal::First;
		$this->intOptNullVal = null;
		$this->intVal = 0;
		$this->numOptNullVal = null;
		$this->numVal = 0;
		$this->strOptVal = null;
		$this->strVal = "";
	}
}
