/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { AxiosResponse } from "axios";
import { Expose } from "class-transformer";

export class RequestBodyPostMultipleContentTypesInlineFilteredRequestBody extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "bool" })
    bool: boolean;

    @SpeakeasyMetadata()
    @Expose({ name: "num" })
    num: number;

    @SpeakeasyMetadata()
    @Expose({ name: "str" })
    str: string;
}

/**
 * OK
 */
export class RequestBodyPostMultipleContentTypesInlineFilteredRes extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "json" })
    json?: Record<string, any>;
}

export class RequestBodyPostMultipleContentTypesInlineFilteredResponse extends SpeakeasyBase {
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
    res?: RequestBodyPostMultipleContentTypesInlineFilteredRes;
}
