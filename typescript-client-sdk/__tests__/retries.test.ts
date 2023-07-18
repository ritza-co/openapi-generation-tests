/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { expect, test } from "@jest/globals";

import { SDK } from "../src/sdk";
import { SDKError } from "../src/sdk/models/errors";
import { RetriesGetResponse } from "../src/sdk/models/operations";
import { recordTest } from "./helpers";

test("Test Retries Succeeds", async () => {
  recordTest("retries-succeeds");

  const sdk = new SDK({});

  const res: RetriesGetResponse = await sdk.retries.retriesGet(pseudoUUID());

  expect(res.statusCode).toBeDefined();
  expect(res.statusCode).toBe(200);
  expect(res.retries?.retries).toBe(3);
});

test("Test Retries Timeout", async () => {
  recordTest("retries-timeout");

  const sdk = new SDK({});

  expect.assertions(2);
  try {
    await sdk.retries.retriesGet(pseudoUUID(), 1000000000, {
      strategy: "backoff",
      backoff: {
        initialInterval: 1,
        maxInterval: 50,
        exponent: 1.1,
        maxElapsedTime: 100,
      },
      retryConnectionErrors: false,
    });
  } catch (e) {
    expect(e).toBeInstanceOf(SDKError);

    const sdkErr = e as SDKError;
    expect(sdkErr.statusCode).toBe(503);
  }
});

function pseudoUUID() {
  return "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, function (c) {
    const r = (Math.random() * 16) | 0,
      v = c == "x" ? r : (r & 0x3) | 0x8;
    return v.toString(16);
  });
}
