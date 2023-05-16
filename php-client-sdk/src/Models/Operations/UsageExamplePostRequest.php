<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;

use \OpenAPI\OpenAPI\Utils\SpeakeasyMetadata;
class UsageExamplePostRequest
{
    /**
     * A request body that contains fields with different formats for testing example generation
     * 
     * @var ?\OpenAPI\OpenAPI\Models\Operations\UsageExamplePostRequestBody $requestBody
     */
	#[SpeakeasyMetadata('request:mediaType=application/json')]
    public ?UsageExamplePostRequestBody $requestBody = null;
    
    /**
     * A boolean parameter
     * 
     * @var bool $boolParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=boolParameter')]
    public bool $boolParameter;
    
    /**
     * A date parameter
     * 
     * @var \DateTime $dateParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=dateParameter,dateTimeFormat=Y-m-d')]
    public \DateTime $dateParameter;
    
    /**
     * A date time parameter
     * 
     * @var \DateTime $dateTimeParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=dateTimeParameter,dateTimeFormat=Y-m-d\TH:i:s.up')]
    public \DateTime $dateTimeParameter;
    
    /**
     * A double parameter
     * 
     * @var float $doubleParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=doubleParameter')]
    public float $doubleParameter;
    
    /**
     * An enum parameter
     * 
     * @var \OpenAPI\OpenAPI\Models\Operations\UsageExamplePostEnumParameterEnum $enumParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=enumParameter')]
    public UsageExamplePostEnumParameterEnum $enumParameter;
    
    /**
     * A float parameter
     * 
     * @var float $floatParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=floatParameter')]
    public float $floatParameter;
    
    /**
     * An int64 parameter
     * 
     * @var int $int64Parameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=int64Parameter')]
    public int $int64Parameter;
    
    /**
     * An integer parameter
     * 
     * @var int $intParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=intParameter')]
    public int $intParameter;
    
    /**
     * An enum parameter
     * 
     * @var ?\OpenAPI\OpenAPI\Models\Operations\UsageExamplePostOptEnumParameterEnum $optEnumParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=optEnumParameter')]
    public ?UsageExamplePostOptEnumParameterEnum $optEnumParameter = null;
    
    /**
     * A string parameter
     * 
     * @var string $strParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=strParameter')]
    public string $strParameter;
    
	public function __construct()
	{
		$this->requestBody = null;
		$this->boolParameter = false;
		$this->dateParameter = new \DateTime();
		$this->dateTimeParameter = new \DateTime();
		$this->doubleParameter = 0;
		$this->enumParameter = \OpenAPI\OpenAPI\Models\Operations\UsageExamplePostEnumParameterEnum::VALUE1;
		$this->floatParameter = 0;
		$this->int64Parameter = 0;
		$this->intParameter = 0;
		$this->optEnumParameter = null;
		$this->strParameter = "";
	}
}
