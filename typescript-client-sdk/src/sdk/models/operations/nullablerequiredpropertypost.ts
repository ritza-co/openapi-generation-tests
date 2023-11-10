/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { AxiosResponse } from "axios";
import { Expose } from "class-transformer";

export enum NullableRequiredEnum {
    First = "first",
    Second = "second",
}

export class NullableRequiredPropertyPostRequestBody extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "NullableOptionalInt" })
    nullableOptionalInt?: number;

    @SpeakeasyMetadata()
    @Expose({ name: "NullableRequiredArray" })
    nullableRequiredArray: number[];

    @SpeakeasyMetadata()
    @Expose({ name: "NullableRequiredEnum" })
    nullableRequiredEnum: NullableRequiredEnum;

    @SpeakeasyMetadata()
    @Expose({ name: "NullableRequiredInt" })
    nullableRequiredInt: number;
}

export class NullableRequiredPropertyPostResponse extends SpeakeasyBase {
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
    res?: string;
}
