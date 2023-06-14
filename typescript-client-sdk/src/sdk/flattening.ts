/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import * as utils from "../internal/utils";
import * as operations from "./models/operations";
import * as shared from "./models/shared";
import { SDKConfiguration } from "./sdk";
import { AxiosInstance, AxiosRequestConfig, AxiosResponse } from "axios";

/**
 * Endpoints for testing flattening through request body and parameter combinations.
 */
export class Flattening {
    private sdkConfiguration: SDKConfiguration;

    constructor(sdkConfig: SDKConfiguration) {
        this.sdkConfiguration = sdkConfig;
    }

    async componentBodyAndParamConflict(
        simpleObject: shared.SimpleObject,
        str: string,
        config?: AxiosRequestConfig
    ): Promise<operations.ComponentBodyAndParamConflictResponse> {
        const req = new operations.ComponentBodyAndParamConflictRequest({
            simpleObject: simpleObject,
            str: str,
        });
        const baseURL: string = utils.templateUrl(
            this.sdkConfiguration.serverURL,
            this.sdkConfiguration.serverDefaults
        );
        const url: string =
            baseURL.replace(/\/$/, "") + "/anything/flattening/componentBodyAndParamConflict";

        let [reqBodyHeaders, reqBody]: [object, any] = [{}, {}];

        try {
            [reqBodyHeaders, reqBody] = utils.serializeRequestBody(req, "simpleObject", "json");
        } catch (e: unknown) {
            if (e instanceof Error) {
                throw new Error(`Error serializing request body, cause: ${e.message}`);
            }
        }

        const client: AxiosInstance =
            this.sdkConfiguration.securityClient || this.sdkConfiguration.defaultClient;

        const headers = { ...reqBodyHeaders, ...config?.headers };
        const queryParams: string = utils.serializeQueryParams(req, this.sdkConfiguration.globals);
        if (reqBody == null || Object.keys(reqBody).length === 0)
            throw new Error("request body is required");
        headers["Accept"] = "application/json";
        headers[
            "x-speakeasy-user-agent"
        ] = `speakeasy-sdk/${this.sdkConfiguration.language} ${this.sdkConfiguration.sdkVersion} ${this.sdkConfiguration.genVersion} ${this.sdkConfiguration.openapiDocVersion}`;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url + queryParams,
            method: "post",
            headers: headers,
            responseType: "arraybuffer",
            data: reqBody,
            ...config,
        });

        const contentType: string = httpRes?.headers?.["content-type"] ?? "";

        if (httpRes?.status == null) {
            throw new Error(`status code not found in response: ${httpRes}`);
        }

        const res: operations.ComponentBodyAndParamConflictResponse =
            new operations.ComponentBodyAndParamConflictResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        const decodedRes = new TextDecoder().decode(httpRes?.data);
        switch (true) {
            case httpRes?.status == 200:
                if (utils.matchContentType(contentType, `application/json`)) {
                    res.res = utils.objectToClass(
                        JSON.parse(decodedRes),
                        operations.ComponentBodyAndParamConflictRes
                    );
                }
                break;
        }

        return res;
    }

    async componentBodyAndParamNoConflict(
        paramStr: string,
        simpleObject: shared.SimpleObject,
        config?: AxiosRequestConfig
    ): Promise<operations.ComponentBodyAndParamNoConflictResponse> {
        const req = new operations.ComponentBodyAndParamNoConflictRequest({
            paramStr: paramStr,
            simpleObject: simpleObject,
        });
        const baseURL: string = utils.templateUrl(
            this.sdkConfiguration.serverURL,
            this.sdkConfiguration.serverDefaults
        );
        const url: string =
            baseURL.replace(/\/$/, "") + "/anything/flattening/componentBodyAndParamNoConflict";

        let [reqBodyHeaders, reqBody]: [object, any] = [{}, {}];

        try {
            [reqBodyHeaders, reqBody] = utils.serializeRequestBody(req, "simpleObject", "json");
        } catch (e: unknown) {
            if (e instanceof Error) {
                throw new Error(`Error serializing request body, cause: ${e.message}`);
            }
        }

        const client: AxiosInstance =
            this.sdkConfiguration.securityClient || this.sdkConfiguration.defaultClient;

        const headers = { ...reqBodyHeaders, ...config?.headers };
        const queryParams: string = utils.serializeQueryParams(req, this.sdkConfiguration.globals);
        if (reqBody == null || Object.keys(reqBody).length === 0)
            throw new Error("request body is required");
        headers["Accept"] = "application/json";
        headers[
            "x-speakeasy-user-agent"
        ] = `speakeasy-sdk/${this.sdkConfiguration.language} ${this.sdkConfiguration.sdkVersion} ${this.sdkConfiguration.genVersion} ${this.sdkConfiguration.openapiDocVersion}`;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url + queryParams,
            method: "post",
            headers: headers,
            responseType: "arraybuffer",
            data: reqBody,
            ...config,
        });

        const contentType: string = httpRes?.headers?.["content-type"] ?? "";

        if (httpRes?.status == null) {
            throw new Error(`status code not found in response: ${httpRes}`);
        }

        const res: operations.ComponentBodyAndParamNoConflictResponse =
            new operations.ComponentBodyAndParamNoConflictResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        const decodedRes = new TextDecoder().decode(httpRes?.data);
        switch (true) {
            case httpRes?.status == 200:
                if (utils.matchContentType(contentType, `application/json`)) {
                    res.res = utils.objectToClass(
                        JSON.parse(decodedRes),
                        operations.ComponentBodyAndParamNoConflictRes
                    );
                }
                break;
        }

        return res;
    }

    async conflictingParams(
        strPathParameter: string,
        strQueryParameter: string,
        config?: AxiosRequestConfig
    ): Promise<operations.ConflictingParamsResponse> {
        const req = new operations.ConflictingParamsRequest({
            strPathParameter: strPathParameter,
            strQueryParameter: strQueryParameter,
        });
        const baseURL: string = utils.templateUrl(
            this.sdkConfiguration.serverURL,
            this.sdkConfiguration.serverDefaults
        );
        const url: string = utils.generateURL(
            baseURL,
            "/anything/flattening/conflictingParams/{str}",
            req,
            this.sdkConfiguration.globals
        );

        const client: AxiosInstance =
            this.sdkConfiguration.securityClient || this.sdkConfiguration.defaultClient;

        const headers = { ...config?.headers };
        const queryParams: string = utils.serializeQueryParams(req, this.sdkConfiguration.globals);
        headers["Accept"] = "application/json";
        headers[
            "x-speakeasy-user-agent"
        ] = `speakeasy-sdk/${this.sdkConfiguration.language} ${this.sdkConfiguration.sdkVersion} ${this.sdkConfiguration.genVersion} ${this.sdkConfiguration.openapiDocVersion}`;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url + queryParams,
            method: "get",
            headers: headers,
            responseType: "arraybuffer",
            ...config,
        });

        const contentType: string = httpRes?.headers?.["content-type"] ?? "";

        if (httpRes?.status == null) {
            throw new Error(`status code not found in response: ${httpRes}`);
        }

        const res: operations.ConflictingParamsResponse = new operations.ConflictingParamsResponse({
            statusCode: httpRes.status,
            contentType: contentType,
            rawResponse: httpRes,
        });
        const decodedRes = new TextDecoder().decode(httpRes?.data);
        switch (true) {
            case httpRes?.status == 200:
                if (utils.matchContentType(contentType, `application/json`)) {
                    res.res = utils.objectToClass(
                        JSON.parse(decodedRes),
                        operations.ConflictingParamsRes
                    );
                }
                break;
        }

        return res;
    }

    async inlineBodyAndParamConflict(
        requestBody: operations.InlineBodyAndParamConflictRequestBody,
        str: string,
        config?: AxiosRequestConfig
    ): Promise<operations.InlineBodyAndParamConflictResponse> {
        const req = new operations.InlineBodyAndParamConflictRequest({
            requestBody: requestBody,
            str: str,
        });
        const baseURL: string = utils.templateUrl(
            this.sdkConfiguration.serverURL,
            this.sdkConfiguration.serverDefaults
        );
        const url: string =
            baseURL.replace(/\/$/, "") + "/anything/flattening/inlineBodyAndParamConflict";

        let [reqBodyHeaders, reqBody]: [object, any] = [{}, {}];

        try {
            [reqBodyHeaders, reqBody] = utils.serializeRequestBody(req, "requestBody", "json");
        } catch (e: unknown) {
            if (e instanceof Error) {
                throw new Error(`Error serializing request body, cause: ${e.message}`);
            }
        }

        const client: AxiosInstance =
            this.sdkConfiguration.securityClient || this.sdkConfiguration.defaultClient;

        const headers = { ...reqBodyHeaders, ...config?.headers };
        const queryParams: string = utils.serializeQueryParams(req, this.sdkConfiguration.globals);
        if (reqBody == null || Object.keys(reqBody).length === 0)
            throw new Error("request body is required");
        headers["Accept"] = "application/json";
        headers[
            "x-speakeasy-user-agent"
        ] = `speakeasy-sdk/${this.sdkConfiguration.language} ${this.sdkConfiguration.sdkVersion} ${this.sdkConfiguration.genVersion} ${this.sdkConfiguration.openapiDocVersion}`;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url + queryParams,
            method: "post",
            headers: headers,
            responseType: "arraybuffer",
            data: reqBody,
            ...config,
        });

        const contentType: string = httpRes?.headers?.["content-type"] ?? "";

        if (httpRes?.status == null) {
            throw new Error(`status code not found in response: ${httpRes}`);
        }

        const res: operations.InlineBodyAndParamConflictResponse =
            new operations.InlineBodyAndParamConflictResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        const decodedRes = new TextDecoder().decode(httpRes?.data);
        switch (true) {
            case httpRes?.status == 200:
                if (utils.matchContentType(contentType, `application/json`)) {
                    res.res = utils.objectToClass(
                        JSON.parse(decodedRes),
                        operations.InlineBodyAndParamConflictRes
                    );
                }
                break;
        }

        return res;
    }

    async inlineBodyAndParamNoConflict(
        requestBody: operations.InlineBodyAndParamNoConflictRequestBody,
        paramStr: string,
        config?: AxiosRequestConfig
    ): Promise<operations.InlineBodyAndParamNoConflictResponse> {
        const req = new operations.InlineBodyAndParamNoConflictRequest({
            requestBody: requestBody,
            paramStr: paramStr,
        });
        const baseURL: string = utils.templateUrl(
            this.sdkConfiguration.serverURL,
            this.sdkConfiguration.serverDefaults
        );
        const url: string =
            baseURL.replace(/\/$/, "") + "/anything/flattening/inlineBodyAndParamNoConflict";

        let [reqBodyHeaders, reqBody]: [object, any] = [{}, {}];

        try {
            [reqBodyHeaders, reqBody] = utils.serializeRequestBody(req, "requestBody", "json");
        } catch (e: unknown) {
            if (e instanceof Error) {
                throw new Error(`Error serializing request body, cause: ${e.message}`);
            }
        }

        const client: AxiosInstance =
            this.sdkConfiguration.securityClient || this.sdkConfiguration.defaultClient;

        const headers = { ...reqBodyHeaders, ...config?.headers };
        const queryParams: string = utils.serializeQueryParams(req, this.sdkConfiguration.globals);
        if (reqBody == null || Object.keys(reqBody).length === 0)
            throw new Error("request body is required");
        headers["Accept"] = "application/json";
        headers[
            "x-speakeasy-user-agent"
        ] = `speakeasy-sdk/${this.sdkConfiguration.language} ${this.sdkConfiguration.sdkVersion} ${this.sdkConfiguration.genVersion} ${this.sdkConfiguration.openapiDocVersion}`;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url + queryParams,
            method: "post",
            headers: headers,
            responseType: "arraybuffer",
            data: reqBody,
            ...config,
        });

        const contentType: string = httpRes?.headers?.["content-type"] ?? "";

        if (httpRes?.status == null) {
            throw new Error(`status code not found in response: ${httpRes}`);
        }

        const res: operations.InlineBodyAndParamNoConflictResponse =
            new operations.InlineBodyAndParamNoConflictResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        const decodedRes = new TextDecoder().decode(httpRes?.data);
        switch (true) {
            case httpRes?.status == 200:
                if (utils.matchContentType(contentType, `application/json`)) {
                    res.res = utils.objectToClass(
                        JSON.parse(decodedRes),
                        operations.InlineBodyAndParamNoConflictRes
                    );
                }
                break;
        }

        return res;
    }
}
