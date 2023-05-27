/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import * as utils from "../internal/utils";
import * as operations from "./models/operations";
import { AxiosInstance, AxiosRequestConfig, AxiosResponse } from "axios";

/**
 * Endpoints for testing authentication.
 */
export class Auth {
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

    async apiKeyAuth(
        security: operations.ApiKeyAuthSecurity,
        config?: AxiosRequestConfig
    ): Promise<operations.ApiKeyAuthResponse> {
        const baseURL: string = this._serverURL;
        const url: string = baseURL.replace(/\/$/, "") + "/bearer#operation";

        if (!(security instanceof utils.SpeakeasyBase)) {
            security = new operations.ApiKeyAuthSecurity(security);
        }
        const client: AxiosInstance = utils.createSecurityClient(this._defaultClient, security);

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

        const res: operations.ApiKeyAuthResponse = new operations.ApiKeyAuthResponse({
            statusCode: httpRes.status,
            contentType: contentType,
            rawResponse: httpRes,
        });
        switch (true) {
            case httpRes?.status == 200:
                if (utils.matchContentType(contentType, `application/json`)) {
                    res.token = utils.objectToClass(httpRes?.data, operations.ApiKeyAuthToken);
                }
                break;
            case httpRes?.status == 401:
                break;
        }

        return res;
    }

    async apiKeyAuthGlobal(
        config?: AxiosRequestConfig
    ): Promise<operations.ApiKeyAuthGlobalResponse> {
        const baseURL: string = this._serverURL;
        const url: string = baseURL.replace(/\/$/, "") + "/bearer";

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

        const res: operations.ApiKeyAuthGlobalResponse = new operations.ApiKeyAuthGlobalResponse({
            statusCode: httpRes.status,
            contentType: contentType,
            rawResponse: httpRes,
        });
        switch (true) {
            case httpRes?.status == 200:
                if (utils.matchContentType(contentType, `application/json`)) {
                    res.token = utils.objectToClass(
                        httpRes?.data,
                        operations.ApiKeyAuthGlobalToken
                    );
                }
                break;
            case httpRes?.status == 401:
                break;
        }

        return res;
    }

    async basicAuth(
        security: operations.BasicAuthSecurity,
        passwd: string,
        user: string,
        config?: AxiosRequestConfig
    ): Promise<operations.BasicAuthResponse> {
        const req = new operations.BasicAuthRequest({
            passwd: passwd,
            user: user,
        });
        const baseURL: string = this._serverURL;
        const url: string = utils.generateURL(
            baseURL,
            "/basic-auth/{user}/{passwd}",
            req,
            this._globals
        );

        if (!(security instanceof utils.SpeakeasyBase)) {
            security = new operations.BasicAuthSecurity(security);
        }
        const client: AxiosInstance = utils.createSecurityClient(this._defaultClient, security);

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

        const res: operations.BasicAuthResponse = new operations.BasicAuthResponse({
            statusCode: httpRes.status,
            contentType: contentType,
            rawResponse: httpRes,
        });
        switch (true) {
            case httpRes?.status == 200:
                if (utils.matchContentType(contentType, `application/json`)) {
                    res.user = utils.objectToClass(httpRes?.data, operations.BasicAuthUser);
                }
                break;
            case httpRes?.status == 401:
                break;
        }

        return res;
    }

    async bearerAuth(
        security: operations.BearerAuthSecurity,
        config?: AxiosRequestConfig
    ): Promise<operations.BearerAuthResponse> {
        const baseURL: string = this._serverURL;
        const url: string = baseURL.replace(/\/$/, "") + "/bearer#bearer";

        if (!(security instanceof utils.SpeakeasyBase)) {
            security = new operations.BearerAuthSecurity(security);
        }
        const client: AxiosInstance = utils.createSecurityClient(this._defaultClient, security);

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

        const res: operations.BearerAuthResponse = new operations.BearerAuthResponse({
            statusCode: httpRes.status,
            contentType: contentType,
            rawResponse: httpRes,
        });
        switch (true) {
            case httpRes?.status == 200:
                if (utils.matchContentType(contentType, `application/json`)) {
                    res.token = utils.objectToClass(httpRes?.data, operations.BearerAuthToken);
                }
                break;
            case httpRes?.status == 401:
                break;
        }

        return res;
    }

    async oauth2Auth(
        security: operations.Oauth2AuthSecurity,
        config?: AxiosRequestConfig
    ): Promise<operations.Oauth2AuthResponse> {
        const baseURL: string = this._serverURL;
        const url: string = baseURL.replace(/\/$/, "") + "/bearer#oauth2";

        if (!(security instanceof utils.SpeakeasyBase)) {
            security = new operations.Oauth2AuthSecurity(security);
        }
        const client: AxiosInstance = utils.createSecurityClient(this._defaultClient, security);

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

        const res: operations.Oauth2AuthResponse = new operations.Oauth2AuthResponse({
            statusCode: httpRes.status,
            contentType: contentType,
            rawResponse: httpRes,
        });
        switch (true) {
            case httpRes?.status == 200:
                if (utils.matchContentType(contentType, `application/json`)) {
                    res.token = utils.objectToClass(httpRes?.data, operations.Oauth2AuthToken);
                }
                break;
            case httpRes?.status == 401:
                break;
        }

        return res;
    }

    async openIdConnectAuth(
        security: operations.OpenIdConnectAuthSecurity,
        config?: AxiosRequestConfig
    ): Promise<operations.OpenIdConnectAuthResponse> {
        const baseURL: string = this._serverURL;
        const url: string = baseURL.replace(/\/$/, "") + "/bearer#openIdConnect";

        if (!(security instanceof utils.SpeakeasyBase)) {
            security = new operations.OpenIdConnectAuthSecurity(security);
        }
        const client: AxiosInstance = utils.createSecurityClient(this._defaultClient, security);

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

        const res: operations.OpenIdConnectAuthResponse = new operations.OpenIdConnectAuthResponse({
            statusCode: httpRes.status,
            contentType: contentType,
            rawResponse: httpRes,
        });
        switch (true) {
            case httpRes?.status == 200:
                if (utils.matchContentType(contentType, `application/json`)) {
                    res.token = utils.objectToClass(
                        httpRes?.data,
                        operations.OpenIdConnectAuthToken
                    );
                }
                break;
            case httpRes?.status == 401:
                break;
        }

        return res;
    }
}
