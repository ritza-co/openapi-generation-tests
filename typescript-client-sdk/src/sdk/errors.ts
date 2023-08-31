/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import * as utils from "../internal/utils";
import * as errors from "./models/errors";
import * as operations from "./models/operations";
import { SDKConfiguration } from "./sdk";
import { AxiosInstance, AxiosRequestConfig, AxiosResponse } from "axios";

/**
 * Endpoints for testing error responses.
 */

export class Errors {
    private sdkConfiguration: SDKConfiguration;

    constructor(sdkConfig: SDKConfiguration) {
        this.sdkConfiguration = sdkConfig;
    }

    async connectionErrorGet(
        serverURL?: string,
        config?: AxiosRequestConfig
    ): Promise<operations.ConnectionErrorGetResponse> {
        let baseURL: string = utils.templateUrl(operations.ConnectionErrorGetServerList[0], {});
        if (serverURL) {
            baseURL = serverURL;
        }
        const url: string = baseURL.replace(/\/$/, "") + "/anything/connectionError";

        const client: AxiosInstance =
            this.sdkConfiguration.securityClient || this.sdkConfiguration.defaultClient;

        const headers = { ...config?.headers };
        headers["Accept"] = "*/*";

        headers[
            "x-speakeasy-user-agent"
        ] = `speakeasy-sdk/${this.sdkConfiguration.language} ${this.sdkConfiguration.sdkVersion} ${this.sdkConfiguration.genVersion} ${this.sdkConfiguration.openapiDocVersion}`;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url,
            method: "get",
            headers: headers,
            responseType: "arraybuffer",
            ...config,
        });

        const contentType: string = httpRes?.headers?.["content-type"] ?? "";

        if (httpRes?.status == null) {
            throw new Error(`status code not found in response: ${httpRes}`);
        }

        const res: operations.ConnectionErrorGetResponse =
            new operations.ConnectionErrorGetResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        switch (true) {
            case httpRes?.status == 200:
                break;
        }

        return res;
    }

    async statusGetError(
        statusCode: number,
        config?: AxiosRequestConfig
    ): Promise<operations.StatusGetErrorResponse> {
        const req = new operations.StatusGetErrorRequest({
            statusCode: statusCode,
        });
        const baseURL: string = utils.templateUrl(
            this.sdkConfiguration.serverURL,
            this.sdkConfiguration.serverDefaults
        );
        const url: string = utils.generateURL(
            baseURL,
            "/status/{statusCode}",
            req,
            this.sdkConfiguration.globals
        );

        const client: AxiosInstance =
            this.sdkConfiguration.securityClient || this.sdkConfiguration.defaultClient;

        const headers = { ...config?.headers };
        headers["Accept"] = "*/*";

        headers[
            "x-speakeasy-user-agent"
        ] = `speakeasy-sdk/${this.sdkConfiguration.language} ${this.sdkConfiguration.sdkVersion} ${this.sdkConfiguration.genVersion} ${this.sdkConfiguration.openapiDocVersion}`;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url,
            method: "get",
            headers: headers,
            responseType: "arraybuffer",
            ...config,
        });

        const contentType: string = httpRes?.headers?.["content-type"] ?? "";

        if (httpRes?.status == null) {
            throw new Error(`status code not found in response: ${httpRes}`);
        }

        const res: operations.StatusGetErrorResponse = new operations.StatusGetErrorResponse({
            statusCode: httpRes.status,
            contentType: contentType,
            rawResponse: httpRes,
        });
        switch (true) {
            case [200, 300, 400, 500].includes(httpRes?.status):
                break;
        }

        return res;
    }

    async statusGetXSpeakeasyErrors(
        statusCode: number,
        serverURL?: string,
        config?: AxiosRequestConfig
    ): Promise<operations.StatusGetXSpeakeasyErrorsResponse> {
        const req = new operations.StatusGetXSpeakeasyErrorsRequest({
            statusCode: statusCode,
        });
        let baseURL: string = utils.templateUrl(
            operations.StatusGetXSpeakeasyErrorsServerList[0],
            {}
        );
        if (serverURL) {
            baseURL = serverURL;
        }
        const url: string = utils.generateURL(
            baseURL,
            "/errors/{statusCode}",
            req,
            this.sdkConfiguration.globals
        );

        const client: AxiosInstance =
            this.sdkConfiguration.securityClient || this.sdkConfiguration.defaultClient;

        const headers = { ...config?.headers };
        headers["Accept"] = "application/json";

        headers[
            "x-speakeasy-user-agent"
        ] = `speakeasy-sdk/${this.sdkConfiguration.language} ${this.sdkConfiguration.sdkVersion} ${this.sdkConfiguration.genVersion} ${this.sdkConfiguration.openapiDocVersion}`;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url,
            method: "get",
            headers: headers,
            responseType: "arraybuffer",
            ...config,
        });

        const contentType: string = httpRes?.headers?.["content-type"] ?? "";

        if (httpRes?.status == null) {
            throw new Error(`status code not found in response: ${httpRes}`);
        }

        const res: operations.StatusGetXSpeakeasyErrorsResponse =
            new operations.StatusGetXSpeakeasyErrorsResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        const decodedRes = new TextDecoder().decode(httpRes?.data);
        switch (true) {
            case [200, 300].includes(httpRes?.status):
                break;
            case httpRes?.status == 400 ||
                httpRes?.status == 401 ||
                (httpRes?.status >= 400 && httpRes?.status < 500):
                throw new errors.SDKError(
                    "API error occurred",
                    httpRes.status,
                    decodedRes,
                    httpRes
                );
            case httpRes?.status == 500:
                if (utils.matchContentType(contentType, `application/json`)) {
                    const err = utils.objectToClass(JSON.parse(decodedRes), errors.ErrorT);
                    err.rawResponse = httpRes;
                    throw new errors.ErrorT(err);
                } else {
                    throw new errors.SDKError(
                        "unknown content-type received: " + contentType,
                        httpRes.status,
                        decodedRes,
                        httpRes
                    );
                }
                break;
            case httpRes?.status == 501:
                if (utils.matchContentType(contentType, `application/json`)) {
                    const err = utils.objectToClass(
                        JSON.parse(decodedRes),
                        errors.StatusGetXSpeakeasyErrors501ApplicationJSON
                    );
                    err.rawResponse = httpRes;
                    throw new errors.StatusGetXSpeakeasyErrors501ApplicationJSON(err);
                } else {
                    throw new errors.SDKError(
                        "unknown content-type received: " + contentType,
                        httpRes.status,
                        decodedRes,
                        httpRes
                    );
                }
                break;
        }

        return res;
    }
}
