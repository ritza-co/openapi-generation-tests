/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import * as utils from "../internal/utils";
import * as operations from "./models/operations";
import * as shared from "./models/shared";
import { AxiosInstance, AxiosRequestConfig, AxiosResponse } from "axios";

/**
 * Endpoints for testing authentication.
 */
export class AuthNew {
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

  async apiKeyAuthGlobalNew(
    req: shared.AuthServiceRequestBody,
    serverURL?: string,
    config?: AxiosRequestConfig
  ): Promise<operations.ApiKeyAuthGlobalNewResponse> {
    if (!(req instanceof utils.SpeakeasyBase)) {
      req = new shared.AuthServiceRequestBody(req);
    }

    let baseURL: string = operations.ApiKeyAuthGlobalNewServerList[0];
    if (serverURL) {
      baseURL = serverURL;
    }
    const url: string = baseURL.replace(/\/$/, "") + "/auth#apiKeyAuthGlobal";

    let [reqBodyHeaders, reqBody]: [object, any] = [{}, {}];

    try {
      [reqBodyHeaders, reqBody] = utils.serializeRequestBody(
        req,
        "request",
        "json"
      );
    } catch (e: unknown) {
      if (e instanceof Error) {
        throw new Error(`Error serializing request body, cause: ${e.message}`);
      }
    }

    const client: AxiosInstance = this._securityClient || this._defaultClient;

    const headers = { ...reqBodyHeaders, ...config?.headers };
    headers[
      "user-agent"
    ] = `speakeasy-sdk/${this._language} ${this._sdkVersion} ${this._genVersion}`;

    const httpRes: AxiosResponse = await client.request({
      validateStatus: () => true,
      url: url,
      method: "post",
      headers: headers,
      data: reqBody,
      ...config,
    });

    const contentType: string = httpRes?.headers?.["content-type"] ?? "";

    if (httpRes?.status == null) {
      throw new Error(`status code not found in response: ${httpRes}`);
    }

    const res: operations.ApiKeyAuthGlobalNewResponse =
      new operations.ApiKeyAuthGlobalNewResponse({
        statusCode: httpRes.status,
        contentType: contentType,
        rawResponse: httpRes,
      });
    switch (true) {
      case [200, 401].includes(httpRes?.status):
        break;
    }

    return res;
  }

  async basicAuthNew(
    req: shared.AuthServiceRequestBody,
    security: operations.BasicAuthNewSecurity,
    serverURL?: string,
    config?: AxiosRequestConfig
  ): Promise<operations.BasicAuthNewResponse> {
    if (!(req instanceof utils.SpeakeasyBase)) {
      req = new shared.AuthServiceRequestBody(req);
    }

    let baseURL: string = operations.BasicAuthNewServerList[0];
    if (serverURL) {
      baseURL = serverURL;
    }
    const url: string = baseURL.replace(/\/$/, "") + "/auth#basicAuth";

    let [reqBodyHeaders, reqBody]: [object, any] = [{}, {}];

    try {
      [reqBodyHeaders, reqBody] = utils.serializeRequestBody(
        req,
        "request",
        "json"
      );
    } catch (e: unknown) {
      if (e instanceof Error) {
        throw new Error(`Error serializing request body, cause: ${e.message}`);
      }
    }

    if (!(security instanceof utils.SpeakeasyBase)) {
      security = new operations.BasicAuthNewSecurity(security);
    }
    const client: AxiosInstance = utils.createSecurityClient(
      this._defaultClient,
      security
    );

    const headers = { ...reqBodyHeaders, ...config?.headers };
    headers[
      "user-agent"
    ] = `speakeasy-sdk/${this._language} ${this._sdkVersion} ${this._genVersion}`;

    const httpRes: AxiosResponse = await client.request({
      validateStatus: () => true,
      url: url,
      method: "post",
      headers: headers,
      data: reqBody,
      ...config,
    });

    const contentType: string = httpRes?.headers?.["content-type"] ?? "";

    if (httpRes?.status == null) {
      throw new Error(`status code not found in response: ${httpRes}`);
    }

    const res: operations.BasicAuthNewResponse =
      new operations.BasicAuthNewResponse({
        statusCode: httpRes.status,
        contentType: contentType,
        rawResponse: httpRes,
      });
    switch (true) {
      case [200, 401].includes(httpRes?.status):
        break;
    }

    return res;
  }

