/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import * as utils from "../internal/utils";
import * as errors from "../sdk/models/errors";
import * as operations from "../sdk/models/operations";
import * as shared from "../sdk/models/shared";
import { Auth } from "./auth";
import { AuthNew } from "./authnew";
import { Documentation } from "./documentation";
import { Errors } from "./errors";
import { First } from "./first";
import { Flattening } from "./flattening";
import { Generation } from "./generation";
import { Globals } from "./globals";
import { Nest } from "./nest";
import { Nested } from "./nested";
import { Pagination } from "./pagination";
import { ParametersT } from "./parameters";
import { RequestBodies } from "./requestbodies";
import { Resource } from "./resource";
import { ResponseBodies } from "./responsebodies";
import { Retries } from "./retries";
import { Second } from "./second";
import { Servers } from "./servers";
import { Telemetry } from "./telemetry";
import { Unions } from "./unions";
import axios from "axios";
import { AxiosInstance, AxiosRequestConfig, AxiosResponse, RawAxiosRequestHeaders } from "axios";

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
    /**
     * A server url with templated variables.
     */
    "http://localhost:35123/anything/{something}",
    /**
     * A server url with templated variables (including the protocol).
     */
    "{protocol}://{hostname}:{port}",
] as const;

/**
 * Something is a variable for changing the root path
 */
export enum ServerSomething {
    Something = "something",
    SomethingElse = "somethingElse",
    SomethingElseAgain = "somethingElseAgain",
}

/**
 * The available configuration options for the SDK
 */
export type SDKProps = {
    /**
     * The security details required to authenticate the SDK
     */
    security?: shared.Security | (() => Promise<shared.Security>);

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
     * Allows overriding the default server used by the SDK
     */
    serverIdx?: number;

    /**
     * Allows setting the hostname variable for url substitution
     */
    hostname?: string;

    /**
     * Allows setting the port variable for url substitution
     */
    port?: string;

    /**
     * Allows setting the protocol variable for url substitution
     */
    protocol?: string;

    /**
     * Allows setting the something variable for url substitution
     */
    something?: ServerSomething;

    /**
     * Allows overriding the default server URL used by the SDK
     */
    serverURL?: string;
    /**
     * Allows overriding the default retry config used by the SDK
     */
    retryConfig?: utils.RetryConfig;
};

export class SDKConfiguration {
    defaultClient: AxiosInstance;
    security?: shared.Security | (() => Promise<shared.Security>);
    serverURL: string;
    serverDefaults: any;
    language = "typescript";
    openapiDocVersion = "0.1.0";
    sdkVersion = "2.0.1";
    genVersion = "2.183.0";
    userAgent = "speakeasy-sdk/typescript 2.0.1 2.183.0 0.1.0 openapi";
    globals: any;
    retryConfig?: utils.RetryConfig;
    public constructor(init?: Partial<SDKConfiguration>) {
        Object.assign(this, init);
    }
}

/**
 * Test: Test Summary
 *
 * @remarks
 * Some test description.
 * About our test document.
 *
 * @see {@link https://speakeasyapi.dev/docs/home} - Speakeasy Docs
 */
export class SDK {
    /**
     * Endpoints for purely testing valid generation behavior.
     */
    public generation: Generation;
    /**
     * Endpoints for testing error responses.
     */
    public errors: Errors;
    /**
     * Endpoints for testing union types.
     */
    public unions: Unions;
    /**
     * Endpoints for testing flattening through request body and parameter combinations.
     */
    public flattening: Flattening;
    /**
     * Endpoints for testing global parameters.
     */
    public globals: Globals;
    /**
     * Endpoints for testing parameters.
     */
    public parameters: ParametersT;
    public nest: Nest;
    public nested: Nested;
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
     * Endpoints for testing authentication.
     */
    public authNew: AuthNew;
    /**
     * Endpoints for testing authentication.
     */
    public auth: Auth;
    /**
     * Testing for documentation extensions in TypeScript.
     */
    public documentation: Documentation;
    public resource: Resource;
    public first: First;
    public second: Second;
    /**
     * Endpoints for testing the pagination extension
     */
    public pagination: Pagination;
    /**
     * Endpoints for testing retries.
     */
    public retries: Retries;

    private sdkConfiguration: SDKConfiguration;

