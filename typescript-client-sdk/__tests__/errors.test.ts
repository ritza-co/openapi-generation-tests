/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import {
  ErrorT,
  SDKError,
  StatusGetXSpeakeasyErrors501ApplicationJSON,
} from "../src/sdk/models/errors";
import { expect, test } from "@jest/globals";

import { AxiosError } from "axios";
import { SDK } from "../src/sdk";
import { recordTest } from "./helpers";

test("Test Status Get Error Default Error Codes", async () => {
  recordTest("errors-status-get-error-default-error-codes");

  const sdk = new SDK({});

  expect.assertions(8);
  try {
    await sdk.errors.statusGetError(400);
  } catch (e) {
    expect(e).toBeInstanceOf(SDKError);
    expect(`${e}`).toBe("SDKError: API error occurred: Status 400");

    const sdkErr = e as SDKError;

    expect(sdkErr.statusCode).toBe(400);
    expect(sdkErr.rawResponse.status).toBe(400);
  }

  try {
    await sdk.errors.statusGetError(500);
  } catch (e) {
    expect(e).toBeInstanceOf(SDKError);
    expect(`${e}`).toBe("SDKError: API error occurred: Status 500");

    const sdkErr = e as SDKError;

    expect(sdkErr.statusCode).toBe(500);
    expect(sdkErr.rawResponse.status).toBe(500);
  }
});

test("Test Status Get Error 300 Non Error", async () => {
  recordTest("errors-status-get-error-300-non-error");

  const sdk = new SDK({});

  const res = await sdk.errors.statusGetError(300);
  expect(res.statusCode).toBe(300);
});

test("Test Status Get Error X-Speakeasy-Errors", async () => {
  recordTest("errors-status-get-error-x-speakeasy-errors");

  const sdk = new SDK({});

  expect.assertions(19);
  try {
    await sdk.errors.statusGetXSpeakeasyErrors(400);
  } catch (e) {
    expect(e).toBeInstanceOf(SDKError);
    expect(`${e}`).toBe(
      'SDKError: API error occurred: Status 400\n{"message":"an error occurred","code":"400"}\n'
    );

    const sdkErr = e as SDKError;

    expect(sdkErr.statusCode).toBe(400);
    expect(sdkErr.rawResponse.status).toBe(400);
  }

  try {
    await sdk.errors.statusGetXSpeakeasyErrors(401);
  } catch (e) {
    expect(e).toBeInstanceOf(SDKError);
    expect(`${e}`).toBe(
      'SDKError: API error occurred: Status 401\n{"message":"an error occurred","code":"401"}\n'
    );

    const sdkErr = e as SDKError;

    expect(sdkErr.statusCode).toBe(401);
    expect(sdkErr.rawResponse.status).toBe(401);
  }

  try {
    await sdk.errors.statusGetXSpeakeasyErrors(402);
  } catch (e) {
    expect(e).toBeInstanceOf(SDKError);
    expect(`${e}`).toBe(
      'SDKError: API error occurred: Status 402\n{"message":"an error occurred","code":"402"}\n'
    );

    const sdkErr = e as SDKError;

    expect(sdkErr.statusCode).toBe(402);
    expect(sdkErr.rawResponse.status).toBe(402);
  }

  try {
    await sdk.errors.statusGetXSpeakeasyErrors(500);
  } catch (e) {
    expect(e).toBeInstanceOf(ErrorT);
    expect(`${e}`).toBe("ErrorT: an error occurred");

    const sdkErr = e as ErrorT;

    expect(sdkErr.code).toBe("500");
  }

  try {
    await sdk.errors.statusGetXSpeakeasyErrors(501);
  } catch (e) {
    expect(e).toBeInstanceOf(StatusGetXSpeakeasyErrors501ApplicationJSON);
    expect(`${e}`).toBe(
      'StatusGetXSpeakeasyErrors501ApplicationJSON: {"code":"501","message":"an error occurred"}'
    );

    const sdkErr = e as StatusGetXSpeakeasyErrors501ApplicationJSON;

    expect(sdkErr.code).toBe("501");
    expect(sdkErr.rawResponse?.status).toBe(501);
  }
});

test("Test Errors Connection Error", async () => {
  recordTest("errors-connection-error");

  const sdk = new SDK({});

  expect.assertions(1);
  try {
    await sdk.errors.connectionErrorGet();
  } catch (err) {
    expect(err).toBeInstanceOf(AxiosError);
  }
});
