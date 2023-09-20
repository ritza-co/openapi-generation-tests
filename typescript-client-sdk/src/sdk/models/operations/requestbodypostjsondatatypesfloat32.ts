/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { AxiosResponse } from "axios";
import { Expose } from "class-transformer";

/**
 * OK
 */
export class RequestBodyPostJSONDataTypesFloat32200ApplicationJSON extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "json" })
    json: number;
}

export class RequestBodyPostJsonDataTypesFloat32Response extends SpeakeasyBase {
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
    requestBodyPostJSONDataTypesFloat32200ApplicationJSONObject?: RequestBodyPostJSONDataTypesFloat32200ApplicationJSON;
}