  async multipleMixedOptionsAuth(
    req: shared.AuthServiceRequestBody,
    security: operations.MultipleMixedOptionsAuthSecurity,
    serverURL?: string,
    config?: AxiosRequestConfig
  ): Promise<operations.MultipleMixedOptionsAuthResponse> {
    if (!(req instanceof utils.SpeakeasyBase)) {
      req = new shared.AuthServiceRequestBody(req);
    }

    let baseURL: string = operations.MultipleMixedOptionsAuthServerList[0];
    if (serverURL) {
      baseURL = serverURL;
    }
    const url: string =
      baseURL.replace(/\/$/, "") + "/auth#multipleMixedOptionsAuth";

    let [reqBodyHeaders, reqBody]: [object, any] = [{}, {}];

    try {
      [reqBodyHeaders, reqBody] = utils.serializeRequestBody(
        req,
        "request",
        "json"
      );
    } catch (e: unknown) {
      if (e instanceof Error) {
        throw new Error(`Error serializing request body, cause: ${e.message}`);
      }
    }

    if (!(security instanceof utils.SpeakeasyBase)) {
      security = new operations.MultipleMixedOptionsAuthSecurity(security);
    }
    const client: AxiosInstance = utils.createSecurityClient(
      this._defaultClient,
      security
    );

    const headers = { ...reqBodyHeaders, ...config?.headers };
    headers[
      "user-agent"
    ] = `speakeasy-sdk/${this._language} ${this._sdkVersion} ${this._genVersion}`;

    const httpRes: AxiosResponse = await client.request({
      validateStatus: () => true,
      url: url,
      method: "post",
      headers: headers,
      data: reqBody,
      ...config,
    });

    const contentType: string = httpRes?.headers?.["content-type"] ?? "";

    if (httpRes?.status == null) {
      throw new Error(`status code not found in response: ${httpRes}`);
    }

    const res: operations.MultipleMixedOptionsAuthResponse =
      new operations.MultipleMixedOptionsAuthResponse({
        statusCode: httpRes.status,
        contentType: contentType,
        rawResponse: httpRes,
      });
    switch (true) {
      case [200, 401].includes(httpRes?.status):
        break;
    }

    return res;
  }

  async multipleMixedSchemeAuth(
    req: shared.AuthServiceRequestBody,
    security: operations.MultipleMixedSchemeAuthSecurity,
    serverURL?: string,
    config?: AxiosRequestConfig
  ): Promise<operations.MultipleMixedSchemeAuthResponse> {
    if (!(req instanceof utils.SpeakeasyBase)) {
      req = new shared.AuthServiceRequestBody(req);
    }

    let baseURL: string = operations.MultipleMixedSchemeAuthServerList[0];
    if (serverURL) {
      baseURL = serverURL;
    }
    const url: string =
      baseURL.replace(/\/$/, "") + "/auth#multipleMixedSchemeAuth";

    let [reqBodyHeaders, reqBody]: [object, any] = [{}, {}];

    try {
      [reqBodyHeaders, reqBody] = utils.serializeRequestBody(
        req,
        "request",
        "json"
      );
    } catch (e: unknown) {
      if (e instanceof Error) {
        throw new Error(`Error serializing request body, cause: ${e.message}`);
      }
    }

    if (!(security instanceof utils.SpeakeasyBase)) {
      security = new operations.MultipleMixedSchemeAuthSecurity(security);
    }
    const client: AxiosInstance = utils.createSecurityClient(
      this._defaultClient,
      security
    );

    const headers = { ...reqBodyHeaders, ...config?.headers };
    headers[
      "user-agent"
    ] = `speakeasy-sdk/${this._language} ${this._sdkVersion} ${this._genVersion}`;

    const httpRes: AxiosResponse = await client.request({
      validateStatus: () => true,
      url: url,
      method: "post",
      headers: headers,
      data: reqBody,
      ...config,
    });

    const contentType: string = httpRes?.headers?.["content-type"] ?? "";

    if (httpRes?.status == null) {
      throw new Error(`status code not found in response: ${httpRes}`);
    }

    const res: operations.MultipleMixedSchemeAuthResponse =
      new operations.MultipleMixedSchemeAuthResponse({
        statusCode: httpRes.status,
        contentType: contentType,
        rawResponse: httpRes,
      });
    switch (true) {
      case [200, 401].includes(httpRes?.status):
        break;
    }

    return res;
  }

