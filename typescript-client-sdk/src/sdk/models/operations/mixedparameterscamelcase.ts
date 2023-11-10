/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { AxiosResponse } from "axios";
import { Expose, Type } from "class-transformer";

export class MixedParametersCamelCaseRequest extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "header, style=simple;explode=false;name=header_param" })
    headerParam: string;

    @SpeakeasyMetadata({ data: "pathParam, style=simple;explode=false;name=path_param" })
    pathParam: string;

    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=query_string_param" })
    queryStringParam: string;
}

export class MixedParametersCamelCaseArgs extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "query_string_param" })
    queryStringParam: string;
}

export class MixedParametersCamelCaseHeaders extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "Header-Param" })
    headerParam: string;
}

/**
 * OK
 */
export class MixedParametersCamelCaseRes extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "args" })
    @Type(() => MixedParametersCamelCaseArgs)
    args: MixedParametersCamelCaseArgs;

    @SpeakeasyMetadata()
    @Expose({ name: "headers" })
    @Type(() => MixedParametersCamelCaseHeaders)
    headers: MixedParametersCamelCaseHeaders;

    @SpeakeasyMetadata()
    @Expose({ name: "url" })
    url: string;
}

export class MixedParametersCamelCaseResponse extends SpeakeasyBase {
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
    res?: MixedParametersCamelCaseRes;
}
