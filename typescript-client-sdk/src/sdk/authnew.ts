/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import * as utils from "../internal/utils";
import * as errors from "./models/errors";
import * as operations from "./models/operations";
import * as shared from "./models/shared";
import { SDKConfiguration } from "./sdk";
import { AxiosInstance, AxiosRequestConfig, AxiosResponse, RawAxiosRequestHeaders } from "axios";

/**
 * Endpoints for testing authentication.
 */

export class AuthNew {
    private sdkConfiguration: SDKConfiguration;

    constructor(sdkConfig: SDKConfiguration) {
        this.sdkConfiguration = sdkConfig;
    }

    async apiKeyAuthGlobalNew(
        req: shared.AuthServiceRequestBody,
        serverURL?: string,
        config?: AxiosRequestConfig
    ): Promise<operations.ApiKeyAuthGlobalNewResponse> {
        if (!(req instanceof utils.SpeakeasyBase)) {
            req = new shared.AuthServiceRequestBody(req);
        }

        let baseURL: string = utils.templateUrl(operations.ApiKeyAuthGlobalNewServerList[0], {});
        if (serverURL) {
            baseURL = serverURL;
        }
        const url: string = baseURL.replace(/\/$/, "") + "/auth#apiKeyAuthGlobal";

        let [reqBodyHeaders, reqBody]: [object, any] = [{}, null];

        try {
            [reqBodyHeaders, reqBody] = utils.serializeRequestBody(req, "request", "json");
        } catch (e: unknown) {
            if (e instanceof Error) {
                throw new Error(`Error serializing request body, cause: ${e.message}`);
            }
        }
        const client: AxiosInstance = this.sdkConfiguration.defaultClient;
        let globalSecurity = this.sdkConfiguration.security;
        if (typeof globalSecurity === "function") {
            globalSecurity = await globalSecurity();
        }
        if (!(globalSecurity instanceof utils.SpeakeasyBase)) {
            globalSecurity = new shared.Security(globalSecurity);
        }
        const properties = utils.parseSecurityProperties(globalSecurity);
        const headers: RawAxiosRequestHeaders = {
            ...reqBodyHeaders,
            ...config?.headers,
            ...properties.headers,
        };
        if (reqBody == null) throw new Error("request body is required");
        headers["Accept"] = "*/*";

        headers["x-speakeasy-user-agent"] = this.sdkConfiguration.userAgent;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url,
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

        const res: operations.ApiKeyAuthGlobalNewResponse =
            new operations.ApiKeyAuthGlobalNewResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        switch (true) {
            case httpRes?.status == 200:
                break;
            case httpRes?.status == 401 ||
                (httpRes?.status >= 400 && httpRes?.status < 500) ||
                (httpRes?.status >= 500 && httpRes?.status < 600):
                throw new errors.SDKError(
                    "API error occurred",
                    httpRes.status,
                    httpRes?.data,
                    httpRes
                );
        }

        return res;
    }

