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
     * An bigint parameter
     * 
     * @var int $bigintParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=bigintParameter')]
    public int $bigintParameter;
    
    /**
     * An bigint parameter
     * 
     * @var ?int $bigintParameterOptional
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=bigintParameterOptional')]
    public ?int $bigintParameterOptional = null;
    
    /**
     * An bigint parameter
     * 
     * @var string $bigintStrParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=bigintStrParameter')]
    public string $bigintStrParameter;
    
    /**
     * An bigint parameter
     * 
     * @var ?string $bigintStrParameterOptional
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=bigintStrParameterOptional')]
    public ?string $bigintStrParameterOptional = null;
    
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
     * A date time parameter with a default value
     * 
     * @var \DateTime $dateTimeDefaultParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=dateTimeDefaultParameter,dateTimeFormat=Y-m-d\TH:i:s.up')]
    public \DateTime $dateTimeDefaultParameter;
    
    /**
     * A date time parameter
     * 
     * @var \DateTime $dateTimeParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=dateTimeParameter,dateTimeFormat=Y-m-d\TH:i:s.up')]
    public \DateTime $dateTimeParameter;
    
    /**
     * A decimal parameter
     * 
     * @var float $decimalParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=decimalParameter')]
    public float $decimalParameter;
    
    /**
     * A decimal parameter
     * 
     * @var ?float $decimalParameterOptional
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=decimalParameterOptional')]
    public ?float $decimalParameterOptional = null;
    
    /**
     * A decimal parameter
     * 
     * @var string $decimalStrParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=decimalStrParameter')]
    public string $decimalStrParameter;
    
    /**
     * A decimal parameter
     * 
     * @var ?string $decimalStrParameterOptional
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=decimalStrParameterOptional')]
    public ?string $decimalStrParameterOptional = null;
    
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
     * @var \OpenAPI\OpenAPI\Models\Operations\EnumParameter $enumParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=enumParameter')]
    public EnumParameter $enumParameter;
    
    /**
     * A number parameter that contains a falsey example value
     * 
     * @var float $falseyNumberParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=falseyNumberParameter')]
    public float $falseyNumberParameter;
    
    /**
     * A float32 parameter
     * 
     * @var float $float32Parameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=float32Parameter')]
    public float $float32Parameter;
    
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
     * @var ?\OpenAPI\OpenAPI\Models\Operations\OptEnumParameter $optEnumParameter
     */
	#[SpeakeasyMetadata('queryParam:style=form,explode=true,name=optEnumParameter')]
    public ?OptEnumParameter $optEnumParameter = null;
    
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
		$this->bigintParameter = 0;
		$this->bigintParameterOptional = null;
		$this->bigintStrParameter = "";
		$this->bigintStrParameterOptional = null;
		$this->boolParameter = false;
		$this->dateParameter = new \DateTime();
		$this->dateTimeDefaultParameter = new \DateTime();
		$this->dateTimeParameter = new \DateTime();
		$this->decimalParameter = 0;
		$this->decimalParameterOptional = null;
		$this->decimalStrParameter = "";
		$this->decimalStrParameterOptional = null;
		$this->doubleParameter = 0;
		$this->enumParameter = \OpenAPI\OpenAPI\Models\Operations\EnumParameter::Value1;
		$this->falseyNumberParameter = 0;
		$this->float32Parameter = 0;
		$this->floatParameter = 0;
		$this->int64Parameter = 0;
		$this->intParameter = 0;
		$this->optEnumParameter = null;
		$this->strParameter = "";
	}
}
