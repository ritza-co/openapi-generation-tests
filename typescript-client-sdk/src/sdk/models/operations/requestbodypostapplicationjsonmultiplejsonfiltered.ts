/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import * as shared from "../shared";
import { AxiosResponse } from "axios";
import { Expose, Type } from "class-transformer";

/**
 * OK
 */
export class RequestBodyPostApplicationJsonMultipleJsonFilteredRes extends SpeakeasyBase {
    /**
     * A simple object that uses all our supported primitive types and enums and has optional properties.
     */
    @SpeakeasyMetadata()
    @Expose({ name: "json" })
    @Type(() => shared.SimpleObject)
    json: shared.SimpleObject;
}

export class RequestBodyPostApplicationJsonMultipleJsonFilteredResponse extends SpeakeasyBase {
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
    res?: RequestBodyPostApplicationJsonMultipleJsonFilteredRes;
}
