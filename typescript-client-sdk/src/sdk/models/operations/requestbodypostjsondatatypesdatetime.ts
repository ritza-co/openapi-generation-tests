/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { AxiosResponse } from "axios";
import { Expose, Transform } from "class-transformer";

/**
 * OK
 */
export class RequestBodyPostJSONDataTypesDateTime200ApplicationJSON extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "json" })
    @Transform(({ value }) => new Date(value), { toClassOnly: true })
    json: Date;
}

export class RequestBodyPostJsonDataTypesDateTimeResponse extends SpeakeasyBase {
    @SpeakeasyMetadata()
    contentType: string;

    @SpeakeasyMetadata()
    statusCode: number;

    @SpeakeasyMetadata()
    rawResponse?: AxiosResponse;

    /**
     * OK
     */
    @SpeakeasyMetadata()
    requestBodyPostJSONDataTypesDateTime200ApplicationJSONObject?: RequestBodyPostJSONDataTypesDateTime200ApplicationJSON;
}