    async authGlobal(
        req: shared.AuthServiceRequestBody,
        serverURL?: string,
        config?: AxiosRequestConfig
    ): Promise<operations.AuthGlobalResponse> {
        if (!(req instanceof utils.SpeakeasyBase)) {
            req = new shared.AuthServiceRequestBody(req);
        }

        let baseURL: string = utils.templateUrl(operations.AuthGlobalServerList[0], {});
        if (serverURL) {
            baseURL = serverURL;
        }
        const url: string = baseURL.replace(/\/$/, "") + "/auth#authGlobal";

        let [reqBodyHeaders, reqBody]: [object, any] = [{}, null];

        try {
            [reqBodyHeaders, reqBody] = utils.serializeRequestBody(req, "request", "json");
        } catch (e: unknown) {
            if (e instanceof Error) {
                throw new Error(`Error serializing request body, cause: ${e.message}`);
            }
        }
        const client: AxiosInstance = this.sdkConfiguration.defaultClient;
        let globalSecurity = this.sdkConfiguration.security;
        if (typeof globalSecurity === "function") {
            globalSecurity = await globalSecurity();
        }
        if (!(globalSecurity instanceof utils.SpeakeasyBase)) {
            globalSecurity = new shared.Security(globalSecurity);
        }
        const properties = utils.parseSecurityProperties(globalSecurity);
        const headers: RawAxiosRequestHeaders = {
            ...reqBodyHeaders,
            ...config?.headers,
            ...properties.headers,
        };
        if (reqBody == null) throw new Error("request body is required");
        headers["Accept"] = "*/*";

        headers["x-speakeasy-user-agent"] = this.sdkConfiguration.userAgent;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url,
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

        const res: operations.AuthGlobalResponse = new operations.AuthGlobalResponse({
            statusCode: httpRes.status,
            contentType: contentType,
            rawResponse: httpRes,
        });
        switch (true) {
            case httpRes?.status == 200:
                break;
            case httpRes?.status == 401 ||
                (httpRes?.status >= 400 && httpRes?.status < 500) ||
                (httpRes?.status >= 500 && httpRes?.status < 600):
                throw new errors.SDKError(
                    "API error occurred",
                    httpRes.status,
                    httpRes?.data,
                    httpRes
                );
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

        let baseURL: string = utils.templateUrl(operations.BasicAuthNewServerList[0], {});
        if (serverURL) {
            baseURL = serverURL;
        }
        const url: string = baseURL.replace(/\/$/, "") + "/auth#basicAuth";

        let [reqBodyHeaders, reqBody]: [object, any] = [{}, null];

        try {
            [reqBodyHeaders, reqBody] = utils.serializeRequestBody(req, "request", "json");
        } catch (e: unknown) {
            if (e instanceof Error) {
                throw new Error(`Error serializing request body, cause: ${e.message}`);
            }
        }
        const client: AxiosInstance = this.sdkConfiguration.defaultClient;
        if (!(security instanceof utils.SpeakeasyBase)) {
            security = new operations.BasicAuthNewSecurity(security);
        }
        const properties = utils.parseSecurityProperties(security);
        const headers: RawAxiosRequestHeaders = {
            ...reqBodyHeaders,
            ...config?.headers,
            ...properties.headers,
        };
        if (reqBody == null) throw new Error("request body is required");
        headers["Accept"] = "*/*";

        headers["x-speakeasy-user-agent"] = this.sdkConfiguration.userAgent;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url,
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

        const res: operations.BasicAuthNewResponse = new operations.BasicAuthNewResponse({
            statusCode: httpRes.status,
            contentType: contentType,
            rawResponse: httpRes,
        });
        switch (true) {
            case httpRes?.status == 200:
                break;
            case httpRes?.status == 401 ||
                (httpRes?.status >= 400 && httpRes?.status < 500) ||
                (httpRes?.status >= 500 && httpRes?.status < 600):
                throw new errors.SDKError(
                    "API error occurred",
                    httpRes.status,
                    httpRes?.data,
                    httpRes
                );
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

        let baseURL: string = utils.templateUrl(
            operations.MultipleMixedOptionsAuthServerList[0],
            {}
        );
        if (serverURL) {
            baseURL = serverURL;
        }
        const url: string = baseURL.replace(/\/$/, "") + "/auth#multipleMixedOptionsAuth";

        let [reqBodyHeaders, reqBody]: [object, any] = [{}, null];

        try {
            [reqBodyHeaders, reqBody] = utils.serializeRequestBody(req, "request", "json");
        } catch (e: unknown) {
            if (e instanceof Error) {
                throw new Error(`Error serializing request body, cause: ${e.message}`);
            }
        }
        const client: AxiosInstance = this.sdkConfiguration.defaultClient;
        if (!(security instanceof utils.SpeakeasyBase)) {
            security = new operations.MultipleMixedOptionsAuthSecurity(security);
        }
        const properties = utils.parseSecurityProperties(security);
        const headers: RawAxiosRequestHeaders = {
            ...reqBodyHeaders,
            ...config?.headers,
            ...properties.headers,
        };
        if (reqBody == null) throw new Error("request body is required");
        headers["Accept"] = "*/*";

        headers["x-speakeasy-user-agent"] = this.sdkConfiguration.userAgent;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url,
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

        const res: operations.MultipleMixedOptionsAuthResponse =
            new operations.MultipleMixedOptionsAuthResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        switch (true) {
            case httpRes?.status == 200:
                break;
            case httpRes?.status == 401 ||
                (httpRes?.status >= 400 && httpRes?.status < 500) ||
                (httpRes?.status >= 500 && httpRes?.status < 600):
                throw new errors.SDKError(
                    "API error occurred",
                    httpRes.status,
                    httpRes?.data,
                    httpRes
                );
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

        let baseURL: string = utils.templateUrl(
            operations.MultipleMixedSchemeAuthServerList[0],
            {}
        );
        if (serverURL) {
            baseURL = serverURL;
        }
        const url: string = baseURL.replace(/\/$/, "") + "/auth#multipleMixedSchemeAuth";

        let [reqBodyHeaders, reqBody]: [object, any] = [{}, null];

        try {
            [reqBodyHeaders, reqBody] = utils.serializeRequestBody(req, "request", "json");
        } catch (e: unknown) {
            if (e instanceof Error) {
                throw new Error(`Error serializing request body, cause: ${e.message}`);
            }
        }
        const client: AxiosInstance = this.sdkConfiguration.defaultClient;
        if (!(security instanceof utils.SpeakeasyBase)) {
            security = new operations.MultipleMixedSchemeAuthSecurity(security);
        }
        const properties = utils.parseSecurityProperties(security);
        const headers: RawAxiosRequestHeaders = {
            ...reqBodyHeaders,
            ...config?.headers,
            ...properties.headers,
        };
        if (reqBody == null) throw new Error("request body is required");
        headers["Accept"] = "*/*";

        headers["x-speakeasy-user-agent"] = this.sdkConfiguration.userAgent;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url,
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

        const res: operations.MultipleMixedSchemeAuthResponse =
            new operations.MultipleMixedSchemeAuthResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        switch (true) {
            case httpRes?.status == 200:
                break;
            case httpRes?.status == 401 ||
                (httpRes?.status >= 400 && httpRes?.status < 500) ||
                (httpRes?.status >= 500 && httpRes?.status < 600):
                throw new errors.SDKError(
                    "API error occurred",
                    httpRes.status,
                    httpRes?.data,
                    httpRes
                );
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

        let baseURL: string = utils.templateUrl(
            operations.MultipleOptionsWithMixedSchemesAuthServerList[0],
            {}
        );
        if (serverURL) {
            baseURL = serverURL;
        }
        const url: string =
            baseURL.replace(/\/$/, "") + "/auth#multipleOptionsWithMixedSchemesAuth";

        let [reqBodyHeaders, reqBody]: [object, any] = [{}, null];

        try {
            [reqBodyHeaders, reqBody] = utils.serializeRequestBody(req, "request", "json");
        } catch (e: unknown) {
            if (e instanceof Error) {
                throw new Error(`Error serializing request body, cause: ${e.message}`);
            }
        }
        const client: AxiosInstance = this.sdkConfiguration.defaultClient;
        if (!(security instanceof utils.SpeakeasyBase)) {
            security = new operations.MultipleOptionsWithMixedSchemesAuthSecurity(security);
        }
        const properties = utils.parseSecurityProperties(security);
        const headers: RawAxiosRequestHeaders = {
            ...reqBodyHeaders,
            ...config?.headers,
            ...properties.headers,
        };
        if (reqBody == null) throw new Error("request body is required");
        headers["Accept"] = "*/*";

        headers["x-speakeasy-user-agent"] = this.sdkConfiguration.userAgent;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url,
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

        const res: operations.MultipleOptionsWithMixedSchemesAuthResponse =
            new operations.MultipleOptionsWithMixedSchemesAuthResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        switch (true) {
            case httpRes?.status == 200:
                break;
            case httpRes?.status == 401 ||
                (httpRes?.status >= 400 && httpRes?.status < 500) ||
                (httpRes?.status >= 500 && httpRes?.status < 600):
                throw new errors.SDKError(
                    "API error occurred",
                    httpRes.status,
                    httpRes?.data,
                    httpRes
                );
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

        let baseURL: string = utils.templateUrl(
            operations.MultipleOptionsWithSimpleSchemesAuthServerList[0],
            {}
        );
        if (serverURL) {
            baseURL = serverURL;
        }
        const url: string =
            baseURL.replace(/\/$/, "") + "/auth#multipleOptionsWithSimpleSchemesAuth";

        let [reqBodyHeaders, reqBody]: [object, any] = [{}, null];

        try {
            [reqBodyHeaders, reqBody] = utils.serializeRequestBody(req, "request", "json");
        } catch (e: unknown) {
            if (e instanceof Error) {
                throw new Error(`Error serializing request body, cause: ${e.message}`);
            }
        }
        const client: AxiosInstance = this.sdkConfiguration.defaultClient;
        if (!(security instanceof utils.SpeakeasyBase)) {
            security = new operations.MultipleOptionsWithSimpleSchemesAuthSecurity(security);
        }
        const properties = utils.parseSecurityProperties(security);
        const headers: RawAxiosRequestHeaders = {
            ...reqBodyHeaders,
            ...config?.headers,
            ...properties.headers,
        };
        if (reqBody == null) throw new Error("request body is required");
        headers["Accept"] = "*/*";

        headers["x-speakeasy-user-agent"] = this.sdkConfiguration.userAgent;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url,
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

        const res: operations.MultipleOptionsWithSimpleSchemesAuthResponse =
            new operations.MultipleOptionsWithSimpleSchemesAuthResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        switch (true) {
            case httpRes?.status == 200:
                break;
            case httpRes?.status == 401 ||
                (httpRes?.status >= 400 && httpRes?.status < 500) ||
                (httpRes?.status >= 500 && httpRes?.status < 600):
                throw new errors.SDKError(
                    "API error occurred",
                    httpRes.status,
                    httpRes?.data,
                    httpRes
                );
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

        let baseURL: string = utils.templateUrl(
            operations.MultipleSimpleOptionsAuthServerList[0],
            {}
        );
        if (serverURL) {
            baseURL = serverURL;
        }
        const url: string = baseURL.replace(/\/$/, "") + "/auth#multipleSimpleOptionsAuth";

        let [reqBodyHeaders, reqBody]: [object, any] = [{}, null];

        try {
            [reqBodyHeaders, reqBody] = utils.serializeRequestBody(req, "request", "json");
        } catch (e: unknown) {
            if (e instanceof Error) {
                throw new Error(`Error serializing request body, cause: ${e.message}`);
            }
        }
        const client: AxiosInstance = this.sdkConfiguration.defaultClient;
        if (!(security instanceof utils.SpeakeasyBase)) {
            security = new operations.MultipleSimpleOptionsAuthSecurity(security);
        }
        const properties = utils.parseSecurityProperties(security);
        const headers: RawAxiosRequestHeaders = {
            ...reqBodyHeaders,
            ...config?.headers,
            ...properties.headers,
        };
        if (reqBody == null) throw new Error("request body is required");
        headers["Accept"] = "*/*";

        headers["x-speakeasy-user-agent"] = this.sdkConfiguration.userAgent;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url,
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

        const res: operations.MultipleSimpleOptionsAuthResponse =
            new operations.MultipleSimpleOptionsAuthResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        switch (true) {
            case httpRes?.status == 200:
                break;
            case httpRes?.status == 401 ||
                (httpRes?.status >= 400 && httpRes?.status < 500) ||
                (httpRes?.status >= 500 && httpRes?.status < 600):
                throw new errors.SDKError(
                    "API error occurred",
                    httpRes.status,
                    httpRes?.data,
                    httpRes
                );
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

        let baseURL: string = utils.templateUrl(
            operations.MultipleSimpleSchemeAuthServerList[0],
            {}
        );
        if (serverURL) {
            baseURL = serverURL;
        }
        const url: string = baseURL.replace(/\/$/, "") + "/auth#multipleSimpleSchemeAuth";

        let [reqBodyHeaders, reqBody]: [object, any] = [{}, null];

        try {
            [reqBodyHeaders, reqBody] = utils.serializeRequestBody(req, "request", "json");
        } catch (e: unknown) {
            if (e instanceof Error) {
                throw new Error(`Error serializing request body, cause: ${e.message}`);
            }
        }
        const client: AxiosInstance = this.sdkConfiguration.defaultClient;
        if (!(security instanceof utils.SpeakeasyBase)) {
            security = new operations.MultipleSimpleSchemeAuthSecurity(security);
        }
        const properties = utils.parseSecurityProperties(security);
        const headers: RawAxiosRequestHeaders = {
            ...reqBodyHeaders,
            ...config?.headers,
            ...properties.headers,
        };
        if (reqBody == null) throw new Error("request body is required");
        headers["Accept"] = "*/*";

        headers["x-speakeasy-user-agent"] = this.sdkConfiguration.userAgent;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url,
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

        const res: operations.MultipleSimpleSchemeAuthResponse =
            new operations.MultipleSimpleSchemeAuthResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        switch (true) {
            case httpRes?.status == 200:
                break;
            case httpRes?.status == 401 ||
                (httpRes?.status >= 400 && httpRes?.status < 500) ||
                (httpRes?.status >= 500 && httpRes?.status < 600):
                throw new errors.SDKError(
                    "API error occurred",
                    httpRes.status,
                    httpRes?.data,
                    httpRes
                );
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

        let baseURL: string = utils.templateUrl(operations.Oauth2AuthNewServerList[0], {});
        if (serverURL) {
            baseURL = serverURL;
        }
        const url: string = baseURL.replace(/\/$/, "") + "/auth#oauth2Auth";

        let [reqBodyHeaders, reqBody]: [object, any] = [{}, null];

        try {
            [reqBodyHeaders, reqBody] = utils.serializeRequestBody(req, "request", "json");
        } catch (e: unknown) {
            if (e instanceof Error) {
                throw new Error(`Error serializing request body, cause: ${e.message}`);
            }
        }
        const client: AxiosInstance = this.sdkConfiguration.defaultClient;
        if (!(security instanceof utils.SpeakeasyBase)) {
            security = new operations.Oauth2AuthNewSecurity(security);
        }
        const properties = utils.parseSecurityProperties(security);
        const headers: RawAxiosRequestHeaders = {
            ...reqBodyHeaders,
            ...config?.headers,
            ...properties.headers,
        };
        if (reqBody == null) throw new Error("request body is required");
        headers["Accept"] = "*/*";

        headers["x-speakeasy-user-agent"] = this.sdkConfiguration.userAgent;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url,
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

        const res: operations.Oauth2AuthNewResponse = new operations.Oauth2AuthNewResponse({
            statusCode: httpRes.status,
            contentType: contentType,
            rawResponse: httpRes,
        });
        switch (true) {
            case httpRes?.status == 200:
                break;
            case httpRes?.status == 401 ||
                (httpRes?.status >= 400 && httpRes?.status < 500) ||
                (httpRes?.status >= 500 && httpRes?.status < 600):
                throw new errors.SDKError(
                    "API error occurred",
                    httpRes.status,
                    httpRes?.data,
                    httpRes
                );
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

        let baseURL: string = utils.templateUrl(operations.OpenIdConnectAuthNewServerList[0], {});
        if (serverURL) {
            baseURL = serverURL;
        }
        const url: string = baseURL.replace(/\/$/, "") + "/auth#openIdConnectAuth";

        let [reqBodyHeaders, reqBody]: [object, any] = [{}, null];

        try {
            [reqBodyHeaders, reqBody] = utils.serializeRequestBody(req, "request", "json");
        } catch (e: unknown) {
            if (e instanceof Error) {
                throw new Error(`Error serializing request body, cause: ${e.message}`);
            }
        }
        const client: AxiosInstance = this.sdkConfiguration.defaultClient;
        if (!(security instanceof utils.SpeakeasyBase)) {
            security = new operations.OpenIdConnectAuthNewSecurity(security);
        }
        const properties = utils.parseSecurityProperties(security);
        const headers: RawAxiosRequestHeaders = {
            ...reqBodyHeaders,
            ...config?.headers,
            ...properties.headers,
        };
        if (reqBody == null) throw new Error("request body is required");
        headers["Accept"] = "*/*";

        headers["x-speakeasy-user-agent"] = this.sdkConfiguration.userAgent;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url,
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

        const res: operations.OpenIdConnectAuthNewResponse =
            new operations.OpenIdConnectAuthNewResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        switch (true) {
            case httpRes?.status == 200:
                break;
            case httpRes?.status == 401 ||
                (httpRes?.status >= 400 && httpRes?.status < 500) ||
                (httpRes?.status >= 500 && httpRes?.status < 600):
                throw new errors.SDKError(
                    "API error occurred",
                    httpRes.status,
                    httpRes?.data,
                    httpRes
                );
        }

        return res;
    }
}
