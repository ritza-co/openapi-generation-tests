/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { RFCDate } from "../../types";
import { AxiosResponse } from "axios";

export class TypedParameterGenerationGetObj extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "queryParam, name=bool" })
    bool: boolean;

    @SpeakeasyMetadata({ data: "queryParam, name=num" })
    num: number;

    @SpeakeasyMetadata({ data: "queryParam, name=str" })
    str: string;
}

export class TypedParameterGenerationGetRequest extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=bigint" })
    bigint?: number;

    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=date" })
    date?: RFCDate;

    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=decimal" })
    decimal?: number;

    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=obj" })
    obj?: TypedParameterGenerationGetObj;
}

export class TypedParameterGenerationGetResponse extends SpeakeasyBase {
    @SpeakeasyMetadata()
    contentType: string;

    @SpeakeasyMetadata()
    statusCode: number;

    @SpeakeasyMetadata()
    rawResponse?: AxiosResponse;
}
