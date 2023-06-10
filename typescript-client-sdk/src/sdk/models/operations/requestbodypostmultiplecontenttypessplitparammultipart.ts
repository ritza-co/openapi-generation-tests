/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { AxiosResponse } from "axios";
import { Expose, Type } from "class-transformer";

export class RequestBodyPostMultipleContentTypesSplitParamMultipartFormData extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "multipart_form, name=bool2" })
    bool2: boolean;

    @SpeakeasyMetadata({ data: "multipart_form, name=num2" })
    num2: number;

    @SpeakeasyMetadata({ data: "multipart_form, name=str2" })
    str2: string;
}

export class RequestBodyPostMultipleContentTypesSplitParamMultipartRequest extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "request, media_type=multipart/form-data" })
    requestBody: RequestBodyPostMultipleContentTypesSplitParamMultipartFormData;

    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=paramStr" })
    paramStr: string;
}

export class RequestBodyPostMultipleContentTypesSplitParamMultipartResForm extends SpeakeasyBase {}

export class RequestBodyPostMultipleContentTypesSplitParamMultipartResJson extends SpeakeasyBase {}

/**
 * OK
 */
export class RequestBodyPostMultipleContentTypesSplitParamMultipartRes extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "args" })
    args?: Record<string, string>;

    @SpeakeasyMetadata()
    @Expose({ name: "form" })
    @Type(() => RequestBodyPostMultipleContentTypesSplitParamMultipartResForm)
    form?: RequestBodyPostMultipleContentTypesSplitParamMultipartResForm;

    @SpeakeasyMetadata()
    @Expose({ name: "json" })
    @Type(() => RequestBodyPostMultipleContentTypesSplitParamMultipartResJson)
    json?: RequestBodyPostMultipleContentTypesSplitParamMultipartResJson;
}

export class RequestBodyPostMultipleContentTypesSplitParamMultipartResponse extends SpeakeasyBase {
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
    res?: RequestBodyPostMultipleContentTypesSplitParamMultipartRes;
}
