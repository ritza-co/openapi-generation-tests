/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { AxiosResponse } from "axios";
import { Expose } from "class-transformer";

export class IgnoredGenerationGetSingledIgnoredCallbackOperationResponse extends SpeakeasyBase {
  @SpeakeasyMetadata()
  contentType: string;

  @SpeakeasyMetadata()
  statusCode: number;

  @SpeakeasyMetadata()
  rawResponse?: AxiosResponse;
}

export class IgnoredGenerationGetSingledIgnoredCallbackOperationRequestBody extends SpeakeasyBase {
  @SpeakeasyMetadata()
  @Expose({ name: "someProp" })
  someProp?: string;
}

export class IgnoredGenerationGetNotIgnoredCallbackResponse extends SpeakeasyBase {
  @SpeakeasyMetadata()
  contentType: string;

  @SpeakeasyMetadata()
  statusCode: number;

  @SpeakeasyMetadata()
  rawResponse?: AxiosResponse;
}

export class IgnoredGenerationGetNotIgnoredCallbackRequestBody extends SpeakeasyBase {
  @SpeakeasyMetadata()
  @Expose({ name: "someProp" })
  someProp?: string;
}
