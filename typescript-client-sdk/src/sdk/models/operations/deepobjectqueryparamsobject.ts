/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import * as shared from "../shared";
import { AxiosResponse } from "axios";
import { Expose, Type } from "class-transformer";

export class DeepObjectQueryParamsObjectObjArrParam extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "queryParam, name=arr" })
    arr?: string[];
}

export class DeepObjectQueryParamsObjectRequest extends SpeakeasyBase {
    /**
     * A simple object that uses all our supported primitive types and enums and has optional properties.
     */
    @SpeakeasyMetadata({ data: "queryParam, style=deepObject;explode=true;name=objParam" })
    objParam: shared.SimpleObject;

    @SpeakeasyMetadata({ data: "queryParam, style=deepObject;explode=true;name=objArrParam" })
    objArrParam?: DeepObjectQueryParamsObjectObjArrParam;
}

export class DeepObjectQueryParamsObjectResArgs extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "objArrParam[arr]" })
    objArrParamArr: string[];

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[any]" })
    objParamAny: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[bigintStr]" })
    objParamBigintStr?: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[bigint]" })
    objParamBigint?: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[boolOpt]" })
    objParamBoolOpt: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[bool]" })
    objParamBool: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[dateTime]" })
    objParamDateTime: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[date]" })
    objParamDate: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[decimal]" })
    objParamDecimal?: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[enum]" })
    objParamEnum: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[float32]" })
    objParamFloat32: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[int32Enum]" })
    objParamInt32Enum: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[int32]" })
    objParamInt32: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[intEnum]" })
    objParamIntEnum: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[int]" })
    objParamInt: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[num]" })
    objParamNum: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[strOpt]" })
    objParamStrOpt: string;

    @SpeakeasyMetadata()
    @Expose({ name: "objParam[str]" })
    objParamStr: string;
}

/**
 * OK
 */
export class DeepObjectQueryParamsObjectRes extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "args" })
    @Type(() => DeepObjectQueryParamsObjectResArgs)
    args: DeepObjectQueryParamsObjectResArgs;

    @SpeakeasyMetadata()
    @Expose({ name: "url" })
    url: string;
}

export class DeepObjectQueryParamsObjectResponse extends SpeakeasyBase {
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
    res?: DeepObjectQueryParamsObjectRes;
}
