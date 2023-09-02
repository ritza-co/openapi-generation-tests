/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import * as utils from "../internal/utils";
import { Auth } from "./auth";
import { AuthNew } from "./authnew";
import { Errors } from "./errors";
import { First } from "./first";
import { Flattening } from "./flattening";
import { Generation } from "./generation";
import { Globals } from "./globals";
import * as errors from "./models/errors";
import * as operations from "./models/operations";
import * as shared from "./models/shared";
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
};

export class SDKConfiguration {
    defaultClient: AxiosInstance;
    securityClient: AxiosInstance;
    serverURL: string;
    serverDefaults: any;
    language = "typescript";
    openapiDocVersion = "0.1.0";
    sdkVersion = "1.31.2";
    genVersion = "2.93.0";
    globals: any;

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
    public first: First;
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
    public nested: Nested;
    /**
     * Endpoints for testing the pagination extension
     */
    public pagination: Pagination;
    /**
     * Endpoints for testing parameters.
     */
    public parameters: ParametersT;
    /**
     * Endpoints for testing request bodies.
     */
    public requestBodies: RequestBodies;
    public resource: Resource;
    /**
     * Endpoints for testing response bodies.
     */
    public responseBodies: ResponseBodies;
    /**
     * Endpoints for testing retries.
     */
    public retries: Retries;
    public second: Second;
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
        let securityClient = defaultClient;

        if (props?.security) {
            let security: shared.Security = props.security;
            if (!(props.security instanceof utils.SpeakeasyBase)) {
                security = new shared.Security(props.security);
            }
            securityClient = utils.createSecurityClient(defaultClient, security);
        }

        this.sdkConfiguration = new SDKConfiguration({
            defaultClient: defaultClient,
            securityClient: securityClient,
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
        });

        this.auth = new Auth(this.sdkConfiguration);
        this.authNew = new AuthNew(this.sdkConfiguration);
        this.errors = new Errors(this.sdkConfiguration);
        this.first = new First(this.sdkConfiguration);
        this.flattening = new Flattening(this.sdkConfiguration);
        this.generation = new Generation(this.sdkConfiguration);
        this.globals = new Globals(this.sdkConfiguration);
        this.nested = new Nested(this.sdkConfiguration);
        this.pagination = new Pagination(this.sdkConfiguration);
        this.parameters = new ParametersT(this.sdkConfiguration);
        this.requestBodies = new RequestBodies(this.sdkConfiguration);
        this.resource = new Resource(this.sdkConfiguration);
        this.responseBodies = new ResponseBodies(this.sdkConfiguration);
        this.retries = new Retries(this.sdkConfiguration);
        this.second = new Second(this.sdkConfiguration);
        this.servers = new Servers(this.sdkConfiguration);
        this.telemetry = new Telemetry(this.sdkConfiguration);
        this.unions = new Unions(this.sdkConfiguration);
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

        let [reqBodyHeaders, reqBody]: [object, any] = [{}, {}];

        try {
            [reqBodyHeaders, reqBody] = utils.serializeRequestBody(req, "request", "string");
        } catch (e: unknown) {
            if (e instanceof Error) {
                throw new Error(`Error serializing request body, cause: ${e.message}`);
            }
        }

        const client: AxiosInstance =
            this.sdkConfiguration.securityClient || this.sdkConfiguration.defaultClient;

        const headers = { ...reqBodyHeaders, ...config?.headers };
        headers["Accept"] = "application/json";

        headers[
            "x-speakeasy-user-agent"
        ] = `speakeasy-sdk/${this.sdkConfiguration.language} ${this.sdkConfiguration.sdkVersion} ${this.sdkConfiguration.genVersion} ${this.sdkConfiguration.openapiDocVersion}`;

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
                    res.putAnythingIgnoredGeneration200ApplicationJSONObject = utils.objectToClass(
                        JSON.parse(decodedRes),
                        operations.PutAnythingIgnoredGeneration200ApplicationJSON
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
