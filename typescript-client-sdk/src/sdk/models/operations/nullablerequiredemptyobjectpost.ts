/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { AxiosResponse } from "axios";
import { Expose, Type } from "class-transformer";

export class NullableOptionalObj extends SpeakeasyBase {}

export class NullableRequiredObj extends SpeakeasyBase {}

export class RequiredObj extends SpeakeasyBase {}

export class NullableRequiredEmptyObjectPostRequestBody extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "NullableOptionalObj" })
    @Type(() => NullableOptionalObj)
    nullableOptionalObj?: NullableOptionalObj;

    @SpeakeasyMetadata()
    @Expose({ name: "NullableRequiredObj" })
    @Type(() => NullableRequiredObj)
    nullableRequiredObj: NullableRequiredObj;

    @SpeakeasyMetadata()
    @Expose({ name: "RequiredObj" })
    @Type(() => RequiredObj)
    requiredObj: RequiredObj;
}

export class NullableRequiredEmptyObjectPostResponse extends SpeakeasyBase {
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
