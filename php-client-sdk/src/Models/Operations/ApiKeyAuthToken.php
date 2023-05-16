<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Operations;


/**
 * ApiKeyAuthToken - Successful authentication.
 * 
 * @package OpenAPI\OpenAPI\Models\Operations
 * @access public
 */
class ApiKeyAuthToken
{
	#[\JMS\Serializer\Annotation\SerializedName('authenticated')]
    #[\JMS\Serializer\Annotation\Type('bool')]
    public bool $authenticated;
    
	#[\JMS\Serializer\Annotation\SerializedName('token')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $token;
    
	public function __construct()
	{
		$this->authenticated = false;
		$this->token = "";
	}
}
