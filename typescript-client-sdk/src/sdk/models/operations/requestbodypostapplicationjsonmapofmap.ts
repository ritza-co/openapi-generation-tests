/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import * as shared from "../shared";
import { AxiosResponse } from "axios";
export const RequestBodyPostApplicationJsonMapOfMapServerList = ["http://localhost:35456"] as const;

export class RequestBodyPostApplicationJsonMapOfMapResponse extends SpeakeasyBase {
    @SpeakeasyMetadata()
    contentType: string;

    @SpeakeasyMetadata()
    statusCode: number;

    @SpeakeasyMetadata()
    rawResponse?: AxiosResponse;

    /**
     * OK
     */
    @SpeakeasyMetadata({ elemType: shared.SimpleObject, elemDepth: 2 })
    res?: Record<string, Record<string, shared.SimpleObject>>;
}
