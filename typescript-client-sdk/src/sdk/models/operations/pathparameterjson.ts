/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import * as shared from "../shared";
import { AxiosResponse } from "axios";
import { Expose } from "class-transformer";

export class PathParameterJsonRequest extends SpeakeasyBase {
  /**
   * A simple object that uses all our supported primitive types and enums and has optional properties.
   */
  @SpeakeasyMetadata({ data: "pathParam, serialization=json;name=jsonObj" })
  jsonObj: shared.SimpleObject;
}

/**
 * OK
 */
export class PathParameterJsonRes extends SpeakeasyBase {
  @SpeakeasyMetadata()
  @Expose({ name: "url" })
  url: string;
}

export class PathParameterJsonResponse extends SpeakeasyBase {
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
  res?: PathParameterJsonRes;
}
