<?php

/**
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Models\Shared;


class HttpBinSimpleJsonObjectSlideshow
{
	#[\JMS\Serializer\Annotation\SerializedName('author')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $author;
    
	#[\JMS\Serializer\Annotation\SerializedName('date')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $date;
    
    /**
     * $slides
     * 
     * @var array<\OpenAPI\OpenAPI\Models\Shared\HttpBinSimpleJsonObjectSlideshowSlides> $slides
     */
	#[\JMS\Serializer\Annotation\SerializedName('slides')]
    #[\JMS\Serializer\Annotation\Type('array<OpenAPI\OpenAPI\Models\Shared\HttpBinSimpleJsonObjectSlideshowSlides>')]
    public array $slides;
    
	#[\JMS\Serializer\Annotation\SerializedName('title')]
    #[\JMS\Serializer\Annotation\Type('string')]
    public string $title;
    
	public function __construct()
	{
		$this->author = "";
		$this->date = "";
		$this->slides = [];
		$this->title = "";
	}
}
