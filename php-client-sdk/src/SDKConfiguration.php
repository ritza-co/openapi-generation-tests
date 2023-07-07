<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI;

class SDKConfiguration
{
	public ?\GuzzleHttp\ClientInterface $defaultClient = null;
	public ?\GuzzleHttp\ClientInterface $securityClient = null;
	public ?Models\Shared\Security $security = null;
	public string $serverUrl = '';
	public int $serverIndex = 0;
	/** @var array<array<string, string>> */
	public ?array $serverDefaults = [
		[
		],
		[
		],
		[
			'hostname' => 'localhost',
			'port' => '35123',
		],
		[
			'something' => 'something',
		],
	];
	public string $language = 'php';
	public string $openapiDocVersion = '0.1.0';
	public string $sdkVersion = '1.16.0';
	public string $genVersion = '2.58.0';
	/** @var array<string, array<string, array<string, mixed>>> */
	public ?array $globals = [
    	'parameters' => []
    ];

	public function getServerUrl(): string
	{
		
		if ($this->serverUrl !== '') {
			return $this->serverUrl;
		};
		return SDK::SERVERS[$this->serverIndex];
	}
	
	/**
	 * @return array<string, string>
	 */
	public function getServerDefaults(): ?array
	{
		return $this->serverDefaults[$this->serverIndex];
	}
}