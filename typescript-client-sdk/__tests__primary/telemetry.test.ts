/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import {
    TelemetrySpeakeasyUserAgentGetResponse,
    TelemetryUserAgentGetResponse,
} from "../src/sdk/models/operations";
import { expect, test } from "@jest/globals";

import { SDK } from "../src/sdk";
import { recordTest } from "./common_helpers";

test("Test Telemetry User Agent Get", async () => {
    recordTest("telemetry-user-agent-get");

    const sdk = new SDK({});

    const res: TelemetryUserAgentGetResponse = await sdk.telemetry.telemetryUserAgentGet();

    expect(res.statusCode).toBeDefined();
    expect(res.statusCode).toBe(200);
    expect(res.res?.headers["X-Speakeasy-User-Agent"]).toBe(
        "speakeasy-sdk/typescript 1.40.2 2.173.0 0.1.0 openapi"
    );
});

test("Test Telemetry Speakeasy User Agent Get", async () => {
    recordTest("telemetry-speakeasy-user-agent-get");

    const sdk = new SDK({});

    const userAgent = "test user agent";

    const res: TelemetrySpeakeasyUserAgentGetResponse =
        await sdk.telemetry.telemetrySpeakeasyUserAgentGet(userAgent);

    expect(res.statusCode).toBeDefined();
    expect(res.statusCode).toBe(200);
    expect(res.res?.headers["User-Agent"]).toBe(userAgent);
    expect(res.res?.headers["X-Speakeasy-User-Agent"]).toBe(
        "speakeasy-sdk/typescript 1.40.2 2.173.0 0.1.0 openapi"
    );
});