  async multipleOptionsWithMixedSchemesAuth(
    req: shared.AuthServiceRequestBody,
    security: operations.MultipleOptionsWithMixedSchemesAuthSecurity,
    serverURL?: string,
    config?: AxiosRequestConfig
  ): Promise<operations.MultipleOptionsWithMixedSchemesAuthResponse> {
    if (!(req instanceof utils.SpeakeasyBase)) {
      req = new shared.AuthServiceRequestBody(req);
    }

    let baseURL: string =
      operations.MultipleOptionsWithMixedSchemesAuthServerList[0];
    if (serverURL) {
      baseURL = serverURL;
    }
    const url: string =
      baseURL.replace(/\/$/, "") + "/auth#multipleOptionsWithMixedSchemesAuth";

    let [reqBodyHeaders, reqBody]: [object, any] = [{}, {}];

    try {
      [reqBodyHeaders, reqBody] = utils.serializeRequestBody(
        req,
        "request",
        "json"
      );
    } catch (e: unknown) {
      if (e instanceof Error) {
        throw new Error(`Error serializing request body, cause: ${e.message}`);
      }
    }

    if (!(security instanceof utils.SpeakeasyBase)) {
      security = new operations.MultipleOptionsWithMixedSchemesAuthSecurity(
        security
      );
    }
    const client: AxiosInstance = utils.createSecurityClient(
      this._defaultClient,
      security
    );

    const headers = { ...reqBodyHeaders, ...config?.headers };
    headers[
      "user-agent"
    ] = `speakeasy-sdk/${this._language} ${this._sdkVersion} ${this._genVersion}`;

    const httpRes: AxiosResponse = await client.request({
      validateStatus: () => true,
      url: url,
      method: "post",
      headers: headers,
      data: reqBody,
      ...config,
    });

    const contentType: string = httpRes?.headers?.["content-type"] ?? "";

    if (httpRes?.status == null) {
      throw new Error(`status code not found in response: ${httpRes}`);
    }

    const res: operations.MultipleOptionsWithMixedSchemesAuthResponse =
      new operations.MultipleOptionsWithMixedSchemesAuthResponse({
        statusCode: httpRes.status,
        contentType: contentType,
        rawResponse: httpRes,
      });
    switch (true) {
      case [200, 401].includes(httpRes?.status):
        break;
    }

    return res;
  }

  async multipleOptionsWithSimpleSchemesAuth(
    req: shared.AuthServiceRequestBody,
    security: operations.MultipleOptionsWithSimpleSchemesAuthSecurity,
    serverURL?: string,
    config?: AxiosRequestConfig
  ): Promise<operations.MultipleOptionsWithSimpleSchemesAuthResponse> {
    if (!(req instanceof utils.SpeakeasyBase)) {
      req = new shared.AuthServiceRequestBody(req);
    }

    let baseURL: string =
      operations.MultipleOptionsWithSimpleSchemesAuthServerList[0];
    if (serverURL) {
      baseURL = serverURL;
    }
    const url: string =
      baseURL.replace(/\/$/, "") + "/auth#multipleOptionsWithSimpleSchemesAuth";

    let [reqBodyHeaders, reqBody]: [object, any] = [{}, {}];

    try {
      [reqBodyHeaders, reqBody] = utils.serializeRequestBody(
        req,
        "request",
        "json"
      );
    } catch (e: unknown) {
      if (e instanceof Error) {
        throw new Error(`Error serializing request body, cause: ${e.message}`);
      }
    }

    if (!(security instanceof utils.SpeakeasyBase)) {
      security = new operations.MultipleOptionsWithSimpleSchemesAuthSecurity(
        security
      );
    }
    const client: AxiosInstance = utils.createSecurityClient(
      this._defaultClient,
      security
    );

    const headers = { ...reqBodyHeaders, ...config?.headers };
    headers[
      "user-agent"
    ] = `speakeasy-sdk/${this._language} ${this._sdkVersion} ${this._genVersion}`;

    const httpRes: AxiosResponse = await client.request({
      validateStatus: () => true,
      url: url,
      method: "post",
      headers: headers,
      data: reqBody,
      ...config,
    });

    const contentType: string = httpRes?.headers?.["content-type"] ?? "";

    if (httpRes?.status == null) {
      throw new Error(`status code not found in response: ${httpRes}`);
    }

    const res: operations.MultipleOptionsWithSimpleSchemesAuthResponse =
      new operations.MultipleOptionsWithSimpleSchemesAuthResponse({
        statusCode: httpRes.status,
        contentType: contentType,
        rawResponse: httpRes,
      });
    switch (true) {
      case [200, 401].includes(httpRes?.status):
        break;
    }

    return res;
  }

