/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { AxiosResponse } from "axios";
import { Expose } from "class-transformer";

export class RequestBodyPostMultipleContentTypesSplitMultipartFormData extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "multipart_form, name=bool2" })
    bool2: boolean;

    @SpeakeasyMetadata({ data: "multipart_form, name=num2" })
    num2: number;

    @SpeakeasyMetadata({ data: "multipart_form, name=str2" })
    str2: string;
}

/**
 * OK
 */
export class RequestBodyPostMultipleContentTypesSplitMultipartRes extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "form" })
    form?: Record<string, any>;

    @SpeakeasyMetadata()
    @Expose({ name: "json" })
    json?: Record<string, any>;
}

export class RequestBodyPostMultipleContentTypesSplitMultipartResponse extends SpeakeasyBase {
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
    res?: RequestBodyPostMultipleContentTypesSplitMultipartRes;
}
