/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import * as shared from "../shared";
import { AxiosResponse } from "axios";
import { Expose, Type } from "class-transformer";

export class NameOverrideGetRequest extends SpeakeasyBase {
  @SpeakeasyMetadata({
    data: "queryParam, style=form;explode=true;name=nameOverride",
  })
  testQueryParam: string;
}

/**
 * A successful response that contains the simpleObject sent in the request body
 */
export class OverridenResponse extends SpeakeasyBase {
  /**
   * A simple object that uses all our supported primitive types and enums and has optional properties.
   */
  @SpeakeasyMetadata()
  @Expose({ name: "json" })
  @Type(() => shared.SimpleObject)
  json?: shared.SimpleObject;
}

export class NameOverrideGetResponse extends SpeakeasyBase {
  @SpeakeasyMetadata()
  contentType: string;

  @SpeakeasyMetadata()
  statusCode: number;

  @SpeakeasyMetadata()
  rawResponse?: AxiosResponse;

  /**
   * A successful response that contains the simpleObject sent in the request body
   */
  @SpeakeasyMetadata()
  overridenResponse?: OverridenResponse;
}
