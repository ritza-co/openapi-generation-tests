/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import * as utils from "../internal/utils";
import * as operations from "./models/operations";
import { SDKConfiguration } from "./sdk";
import { AxiosInstance, AxiosRequestConfig, AxiosResponse } from "axios";

/**
 * Endpoints for testing telemetry.
 */
export class Telemetry {
    private sdkConfiguration: SDKConfiguration;

    constructor(sdkConfig: SDKConfiguration) {
        this.sdkConfiguration = sdkConfig;
    }

    async telemetrySpeakeasyUserAgentGet(
        userAgent: string,
        config?: AxiosRequestConfig
    ): Promise<operations.TelemetrySpeakeasyUserAgentGetResponse> {
        const req = new operations.TelemetrySpeakeasyUserAgentGetRequest({
            userAgent: userAgent,
        });
        const baseURL: string = utils.templateUrl(
            this.sdkConfiguration.serverURL,
            this.sdkConfiguration.serverDefaults
        );
        const url: string = baseURL.replace(/\/$/, "") + "/anything/telemetry/speakeasy-user-agent";

        const client: AxiosInstance =
            this.sdkConfiguration.securityClient || this.sdkConfiguration.defaultClient;

        const headers = { ...utils.getHeadersFromRequest(req), ...config?.headers };
        headers["Accept"] = "application/json";
        headers[
            "x-speakeasy-user-agent"
        ] = `speakeasy-sdk/${this.sdkConfiguration.language} ${this.sdkConfiguration.sdkVersion} ${this.sdkConfiguration.genVersion}`;

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

        const res: operations.TelemetrySpeakeasyUserAgentGetResponse =
            new operations.TelemetrySpeakeasyUserAgentGetResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        switch (true) {
            case httpRes?.status == 200:
                if (utils.matchContentType(contentType, `application/json`)) {
                    res.res = utils.objectToClass(
                        httpRes?.data,
                        operations.TelemetrySpeakeasyUserAgentGetRes
                    );
                }
                break;
        }

        return res;
    }

    async telemetryUserAgentGet(
        config?: AxiosRequestConfig
    ): Promise<operations.TelemetryUserAgentGetResponse> {
        const baseURL: string = utils.templateUrl(
            this.sdkConfiguration.serverURL,
            this.sdkConfiguration.serverDefaults
        );
        const url: string = baseURL.replace(/\/$/, "") + "/anything/telemetry/user-agent";

        const client: AxiosInstance =
            this.sdkConfiguration.securityClient || this.sdkConfiguration.defaultClient;

        const headers = { ...config?.headers };
        headers["Accept"] = "application/json";
        headers[
            "x-speakeasy-user-agent"
        ] = `speakeasy-sdk/${this.sdkConfiguration.language} ${this.sdkConfiguration.sdkVersion} ${this.sdkConfiguration.genVersion}`;

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

        const res: operations.TelemetryUserAgentGetResponse =
            new operations.TelemetryUserAgentGetResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        switch (true) {
            case httpRes?.status == 200:
                if (utils.matchContentType(contentType, `application/json`)) {
                    res.res = utils.objectToClass(
                        httpRes?.data,
                        operations.TelemetryUserAgentGetRes
                    );
                }
                break;
        }

        return res;
    }
}
