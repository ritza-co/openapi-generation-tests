/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { RFCDate } from "../../types";
import { AxiosResponse } from "axios";
import { Expose } from "class-transformer";

/**
 * OK
 */
export class RequestBodyPostJSONDataTypesArrayDate200ApplicationJSON extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "json" })
    json: RFCDate[];
}

export class RequestBodyPostJsonDataTypesArrayDateResponse extends SpeakeasyBase {
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
    requestBodyPostJSONDataTypesArrayDate200ApplicationJSONObject?: RequestBodyPostJSONDataTypesArrayDate200ApplicationJSON;
}
