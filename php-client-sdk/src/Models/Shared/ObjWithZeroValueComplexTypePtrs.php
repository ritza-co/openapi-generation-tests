<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Shared;


class ObjWithZeroValueComplexTypePtrs
{
	#[\JMS\Serializer\Annotation\SerializedName('bigint')]
    #[\JMS\Serializer\Annotation\Type('int')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?int $bigint = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('bigintStr')]
    #[\JMS\Serializer\Annotation\Type('string')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?string $bigintStr = null;
    
    /**
     * A date property.
     * 
     * @var ?\DateTime $date
     */
	#[\JMS\Serializer\Annotation\SerializedName('date')]
    #[\JMS\Serializer\Annotation\Type("DateTime<'Y-m-d', '', '|Y-m-d'>")]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?\DateTime $date = null;
    
    /**
     * A date-time property.
     * 
     * @var ?\DateTime $dateTime
     */
	#[\JMS\Serializer\Annotation\SerializedName('dateTime')]
    #[\JMS\Serializer\Annotation\Type("DateTime<'Y-m-d\TH:i:s.up'>")]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?\DateTime $dateTime = null;
    
	#[\JMS\Serializer\Annotation\SerializedName('decimal')]
    #[\JMS\Serializer\Annotation\Type('float')]
    #[\JMS\Serializer\Annotation\SkipWhenEmpty]
    public ?float $decimal = null;
    
	public function __construct()
	{
		$this->bigint = null;
		$this->bigintStr = null;
		$this->date = null;
		$this->dateTime = null;
		$this->decimal = null;
	}
}
