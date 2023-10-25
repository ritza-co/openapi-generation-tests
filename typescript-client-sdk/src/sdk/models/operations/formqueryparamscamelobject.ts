/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { AxiosResponse } from "axios";
import { Expose, Type } from "class-transformer";

export class FormQueryParamsCamelObjectObjParamExploded extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "queryParam, name=item_count" })
    itemCount?: string;

    @SpeakeasyMetadata({ data: "queryParam, name=search_term" })
    searchTerm?: string;
}

export class FormQueryParamsCamelObjectObjParam extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "queryParam, name=encoded_count" })
    encodedCount?: string;

    @SpeakeasyMetadata({ data: "queryParam, name=encoded_term" })
    encodedTerm?: string;
}

export class FormQueryParamsCamelObjectRequest extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=obj_param_exploded" })
    objParamExploded: FormQueryParamsCamelObjectObjParamExploded;

    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=false;name=obj_param" })
    objParam?: FormQueryParamsCamelObjectObjParam;
}

export class FormQueryParamsCamelObjectResArgs extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "item_count" })
    itemCount: string;

    @SpeakeasyMetadata()
    @Expose({ name: "search_term" })
    searchTerm: string;
}

/**
 * OK
 */
export class FormQueryParamsCamelObjectRes extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "args" })
    @Type(() => FormQueryParamsCamelObjectResArgs)
    args: FormQueryParamsCamelObjectResArgs;

    @SpeakeasyMetadata()
    @Expose({ name: "url" })
    url: string;
}

export class FormQueryParamsCamelObjectResponse extends SpeakeasyBase {
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
    res?: FormQueryParamsCamelObjectRes;
}
