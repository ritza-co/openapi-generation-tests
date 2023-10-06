/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import * as shared from "../shared";
import { AxiosResponse } from "axios";
import { Expose, Type } from "class-transformer";

export class FormQueryParamsObjectRequest extends SpeakeasyBase {
    /**
     * A simple object that uses all our supported primitive types and enums and has optional properties.
     */
    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=objParamExploded" })
    objParamExploded: shared.SimpleObject;

    /**
     * A simple object that uses all our supported primitive types and enums and has optional properties.
     */
    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=false;name=objParam" })
    objParam?: shared.SimpleObject;
}

export class FormQueryParamsObjectResArgs extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "any" })
    any: string;

    @SpeakeasyMetadata()
    @Expose({ name: "bigint" })
    bigint?: string;

    @SpeakeasyMetadata()
    @Expose({ name: "bigintStr" })
    bigintStr?: string;

    @SpeakeasyMetadata()
    @Expose({ name: "bool" })
    bool: string;

    @SpeakeasyMetadata()
    @Expose({ name: "boolOpt" })
    boolOpt?: string;

    @SpeakeasyMetadata()
    @Expose({ name: "date" })
    date: string;

    @SpeakeasyMetadata()
    @Expose({ name: "dateTime" })
    dateTime: string;

    @SpeakeasyMetadata()
    @Expose({ name: "decimal" })
    decimal?: string;

    @SpeakeasyMetadata()
    @Expose({ name: "decimalStr" })
    decimalStr?: string;

    @SpeakeasyMetadata()
    @Expose({ name: "enum" })
    enum: string;

    @SpeakeasyMetadata()
    @Expose({ name: "float32" })
    float32: string;

    @SpeakeasyMetadata()
    @Expose({ name: "int" })
    int: string;

    @SpeakeasyMetadata()
    @Expose({ name: "int32" })
    int32: string;

    @SpeakeasyMetadata()
    @Expose({ name: "int32Enum" })
    int32Enum: string;

    @SpeakeasyMetadata()
    @Expose({ name: "intEnum" })
    intEnum: string;

    @SpeakeasyMetadata()
    @Expose({ name: "intOptNull" })
    intOptNull?: string;

    @SpeakeasyMetadata()
    @Expose({ name: "num" })
    num: string;

    @SpeakeasyMetadata()
    @Expose({ name: "numOptNull" })
    numOptNull?: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam" })
    objParam: string;

    @SpeakeasyMetadata()
    @Expose({ name: "str" })
    str: string;

    @SpeakeasyMetadata()
    @Expose({ name: "strOpt" })
    strOpt?: string;
}

/**
 * OK
 */
export class FormQueryParamsObjectRes extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "args" })
    @Type(() => FormQueryParamsObjectResArgs)
    args: FormQueryParamsObjectResArgs;

    @SpeakeasyMetadata()
    @Expose({ name: "url" })
    url: string;
}

export class FormQueryParamsObjectResponse extends SpeakeasyBase {
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
    res?: FormQueryParamsObjectRes;
}
