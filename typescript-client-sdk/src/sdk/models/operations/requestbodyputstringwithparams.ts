/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { AxiosResponse } from "axios";
import { Expose, Type } from "class-transformer";

export class RequestBodyPutStringWithParamsRequest extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "request, media_type=text/plain" })
    requestBody: string;

    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=queryStringParam" })
    queryStringParam: string;
}

export class RequestBodyPutStringWithParamsArgs extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "queryStringParam" })
    queryStringParam: string;
}

/**
 * OK
 */
export class RequestBodyPutStringWithParamsRes extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "args" })
    @Type(() => RequestBodyPutStringWithParamsArgs)
    args: RequestBodyPutStringWithParamsArgs;

    @SpeakeasyMetadata()
    @Expose({ name: "data" })
    data: string;
}

export class RequestBodyPutStringWithParamsResponse extends SpeakeasyBase {
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
    res?: RequestBodyPutStringWithParamsRes;
}
