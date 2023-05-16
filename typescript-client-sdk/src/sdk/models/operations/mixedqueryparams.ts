/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import * as shared from "../shared";
import { AxiosResponse } from "axios";
import { Expose } from "class-transformer";

export class MixedQueryParamsRequest extends SpeakeasyBase {
  /**
   * A simple object that uses all our supported primitive types and enums and has optional properties.
   */
  @SpeakeasyMetadata({
    data: "queryParam, style=deepObject;explode=true;name=deepObjectParam",
  })
  deepObjectParam: shared.SimpleObject;

  /**
   * A simple object that uses all our supported primitive types and enums and has optional properties.
   */
  @SpeakeasyMetadata({
    data: "queryParam, style=form;explode=true;name=formParam",
  })
  formParam: shared.SimpleObject;

  /**
   * A simple object that uses all our supported primitive types and enums and has optional properties.
   */
  @SpeakeasyMetadata({ data: "queryParam, serialization=json;name=jsonParam" })
  jsonParam: shared.SimpleObject;
}

/**
 * OK
 */
export class MixedQueryParamsRes extends SpeakeasyBase {
  @SpeakeasyMetadata()
  @Expose({ name: "args" })
  args: Record<string, string>;

  @SpeakeasyMetadata()
  @Expose({ name: "url" })
  url: string;
}

export class MixedQueryParamsResponse extends SpeakeasyBase {
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
  res?: MixedQueryParamsRes;
}
