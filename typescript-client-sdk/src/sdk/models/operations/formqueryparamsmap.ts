/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { AxiosResponse } from "axios";
import { Expose } from "class-transformer";

export class FormQueryParamsMapRequest extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=false;name=mapParam" })
    mapParam?: Record<string, string>;

    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=mapParamExploded" })
    mapParamExploded?: Record<string, number>;
}

/**
 * OK
 */
export class FormQueryParamsMapRes extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "args" })
    args: Record<string, string>;

    @SpeakeasyMetadata()
    @Expose({ name: "url" })
    url: string;
}

export class FormQueryParamsMapResponse extends SpeakeasyBase {
    /**
     * HTTP response content type for this operation
     */
    @SpeakeasyMetadata()
    contentType: string;

    /**
     * HTTP response status code for this operation
     */
    @SpeakeasyMetadata()
    statusCode: number;

    /**
     * Raw HTTP response; suitable for custom response parsing
     */
    @SpeakeasyMetadata()
    rawResponse?: AxiosResponse;

    /**
     * OK
     */
    @SpeakeasyMetadata()
    res?: FormQueryParamsMapRes;
}
