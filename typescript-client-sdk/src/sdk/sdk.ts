/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import * as utils from "../internal/utils";
import { Auth } from "./auth";
import { AuthNew } from "./authnew";
import { Errors } from "./errors";
import { Flattening } from "./flattening";
import { Generation } from "./generation";
import { Globals } from "./globals";
import * as operations from "./models/operations";
import * as shared from "./models/shared";
import { ParametersT } from "./parameters";
import { RequestBodies } from "./requestbodies";
import { ResponseBodies } from "./responsebodies";
import { Servers } from "./servers";
import { Telemetry } from "./telemetry";
import { Unions } from "./unions";
import axios from "axios";
import { AxiosInstance, AxiosRequestConfig, AxiosResponse } from "axios";

/**
 * Contains the list of servers available to the SDK
 */
export const ServerList = [
  /**
   * The default server.
   */
  "http://localhost:35123",
  /**
   * A server url to a non-existent server.
   */
  "http://broken",
  /**
   * A server url with templated variables.
   */
  "http://{hostname}:{port}",
] as const;

/**
 * The available configuration options for the SDK
 */
export type SDKProps = {
  /**
   * The security details required to authenticate the SDK
   */
  security?: shared.Security;
  /**
   * Allows setting the globalPathParam parameter for all supported operations
   */
  globalPathParam?: number;
  /**
   * Allows setting the globalQueryParam parameter for all supported operations
   */
  globalQueryParam?: string;
  /**
   * Allows overriding the default axios client used by the SDK
   */
  defaultClient?: AxiosInstance;
  /**
   * Allows overriding the default server URL used by the SDK
   */
  serverURL?: string;
};

/**
 * Test Summary
 *
 * @remarks
 * Some test description.
 * About our test document.
 *
 * @see {@link https://speakeasyapi.dev/docs/home} - Speakeasy Docs
 */
export class SDK {
  /**
   * Endpoints for testing authentication.
   */
  public auth: Auth;
  /**
   * Endpoints for testing authentication.
   */
  public authNew: AuthNew;
  /**
   * Endpoints for testing error responses.
   */
  public errors: Errors;
  /**
   * Endpoints for testing flattening through request body and parameter combinations.
   */
  public flattening: Flattening;
  /**
   * Endpoints for purely testing valid generation behavior.
   */
  public generation: Generation;
  /**
   * Endpoints for testing global parameters.
   */
  public globals: Globals;
  /**
   * Endpoints for testing parameters.
   */
  public parameters: ParametersT;
  /**
   * Endpoints for testing request bodies.
   */
  public requestBodies: RequestBodies;
  /**
   * Endpoints for testing response bodies.
   */
  public responseBodies: ResponseBodies;
  /**
   * Endpoints for testing servers.
   */
  public servers: Servers;
  /**
   * Endpoints for testing telemetry.
   */
  public telemetry: Telemetry;
  /**
   * Endpoints for testing union types.
   */
  public unions: Unions;

  public _defaultClient: AxiosInstance;
  public _securityClient: AxiosInstance;
  public _serverURL: string;
  private _language = "typescript";
  private _sdkVersion = "1.2.1";
  private _genVersion = "2.31.0";
  private _globals: any;