  async multipleSimpleOptionsAuth(
    req: shared.AuthServiceRequestBody,
    security: operations.MultipleSimpleOptionsAuthSecurity,
    serverURL?: string,
    config?: AxiosRequestConfig
  ): Promise<operations.MultipleSimpleOptionsAuthResponse> {
    if (!(req instanceof utils.SpeakeasyBase)) {
      req = new shared.AuthServiceRequestBody(req);
    }

    let baseURL: string = operations.MultipleSimpleOptionsAuthServerList[0];
    if (serverURL) {
      baseURL = serverURL;
    }
    const url: string =
      baseURL.replace(/\/$/, "") + "/auth#multipleSimpleOptionsAuth";

    let [reqBodyHeaders, reqBody]: [object, any] = [{}, {}];

    try {
      [reqBodyHeaders, reqBody] = utils.serializeRequestBody(
        req,
        "request",
        "json"
      );
    } catch (e: unknown) {
      if (e instanceof Error) {
        throw new Error(`Error serializing request body, cause: ${e.message}`);
      }
    }

    if (!(security instanceof utils.SpeakeasyBase)) {
      security = new operations.MultipleSimpleOptionsAuthSecurity(security);
    }
    const client: AxiosInstance = utils.createSecurityClient(
      this._defaultClient,
      security
    );

    const headers = { ...reqBodyHeaders, ...config?.headers };
    headers[
      "user-agent"
    ] = `speakeasy-sdk/${this._language} ${this._sdkVersion} ${this._genVersion}`;

    const httpRes: AxiosResponse = await client.request({
      validateStatus: () => true,
      url: url,
      method: "post",
      headers: headers,
      data: reqBody,
      ...config,
    });

    const contentType: string = httpRes?.headers?.["content-type"] ?? "";

    if (httpRes?.status == null) {
      throw new Error(`status code not found in response: ${httpRes}`);
    }

    const res: operations.MultipleSimpleOptionsAuthResponse =
      new operations.MultipleSimpleOptionsAuthResponse({
        statusCode: httpRes.status,
        contentType: contentType,
        rawResponse: httpRes,
      });
    switch (true) {
      case [200, 401].includes(httpRes?.status):
        break;
    }

    return res;
  }

  async multipleSimpleSchemeAuth(
    req: shared.AuthServiceRequestBody,
    security: operations.MultipleSimpleSchemeAuthSecurity,
    serverURL?: string,
    config?: AxiosRequestConfig
  ): Promise<operations.MultipleSimpleSchemeAuthResponse> {
    if (!(req instanceof utils.SpeakeasyBase)) {
      req = new shared.AuthServiceRequestBody(req);
    }

    let baseURL: string = operations.MultipleSimpleSchemeAuthServerList[0];
    if (serverURL) {
      baseURL = serverURL;
    }
    const url: string =
      baseURL.replace(/\/$/, "") + "/auth#multipleSimpleSchemeAuth";

    let [reqBodyHeaders, reqBody]: [object, any] = [{}, {}];

    try {
      [reqBodyHeaders, reqBody] = utils.serializeRequestBody(
        req,
        "request",
        "json"
      );
    } catch (e: unknown) {
      if (e instanceof Error) {
        throw new Error(`Error serializing request body, cause: ${e.message}`);
      }
    }

    if (!(security instanceof utils.SpeakeasyBase)) {
      security = new operations.MultipleSimpleSchemeAuthSecurity(security);
    }
    const client: AxiosInstance = utils.createSecurityClient(
      this._defaultClient,
      security
    );

    const headers = { ...reqBodyHeaders, ...config?.headers };
    headers[
      "user-agent"
    ] = `speakeasy-sdk/${this._language} ${this._sdkVersion} ${this._genVersion}`;

    const httpRes: AxiosResponse = await client.request({
      validateStatus: () => true,
      url: url,
      method: "post",
      headers: headers,
      data: reqBody,
      ...config,
    });

    const contentType: string = httpRes?.headers?.["content-type"] ?? "";

    if (httpRes?.status == null) {
      throw new Error(`status code not found in response: ${httpRes}`);
    }

    const res: operations.MultipleSimpleSchemeAuthResponse =
      new operations.MultipleSimpleSchemeAuthResponse({
        statusCode: httpRes.status,
        contentType: contentType,
        rawResponse: httpRes,
      });
    switch (true) {
      case [200, 401].includes(httpRes?.status):
        break;
    }

    return res;
  }

