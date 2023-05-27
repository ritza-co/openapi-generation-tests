/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { Expose, Type } from "class-transformer";

export class HttpBinSimpleJsonObjectSlideshowSlides extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "items" })
    items?: string[];

    @SpeakeasyMetadata()
    @Expose({ name: "title" })
    title: string;

    @SpeakeasyMetadata()
    @Expose({ name: "type" })
    type: string;
}

export class HttpBinSimpleJsonObjectSlideshow extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "author" })
    author: string;

    @SpeakeasyMetadata()
    @Expose({ name: "date" })
    date: string;

    @SpeakeasyMetadata({ elemType: HttpBinSimpleJsonObjectSlideshowSlides })
    @Expose({ name: "slides" })
    @Type(() => HttpBinSimpleJsonObjectSlideshowSlides)
    slides: HttpBinSimpleJsonObjectSlideshowSlides[];

    @SpeakeasyMetadata()
    @Expose({ name: "title" })
    title: string;
}

/**
 * OK
 */
export class HttpBinSimpleJsonObject extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "slideshow" })
    @Type(() => HttpBinSimpleJsonObjectSlideshow)
    slideshow: HttpBinSimpleJsonObjectSlideshow;
}
