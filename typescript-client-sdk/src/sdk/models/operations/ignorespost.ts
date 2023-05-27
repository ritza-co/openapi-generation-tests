/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import * as shared from "../shared";
import { AxiosResponse } from "axios";
import { Expose } from "class-transformer";

export class IgnoresPostApplicationJSON extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "callbackUrl" })
    callbackUrl?: string;

    @SpeakeasyMetadata()
    @Expose({ name: "testProp" })
    testProp?: string;
}

export class IgnoresPostRequest extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "request, media_type=application/json" })
    requestBody?: IgnoresPostApplicationJSON;

    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=testParam" })
    testParam?: string;
}

export class IgnoresPostResponse extends SpeakeasyBase {
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
    httpBinSimpleJsonObject?: shared.HttpBinSimpleJsonObject;
}
