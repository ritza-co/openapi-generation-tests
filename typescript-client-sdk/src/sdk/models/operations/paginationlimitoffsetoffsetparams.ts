/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { AxiosResponse } from "axios";
import { Expose } from "class-transformer";
export const PaginationLimitOffsetOffsetParamsServerList = ["http://localhost:35456"] as const;

export class PaginationLimitOffsetOffsetParamsRequest extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=limit" })
    limit?: number;

    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=offset" })
    offset?: number;
}

/**
 * OK
 */
export class PaginationLimitOffsetOffsetParamsRes extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "numPages" })
    numPages: number;

    @SpeakeasyMetadata()
    @Expose({ name: "resultArray" })
    resultArray: number[];
}

export class PaginationLimitOffsetOffsetParamsResponse extends SpeakeasyBase {
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
    res?: PaginationLimitOffsetOffsetParamsRes;

    next: () => Promise<PaginationLimitOffsetOffsetParamsResponse | null>;
}
