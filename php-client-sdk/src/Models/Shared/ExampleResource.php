<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Shared;


class ExampleResource
{
    /**
     * $arrayOfNumber
     * 
     * @var ?array<float> $arrayOfNumber
     */
	#[\JMS\Serializer\Annotation\SerializedName('arrayOfNumber')]
    #[\JMS\Serializer\Annotation\Type('array<float>')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?array $arrayOfNumber = null;
    
    /**
     * $arrayOfString
     * 
     * @var ?array<string> $arrayOfString
     */
	#[\JMS\Serializer\Annotation\SerializedName('arrayOfString')]
    #[\JMS\Serializer\Annotation\Type('array<string>')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?array $arrayOfString = null;
    
    /**
     * $chocolates
     * 
     * @var array<\OpenAPI\OpenAPI\Models\Shared\Chocolates> $chocolates
     */
	#[\JMS\Serializer\Annotation\SerializedName('chocolates')]
    #[\JMS\Serializer\Annotation\Type('array<OpenAPI\OpenAPI\Models\Shared\Chocolates>')]
    public array $chocolates;
    
	#[\JMS\Serializer\Annotation\SerializedName('createdAt')]
    #[\JMS\Serializer\Annotation\Type("DateTime<'Y-m-d\TH:i:s.up'>")]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?\DateTime $createdAt = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('enumNumber')]
    #[\JMS\Serializer\Annotation\Type('enum<OpenAPI\OpenAPI\Models\Shared\EnumNumber>')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?EnumNumber $enumNumber = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('enumStr')]
    #[\JMS\Serializer\Annotation\Type('enum<OpenAPI\OpenAPI\Models\Shared\EnumStr>')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?EnumStr $enumStr = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('id')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $id;
    
	#[\JMS\Serializer\Annotation\SerializedName('inlineObject')]
    #[\JMS\Serializer\Annotation\Type('OpenAPI\OpenAPI\Models\Shared\InlineObject')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?InlineObject $inlineObject = null;
    
    /**
     * $mapOfInteger
     * 
     * @var ?array<string, int> $mapOfInteger
     */
	#[\JMS\Serializer\Annotation\SerializedName('mapOfInteger')]
    #[\JMS\Serializer\Annotation\Type('array<string, int>')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?array $mapOfInteger = null;
    
    /**
     * $mapOfString
     * 
     * @var ?array<string, string> $mapOfString
     */
	#[\JMS\Serializer\Annotation\SerializedName('mapOfString')]
    #[\JMS\Serializer\Annotation\Type('array<string, string>')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?array $mapOfString = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('name')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $name;
    
	#[\JMS\Serializer\Annotation\SerializedName('name_prefix')]
    #[\JMS\Serializer\Annotation\Type('string')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?string $namePrefix = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('updatedAt')]
    #[\JMS\Serializer\Annotation\Type("DateTime<'Y-m-d\TH:i:s.up'>")]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?\DateTime $updatedAt = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('vehicle')]
    #[\JMS\Serializer\Annotation\Type('mixed')]
    public mixed $vehicle;
    
	public function __construct()
	{
		$this->arrayOfNumber = null;
		$this->arrayOfString = null;
		$this->chocolates = [];
		$this->createdAt = null;
		$this->enumNumber = null;
		$this->enumStr = null;
		$this->id = "";
		$this->inlineObject = null;
		$this->mapOfInteger = null;
		$this->mapOfString = null;
		$this->name = "";
		$this->namePrefix = null;
		$this->updatedAt = null;
		$this->vehicle = null;
	}
}