  async oauth2AuthNew(
    req: shared.AuthServiceRequestBody,
    security: operations.Oauth2AuthNewSecurity,
    serverURL?: string,
    config?: AxiosRequestConfig
  ): Promise<operations.Oauth2AuthNewResponse> {
    if (!(req instanceof utils.SpeakeasyBase)) {
      req = new shared.AuthServiceRequestBody(req);
    }

    let baseURL: string = operations.Oauth2AuthNewServerList[0];
    if (serverURL) {
      baseURL = serverURL;
    }
    const url: string = baseURL.replace(/\/$/, "") + "/auth#oauth2Auth";

    let [reqBodyHeaders, reqBody]: [object, any] = [{}, {}];

    try {
      [reqBodyHeaders, reqBody] = utils.serializeRequestBody(
        req,
        "request",
        "json"
      );
    } catch (e: unknown) {
      if (e instanceof Error) {
        throw new Error(`Error serializing request body, cause: ${e.message}`);
      }
    }

    if (!(security instanceof utils.SpeakeasyBase)) {
      security = new operations.Oauth2AuthNewSecurity(security);
    }
    const client: AxiosInstance = utils.createSecurityClient(
      this._defaultClient,
      security
    );

    const headers = { ...reqBodyHeaders, ...config?.headers };
    headers[
      "user-agent"
    ] = `speakeasy-sdk/${this._language} ${this._sdkVersion} ${this._genVersion}`;

    const httpRes: AxiosResponse = await client.request({
      validateStatus: () => true,
      url: url,
      method: "post",
      headers: headers,
      data: reqBody,
      ...config,
    });

    const contentType: string = httpRes?.headers?.["content-type"] ?? "";

    if (httpRes?.status == null) {
      throw new Error(`status code not found in response: ${httpRes}`);
    }

    const res: operations.Oauth2AuthNewResponse =
      new operations.Oauth2AuthNewResponse({
        statusCode: httpRes.status,
        contentType: contentType,
        rawResponse: httpRes,
      });
    switch (true) {
      case [200, 401].includes(httpRes?.status):
        break;
    }

    return res;
  }

  async openIdConnectAuthNew(
    req: shared.AuthServiceRequestBody,
    security: operations.OpenIdConnectAuthNewSecurity,
    serverURL?: string,
    config?: AxiosRequestConfig
  ): Promise<operations.OpenIdConnectAuthNewResponse> {
    if (!(req instanceof utils.SpeakeasyBase)) {
      req = new shared.AuthServiceRequestBody(req);
    }

    let baseURL: string = operations.OpenIdConnectAuthNewServerList[0];
    if (serverURL) {
      baseURL = serverURL;
    }
    const url: string = baseURL.replace(/\/$/, "") + "/auth#openIdConnectAuth";

    let [reqBodyHeaders, reqBody]: [object, any] = [{}, {}];

    try {
      [reqBodyHeaders, reqBody] = utils.serializeRequestBody(
        req,
        "request",
        "json"
      );
    } catch (e: unknown) {
      if (e instanceof Error) {
        throw new Error(`Error serializing request body, cause: ${e.message}`);
      }
    }

    if (!(security instanceof utils.SpeakeasyBase)) {
      security = new operations.OpenIdConnectAuthNewSecurity(security);
    }
    const client: AxiosInstance = utils.createSecurityClient(
      this._defaultClient,
      security
    );

    const headers = { ...reqBodyHeaders, ...config?.headers };
    headers[
      "user-agent"
    ] = `speakeasy-sdk/${this._language} ${this._sdkVersion} ${this._genVersion}`;

    const httpRes: AxiosResponse = await client.request({
      validateStatus: () => true,
      url: url,
      method: "post",
      headers: headers,
      data: reqBody,
      ...config,
    });

    const contentType: string = httpRes?.headers?.["content-type"] ?? "";

    if (httpRes?.status == null) {
      throw new Error(`status code not found in response: ${httpRes}`);
    }

    const res: operations.OpenIdConnectAuthNewResponse =
      new operations.OpenIdConnectAuthNewResponse({
        statusCode: httpRes.status,
        contentType: contentType,
        rawResponse: httpRes,
      });
    switch (true) {
      case [200, 401].includes(httpRes?.status):
        break;
    }

    return res;
  }
}
