/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import * as utils from "../internal/utils";
import * as operations from "./models/operations";
import { AxiosInstance, AxiosRequestConfig, AxiosResponse } from "axios";

/**
 * Endpoints for testing global parameters.
 */
export class Globals {
  _defaultClient: AxiosInstance;
  _securityClient: AxiosInstance;
  _serverURL: string;
  _language: string;
  _sdkVersion: string;
  _genVersion: string;
  _globals: any;

  constructor(
    defaultClient: AxiosInstance,
    securityClient: AxiosInstance,
    serverURL: string,
    language: string,
    sdkVersion: string,
    genVersion: string,
    globals: any
  ) {
    this._defaultClient = defaultClient;
    this._securityClient = securityClient;
    this._serverURL = serverURL;
    this._language = language;
    this._sdkVersion = sdkVersion;
    this._genVersion = genVersion;
    this._globals = globals;
  }

  async globalPathParameterGet(
    globalPathParam?: number,
    config?: AxiosRequestConfig
  ): Promise<operations.GlobalPathParameterGetResponse> {
    const req = new operations.GlobalPathParameterGetRequest({
      globalPathParam: globalPathParam,
    });
    const baseURL: string = this._serverURL;
    const url: string = utils.generateURL(
      baseURL,
      "/anything/globals/pathParameter/{globalPathParam}",
      req,
      this._globals
    );

    const client: AxiosInstance = this._securityClient || this._defaultClient;

    const headers = { ...config?.headers };
    headers[
      "user-agent"
    ] = `speakeasy-sdk/${this._language} ${this._sdkVersion} ${this._genVersion}`;

    const httpRes: AxiosResponse = await client.request({
      validateStatus: () => true,
      url: url,
      method: "get",
      headers: headers,
      ...config,
    });

    const contentType: string = httpRes?.headers?.["content-type"] ?? "";

    if (httpRes?.status == null) {
      throw new Error(`status code not found in response: ${httpRes}`);
    }

    const res: operations.GlobalPathParameterGetResponse =
      new operations.GlobalPathParameterGetResponse({
        statusCode: httpRes.status,
        contentType: contentType,
        rawResponse: httpRes,
      });
    switch (true) {
      case httpRes?.status == 200:
        if (utils.matchContentType(contentType, `application/json`)) {
          res.res = utils.objectToClass(
            httpRes?.data,
            operations.GlobalPathParameterGetRes
          );
        }
        break;
    }

    return res;
  }

  async globalsQueryParameterGet(
    globalQueryParam?: string,
    config?: AxiosRequestConfig
  ): Promise<operations.GlobalsQueryParameterGetResponse> {
    const req = new operations.GlobalsQueryParameterGetRequest({
      globalQueryParam: globalQueryParam,
    });
    const baseURL: string = this._serverURL;
    const url: string =
      baseURL.replace(/\/$/, "") + "/anything/globals/queryParameter";

    const client: AxiosInstance = this._securityClient || this._defaultClient;

    const headers = { ...config?.headers };
    const queryParams: string = utils.serializeQueryParams(req, this._globals);
    headers[
      "user-agent"
    ] = `speakeasy-sdk/${this._language} ${this._sdkVersion} ${this._genVersion}`;

    const httpRes: AxiosResponse = await client.request({
      validateStatus: () => true,
      url: url + queryParams,
      method: "get",
      headers: headers,
      ...config,
    });

    const contentType: string = httpRes?.headers?.["content-type"] ?? "";

    if (httpRes?.status == null) {
      throw new Error(`status code not found in response: ${httpRes}`);
    }

    const res: operations.GlobalsQueryParameterGetResponse =
      new operations.GlobalsQueryParameterGetResponse({
        statusCode: httpRes.status,
        contentType: contentType,
        rawResponse: httpRes,
      });
    switch (true) {
      case httpRes?.status == 200:
        if (utils.matchContentType(contentType, `application/json`)) {
          res.res = utils.objectToClass(
            httpRes?.data,
            operations.GlobalsQueryParameterGetRes
          );
        }
        break;
    }

    return res;
  }
}