    constructor(props?: SDKProps) {
        let serverURL = props?.serverURL;
        let defaults: any = {};

        const serverDefaults = [
            {},
            {},
            {
                hostname: props?.hostname?.toString() ?? "localhost",
                port: props?.port?.toString() ?? "35123",
            },
            {
                something: props?.something?.toString() ?? "something",
            },
            {
                hostname: props?.hostname?.toString() ?? "localhost",
                port: props?.port?.toString() ?? "35123",
                protocol: props?.protocol?.toString() ?? "http",
            },
        ];
        const serverIdx = props?.serverIdx ?? 0;

        if (!serverURL) {
            serverURL = ServerList[serverIdx];
            defaults = serverDefaults[serverIdx];
        }

        const defaultClient = props?.defaultClient ?? axios.create({ baseURL: serverURL });
        this.sdkConfiguration = new SDKConfiguration({
            defaultClient: defaultClient,
            security: props?.security,
            serverURL: serverURL,
            serverDefaults: defaults,
            globals: {
                parameters: {
                    queryParam: {
                        globalQueryParam: props?.globalQueryParam,
                    },
                    pathParam: {
                        globalPathParam: props?.globalPathParam,
                    },
                },
            },
            retryConfig: props?.retryConfig,
        });

        this.generation = new Generation(this.sdkConfiguration);
        this.errors = new Errors(this.sdkConfiguration);
        this.unions = new Unions(this.sdkConfiguration);
        this.flattening = new Flattening(this.sdkConfiguration);
        this.globals = new Globals(this.sdkConfiguration);
        this.parameters = new ParametersT(this.sdkConfiguration);
        this.nest = new Nest(this.sdkConfiguration);
        this.nested = new Nested(this.sdkConfiguration);
        this.requestBodies = new RequestBodies(this.sdkConfiguration);
        this.responseBodies = new ResponseBodies(this.sdkConfiguration);
        this.servers = new Servers(this.sdkConfiguration);
        this.telemetry = new Telemetry(this.sdkConfiguration);
        this.authNew = new AuthNew(this.sdkConfiguration);
        this.auth = new Auth(this.sdkConfiguration);
        this.documentation = new Documentation(this.sdkConfiguration);
        this.resource = new Resource(this.sdkConfiguration);
        this.first = new First(this.sdkConfiguration);
        this.second = new Second(this.sdkConfiguration);
        this.pagination = new Pagination(this.sdkConfiguration);
        this.retries = new Retries(this.sdkConfiguration);
    }

    async putAnythingIgnoredGeneration(
        req: string,
        config?: AxiosRequestConfig
    ): Promise<operations.PutAnythingIgnoredGenerationResponse> {
        const baseURL: string = utils.templateUrl(
            this.sdkConfiguration.serverURL,
            this.sdkConfiguration.serverDefaults
        );
        const url: string = baseURL.replace(/\/$/, "") + "/anything/ignoredGeneration";

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
        headers["Accept"] = "application/json";

        headers["x-speakeasy-user-agent"] = this.sdkConfiguration.userAgent;

        const httpRes: AxiosResponse = await client.request({
            validateStatus: () => true,
            url: url,
            method: "put",
            headers: headers,
            responseType: "arraybuffer",
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
        const decodedRes = new TextDecoder().decode(httpRes?.data);
        switch (true) {
            case httpRes?.status == 200:
                if (utils.matchContentType(contentType, `application/json`)) {
                    res.object = utils.objectToClass(
                        JSON.parse(decodedRes),
                        operations.PutAnythingIgnoredGenerationResponseBody
                    );
                } else {
                    throw new errors.SDKError(
                        "unknown content-type received: " + contentType,
                        httpRes.status,
                        decodedRes,
                        httpRes
                    );
                }
                break;
            case (httpRes?.status >= 400 && httpRes?.status < 500) ||
                (httpRes?.status >= 500 && httpRes?.status < 600):
                throw new errors.SDKError(
                    "API error occurred",
                    httpRes.status,
                    decodedRes,
                    httpRes
                );
        }

        return res;
    }

    async responseBodyJsonGet(
        config?: AxiosRequestConfig
    ): Promise<operations.ResponseBodyJsonGetResponse> {
        const baseURL: string = utils.templateUrl(
            this.sdkConfiguration.serverURL,
            this.sdkConfiguration.serverDefaults
        );
        const url: string = baseURL.replace(/\/$/, "") + "/json";
        const client: AxiosInstance = this.sdkConfiguration.defaultClient;
        let globalSecurity = this.sdkConfiguration.security;
        if (typeof globalSecurity === "function") {
            globalSecurity = await globalSecurity();
        }
        if (!(globalSecurity instanceof utils.SpeakeasyBase)) {
            globalSecurity = new shared.Security(globalSecurity);
        }
        const properties = utils.parseSecurityProperties(globalSecurity);
        const headers: RawAxiosRequestHeaders = { ...config?.headers, ...properties.headers };
        headers["Accept"] = "application/json";

        headers["x-speakeasy-user-agent"] = this.sdkConfiguration.userAgent;

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

        const res: operations.ResponseBodyJsonGetResponse =
            new operations.ResponseBodyJsonGetResponse({
                statusCode: httpRes.status,
                contentType: contentType,
                rawResponse: httpRes,
            });
        const decodedRes = new TextDecoder().decode(httpRes?.data);
        switch (true) {
            case httpRes?.status == 200:
                if (utils.matchContentType(contentType, `application/json`)) {
                    res.httpBinSimpleJsonObject = utils.objectToClass(
                        JSON.parse(decodedRes),
                        shared.HttpBinSimpleJsonObject
                    );
                } else {
                    throw new errors.SDKError(
                        "unknown content-type received: " + contentType,
                        httpRes.status,
                        decodedRes,
                        httpRes
                    );
                }
                break;
            case (httpRes?.status >= 400 && httpRes?.status < 500) ||
                (httpRes?.status >= 500 && httpRes?.status < 600):
                throw new errors.SDKError(
                    "API error occurred",
                    httpRes.status,
                    decodedRes,
                    httpRes
                );
        }

        return res;
    }
}
