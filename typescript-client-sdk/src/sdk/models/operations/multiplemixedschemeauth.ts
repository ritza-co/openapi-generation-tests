/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import * as shared from "../shared";
import { AxiosResponse } from "axios";
export const MultipleMixedSchemeAuthServerList = ["http://localhost:35456"] as const;

export class MultipleMixedSchemeAuthSecurity extends SpeakeasyBase {
    @SpeakeasyMetadata({ data: "security, scheme=true;type=apiKey;subtype=header;name=x-api-key" })
    apiKeyAuthNew: string;

    @SpeakeasyMetadata({ data: "security, scheme=true;type=http;subtype=basic" })
    basicAuth: shared.SchemeBasicAuth;
}

export class MultipleMixedSchemeAuthResponse extends SpeakeasyBase {
    @SpeakeasyMetadata()
    contentType: string;

    @SpeakeasyMetadata()
    statusCode: number;

    @SpeakeasyMetadata()
    rawResponse?: AxiosResponse;
}
