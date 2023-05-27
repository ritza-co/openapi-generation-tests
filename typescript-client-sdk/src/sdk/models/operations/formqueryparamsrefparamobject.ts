/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import * as shared from "../shared";
import { AxiosResponse } from "axios";
import { Expose, Type } from "class-transformer";

export class FormQueryParamsRefParamObjectRequest extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=false;name=refObjParam" })
    refObjParam?: shared.RefQueryParamObj;

    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=refObjParamExploded" })
    refObjParamExploded?: shared.RefQueryParamObjExploded;
}

export class FormQueryParamsRefParamObjectResArgs extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "bool" })
    bool: string;

    @SpeakeasyMetadata()
    @Expose({ name: "int" })
    int: string;

    @SpeakeasyMetadata()
    @Expose({ name: "num" })
    num: string;

    @SpeakeasyMetadata()
    @Expose({ name: "refObjParam" })
    refObjParam: string;

    @SpeakeasyMetadata()
    @Expose({ name: "str" })
    str: string;
}

/**
 * OK
 */
export class FormQueryParamsRefParamObjectRes extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "args" })
    @Type(() => FormQueryParamsRefParamObjectResArgs)
    args: FormQueryParamsRefParamObjectResArgs;

    @SpeakeasyMetadata()
    @Expose({ name: "url" })
    url: string;
}

export class FormQueryParamsRefParamObjectResponse extends SpeakeasyBase {
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
    res?: FormQueryParamsRefParamObjectRes;
}
