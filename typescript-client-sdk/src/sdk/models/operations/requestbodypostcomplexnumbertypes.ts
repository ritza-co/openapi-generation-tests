/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import * as shared from "../../../sdk/models/shared";
import { AxiosResponse } from "axios";
import { Expose, Type } from "class-transformer";

export class RequestBodyPostComplexNumberTypesRequest extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "request, media_type=application/json" })
    complexNumberTypes: shared.ComplexNumberTypes;

    @SpeakeasyMetadata({ data: "pathParam, style=simple;explode=false;name=pathBigInt" })
    pathBigInt: number;

    @SpeakeasyMetadata({ data: "pathParam, style=simple;explode=false;name=pathBigIntStr" })
    pathBigIntStr: string;

    @SpeakeasyMetadata({ data: "pathParam, style=simple;explode=false;name=pathDecimal" })
    pathDecimal: number;

    @SpeakeasyMetadata({ data: "pathParam, style=simple;explode=false;name=pathDecimalStr" })
    pathDecimalStr: string;

    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=queryBigInt" })
    queryBigInt: number;

    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=queryBigIntStr" })
    queryBigIntStr: string;

    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=queryDecimal" })
    queryDecimal: number;

    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=queryDecimalStr" })
    queryDecimalStr: string;
}

/**
 * OK
 */
export class RequestBodyPostComplexNumberTypesResponseBody extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "json" })
    @Type(() => shared.ComplexNumberTypes)
    json: shared.ComplexNumberTypes;

    @SpeakeasyMetadata()
    @Expose({ name: "url" })
    url: string;
}

export class RequestBodyPostComplexNumberTypesResponse extends SpeakeasyBase {
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
    object?: RequestBodyPostComplexNumberTypesResponseBody;
}