  constructor(props?: SDKProps) {
    this._serverURL = props?.serverURL ?? ServerList[0];

    this._defaultClient =
      props?.defaultClient ?? axios.create({ baseURL: this._serverURL });
    if (props?.security) {
      let security: shared.Security = props.security;
      if (!(props.security instanceof utils.SpeakeasyBase))
        security = new shared.Security(props.security);
      this._securityClient = utils.createSecurityClient(
        this._defaultClient,
        security
      );
    } else {
      this._securityClient = this._defaultClient;
    }

    this._globals = {
      parameters: {
        queryParam: {
          globalQueryParam: props?.globalQueryParam,
        },
        pathParam: {
          globalPathParam: props?.globalPathParam,
        },
      },
    };

    this.auth = new Auth(
      this._defaultClient,
      this._securityClient,
      this._serverURL,
      this._language,
      this._sdkVersion,
      this._genVersion,
      this._globals
    );

    this.authNew = new AuthNew(
      this._defaultClient,
      this._securityClient,
      this._serverURL,
      this._language,
      this._sdkVersion,
      this._genVersion,
      this._globals
    );

    this.errors = new Errors(
      this._defaultClient,
      this._securityClient,
      this._serverURL,
      this._language,
      this._sdkVersion,
      this._genVersion,
      this._globals
    );

    this.flattening = new Flattening(
      this._defaultClient,
      this._securityClient,
      this._serverURL,
      this._language,
      this._sdkVersion,
      this._genVersion,
      this._globals
    );

    this.generation = new Generation(
      this._defaultClient,
      this._securityClient,
      this._serverURL,
      this._language,
      this._sdkVersion,
      this._genVersion,
      this._globals
    );

    this.globals = new Globals(
      this._defaultClient,
      this._securityClient,
      this._serverURL,
      this._language,
      this._sdkVersion,
      this._genVersion,
      this._globals
    );

    this.parameters = new ParametersT(
      this._defaultClient,
      this._securityClient,
      this._serverURL,
      this._language,
      this._sdkVersion,
      this._genVersion,
      this._globals
    );

    this.requestBodies = new RequestBodies(
      this._defaultClient,
      this._securityClient,
      this._serverURL,
      this._language,
      this._sdkVersion,
      this._genVersion,
      this._globals
    );

    this.responseBodies = new ResponseBodies(
      this._defaultClient,
      this._securityClient,
      this._serverURL,
      this._language,
      this._sdkVersion,
      this._genVersion,
      this._globals
    );

    this.servers = new Servers(
      this._defaultClient,
      this._securityClient,
      this._serverURL,
      this._language,
      this._sdkVersion,
      this._genVersion,
      this._globals
    );

    this.telemetry = new Telemetry(
      this._defaultClient,
      this._securityClient,
      this._serverURL,
      this._language,
      this._sdkVersion,
      this._genVersion,
      this._globals
    );

    this.unions = new Unions(
      this._defaultClient,
      this._securityClient,
      this._serverURL,
      this._language,
      this._sdkVersion,
      this._genVersion,
      this._globals
    );
  }

  async putAnythingIgnoredGeneration(
    req: string,
    config?: AxiosRequestConfig
  ): Promise<operations.PutAnythingIgnoredGenerationResponse> {
    const baseURL: string = this._serverURL;
    const url: string =
      baseURL.replace(/\/$/, "") + "/anything/ignoredGeneration";

    let [reqBodyHeaders, reqBody]: [object, any] = [{}, {}];

    try {
      [reqBodyHeaders, reqBody] = utils.serializeRequestBody(
        req,
        "request",
        "string"
      );
    } catch (e: unknown) {
      if (e instanceof Error) {
        throw new Error(`Error serializing request body, cause: ${e.message}`);
      }
    }

    const client: AxiosInstance = this._securityClient || this._defaultClient;

    const headers = { ...reqBodyHeaders, ...config?.headers };
    headers["Accept"] = "application/json";
    headers[
      "x-speakeasy-user-agent"
    ] = `speakeasy-sdk/${this._language} ${this._sdkVersion} ${this._genVersion}`;

    const httpRes: AxiosResponse = await client.request({
      validateStatus: () => true,
      url: url,
      method: "put",
      headers: headers,
      data: reqBody,
      ...config,
    });

    const contentType: string = httpRes?.headers?.["content-type"] ?? "";

    if (httpRes?.status == null) {
      throw new Error(`status code not found in response: ${httpRes}`);
    }

    const res: operations.PutAnythingIgnoredGenerationResponse =
      new operations.PutAnythingIgnoredGenerationResponse({
        statusCode: httpRes.status,
        contentType: contentType,
        rawResponse: httpRes,
      });
    switch (true) {
      case httpRes?.status == 200:
        if (utils.matchContentType(contentType, `application/json`)) {
          res.putAnythingIgnoredGeneration200ApplicationJSONObject =
            utils.objectToClass(
              httpRes?.data,
              operations.PutAnythingIgnoredGeneration200ApplicationJSON
            );
        }
        break;
    }

    return res;
  }

  async responseBodyJsonGet(
    config?: AxiosRequestConfig
  ): Promise<operations.ResponseBodyJsonGetResponse> {
    const baseURL: string = this._serverURL;
    const url: string = baseURL.replace(/\/$/, "") + "/json";

    const client: AxiosInstance = this._securityClient || this._defaultClient;

    const headers = { ...config?.headers };
    headers["Accept"] = "application/json";
    headers[
      "x-speakeasy-user-agent"
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

    const res: operations.ResponseBodyJsonGetResponse =
      new operations.ResponseBodyJsonGetResponse({
        statusCode: httpRes.status,
        contentType: contentType,
        rawResponse: httpRes,
      });
    switch (true) {
      case httpRes?.status == 200:
        if (utils.matchContentType(contentType, `application/json`)) {
          res.httpBinSimpleJsonObject = utils.objectToClass(
            httpRes?.data,
            shared.HttpBinSimpleJsonObject
          );
        }
        break;
    }

    return res;
  }
}
