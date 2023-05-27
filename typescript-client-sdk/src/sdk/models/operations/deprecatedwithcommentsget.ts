/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { AxiosResponse } from "axios";

export class DeprecatedWithCommentsGetRequest extends SpeakeasyBase {
    /**
     * This is a string parameter
     *
     * @deprecated this field will be removed in a future release, please migrate away from it as soon as possible. Use newParameter instead
     */
    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=deprecatedParameter" })
    deprecatedParameter?: string;

    /**
     * This is a string parameter
     */
    @SpeakeasyMetadata({ data: "queryParam, style=form;explode=true;name=newParameter" })
    newParameter?: string;
}

export class DeprecatedWithCommentsGetResponse extends SpeakeasyBase {
    @SpeakeasyMetadata()
    contentType: string;

    @SpeakeasyMetadata()
    statusCode: number;

    @SpeakeasyMetadata()
    rawResponse?: AxiosResponse;
}
