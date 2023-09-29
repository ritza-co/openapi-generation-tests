/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import * as fs from "fs";
import * as path from "path";

import {
  ReadOnlyObjectInput,
  ReadWriteObjectInput,
  WriteOnlyObject,
} from "../src/sdk/models/shared";
import {
  createDeepObject, createDeepObjectCamelCase,
  createSimpleObject,
  createSimpleObjectCamelCase,
  recordTest,
  sortKeys,
} from "./helpers";
import { expect, test } from "@jest/globals";

import { SDK } from "../src";

test("Request Body Post Application JSON Simple", async () => {
  recordTest("request-bodies-post-application-json-simple");

  const s = new SDK({});
  const obj = createSimpleObject();
  const res = await s.requestBodies.requestBodyPostApplicationJsonSimple(obj);
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.json).toEqual(obj);
});

test("Request Body Post Application JSON Simple Camel Case", async () => {
  recordTest("request-bodies-post-application-json-simple-camel-case");

  const s = new SDK({});
  const obj = createSimpleObjectCamelCase();
  const res = await s.requestBodies.requestBodyPostApplicationJsonSimpleCamelCase(obj);

  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.json).toEqual(obj);
});

test("Request Body Post Application JSON Array", async () => {
  recordTest("request-bodies-post-application-json-array");

  const s = new SDK({});
  const obj = createSimpleObject();
  const res = await s.requestBodies.requestBodyPostApplicationJsonArray([
    obj,
    obj,
  ]);
  expect(res.statusCode).toBe(200);
  expect(res.simpleObjects).toBeDefined();
  expect(res.simpleObjects).toEqual([obj, obj]);
});

test("Request Body Post Application JSON Array Camel Case", async () => {
  recordTest("request-bodies-post-application-json-array-camel-case");

  const s = new SDK({});
  const obj = createSimpleObjectCamelCase();
  const res = await s.requestBodies.requestBodyPostApplicationJsonArrayCamelCase([
    obj,
    obj,
  ]);
  expect(res.statusCode).toBe(200);
  expect(res.simpleObjectCamelCases).toBeDefined();
  expect(res.simpleObjectCamelCases).toEqual([obj, obj]);
});

test("Request Body Post Application JSON Array of Array", async () => {
  recordTest("request-bodies-post-application-json-array-of-array");

  const s = new SDK({});
  const obj = createSimpleObject();
  const res = await s.requestBodies.requestBodyPostApplicationJsonArrayOfArray([
    [obj],
    [obj],
  ]);
  expect(res.statusCode).toBe(200);
  expect(res.arrs).toBeDefined();
  expect(res.arrs).toEqual([[obj], [obj]]);
});

test("Request Body Post Application JSON Array of Array Camel Case", async () => {
  recordTest("request-bodies-post-application-json-array-of-array-camel-case");

  const s = new SDK({});
  const obj = createSimpleObjectCamelCase();
  const res = await s.requestBodies.requestBodyPostApplicationJsonArrayOfArrayCamelCase([
    [obj],
    [obj],
  ]);
  expect(res.statusCode).toBe(200);
  expect(res.arrs).toBeDefined();
  expect(res.arrs).toEqual([[obj], [obj]]);
});

test("Request Body Post Application JSON Map", async () => {
  recordTest("request-bodies-post-application-json-map");

  const s = new SDK({});
  const obj = createSimpleObject();
  const res = await s.requestBodies.requestBodyPostApplicationJsonMap({
    mapElem1: obj,
    mapElem2: obj,
  });
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res).toEqual({
    mapElem1: obj,
    mapElem2: obj,
  });
});

test("Request Body Post Application JSON Map Camel Case", async () => {
  recordTest("request-bodies-post-application-json-map-camel-case");

  const s = new SDK({});
  const obj = createSimpleObjectCamelCase();
  const res = await s.requestBodies.requestBodyPostApplicationJsonMapCamelCase({
    mapElem1: obj,
    mapElem2: obj,
  });
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res).toEqual({
    mapElem1: obj,
    mapElem2: obj,
  });
});

test("Request Body Post Application JSON Map of Map", async () => {
  recordTest("request-bodies-post-application-json-map-of-map");

  const s = new SDK({});
  const obj = createSimpleObject();
  const res = await s.requestBodies.requestBodyPostApplicationJsonMapOfMap({
    mapElem1: {
      subMapElem1: obj,
      subMapElem2: obj,
    },
    mapElem2: {
      subMapElem1: obj,
      subMapElem2: obj,
    },
  });
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res).toEqual({
    mapElem1: {
      subMapElem1: obj,
      subMapElem2: obj,
    },
    mapElem2: {
      subMapElem1: obj,
      subMapElem2: obj,
    },
  });
});

test("Request Body Post Application JSON Map of Map Camel Case", async () => {
  recordTest("request-bodies-post-application-json-map-of-map-camel-case");

  const s = new SDK({});
  const obj = createSimpleObjectCamelCase();
  const res = await s.requestBodies.requestBodyPostApplicationJsonMapOfMapCamelCase({
    mapElem1: {
      subMapElem1: obj,
      subMapElem2: obj,
    },
    mapElem2: {
      subMapElem1: obj,
      subMapElem2: obj,
    },
  });
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res).toEqual({
    mapElem1: {
      subMapElem1: obj,
      subMapElem2: obj,
    },
    mapElem2: {
      subMapElem1: obj,
      subMapElem2: obj,
    },
  });
});

test("Request Body Post Application JSON Map of Array", async () => {
  recordTest("request-bodies-post-application-json-map-of-array");

  const s = new SDK({});
  const obj = createSimpleObject();
  const res = await s.requestBodies.requestBodyPostApplicationJsonMapOfArray({
    mapElem1: [obj, obj],
    mapElem2: [obj, obj],
  });
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res).toEqual({
    mapElem1: [obj, obj],
    mapElem2: [obj, obj],
  });
});

test("Request Body Post Application JSON Map of Array Camel Case", async () => {
  recordTest("request-bodies-post-application-json-map-of-array-camel-case");

  const s = new SDK({});
  const obj = createSimpleObjectCamelCase();
  const res = await s.requestBodies.requestBodyPostApplicationJsonMapOfArrayCamelCase({
    mapElem1: [obj, obj],
    mapElem2: [obj, obj],
  });
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res).toEqual({
    mapElem1: [obj, obj],
    mapElem2: [obj, obj],
  });
});

test("Request Body Post Application JSON Array of Map", async () => {
  recordTest("request-bodies-post-application-json-array-of-map");

  const s = new SDK({});
  const obj = createSimpleObject();
  const res = await s.requestBodies.requestBodyPostApplicationJsonArrayOfMap([
    {
      mapElem1: obj,
      mapElem2: obj,
    },
    {
      mapElem1: obj,
      mapElem2: obj,
    },
  ]);
  expect(res.statusCode).toBe(200);
  expect(res.maps).toBeDefined();
  expect(res.maps).toEqual([
    {
      mapElem1: obj,
      mapElem2: obj,
    },
    {
      mapElem1: obj,
      mapElem2: obj,
    },
  ]);
});

test("Request Body Post Application JSON Array of Map Camel Case", async () => {
  recordTest("request-bodies-post-application-json-array-of-map-camel-case");

  const s = new SDK({});
  const obj = createSimpleObjectCamelCase();
  const res = await s.requestBodies.requestBodyPostApplicationJsonArrayOfMapCamelCase([
    {
      mapElem1: obj,
      mapElem2: obj,
    },
    {
      mapElem1: obj,
      mapElem2: obj,
    },
  ]);
  expect(res.statusCode).toBe(200);
  expect(res.maps).toBeDefined();
  expect(res.maps).toEqual([
    {
      mapElem1: obj,
      mapElem2: obj,
    },
    {
      mapElem1: obj,
      mapElem2: obj,
    },
  ]);
});

test("Request Body Post Application JSON Map of Primitive", async () => {
  recordTest("request-bodies-post-application-json-map-of-primitive");

  const s = new SDK({});
  const res =
    await s.requestBodies.requestBodyPostApplicationJsonMapOfPrimitive({
      mapElem1: "hello",
      mapElem2: "world",
    });
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res).toEqual({
    mapElem1: "hello",
    mapElem2: "world",
  });
});

test("Request Body Post Application JSON Array of Primitive", async () => {
  recordTest("request-bodies-post-application-json-array-of-primitive");

  const s = new SDK({});
  const res =
    await s.requestBodies.requestBodyPostApplicationJsonArrayOfPrimitive([
      "hello",
      "world",
    ]);
  expect(res.statusCode).toBe(200);
  expect(res.strings).toBeDefined();
  expect(res.strings).toEqual(["hello", "world"]);
});

test("Request Body Post Application JSON Map of Map of Primitive", async () => {
  recordTest("request-bodies-post-application-json-map-of-map-of-primitive");

  const s = new SDK({});
  const res =
    await s.requestBodies.requestBodyPostApplicationJsonMapOfMapOfPrimitive({
      mapElem1: {
        subMapElem1: "foo",
        subMapElem2: "bar",
      },
      mapElem2: {
        subMapElem1: "buzz",
        subMapElem2: "bazz",
      },
    });
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res).toEqual({
    mapElem1: {
      subMapElem1: "foo",
      subMapElem2: "bar",
    },
    mapElem2: {
      subMapElem1: "buzz",
      subMapElem2: "bazz",
    },
  });
});

test("Request Body Post Application JSON Array of Array of Primitive", async () => {
  recordTest(
    "request-bodies-post-application-json-array-of-array-of-primitive"
  );

  const s = new SDK({});
  const res =
    await s.requestBodies.requestBodyPostApplicationJsonArrayOfArrayOfPrimitive(
      [
        ["foo", "bar"],
        ["buzz", "bazz"],
      ]
    );
  expect(res.statusCode).toBe(200);
  expect(res.arrs).toBeDefined();
  expect(res.arrs).toEqual([
    ["foo", "bar"],
    ["buzz", "bazz"],
  ]);
});

test("Request Body Post Application JSON Array Object", async () => {
  recordTest("request-bodies-post-application-json-array-object");

  const s = new SDK({});
  const obj = createSimpleObject();
  const res = await s.requestBodies.requestBodyPostApplicationJsonArrayObj([
    obj,
    obj,
  ]);
  expect(res.statusCode).toBe(200);
  expect(res.arrObjValue).toBeDefined();
  expect(res.arrObjValue?.json).toEqual([obj, obj]);
});

test("Request Body Post Application JSON Array Object Camel Case", async () => {
  recordTest("request-bodies-post-application-json-array-object-camel-case");

  const s = new SDK({});
  const obj = createSimpleObjectCamelCase();
  const res = await s.requestBodies.requestBodyPostApplicationJsonArrayObjCamelCase([
    obj,
    obj,
  ]);
  expect(res.statusCode).toBe(200);
  expect(res.arrObjValueCamelCase).toBeDefined();
  expect(res.arrObjValueCamelCase?.json).toEqual([obj, obj]);
});

test("Request Body Post Application JSON Map Object", async () => {
  recordTest("request-bodies-post-application-json-map-object");

  const s = new SDK({});
  const obj = createSimpleObject();
  const res = await s.requestBodies.requestBodyPostApplicationJsonMapObj({
    mapElem1: obj,
    mapElem2: obj,
  });
  expect(res.statusCode).toBe(200);
  expect(res.mapObjValue).toBeDefined();
  expect(res.mapObjValue?.json).toEqual({
    mapElem1: obj,
    mapElem2: obj,
  });
});

test("Request Body Post Application JSON Map Object Camel Case", async () => {
  recordTest("request-bodies-post-application-json-map-object-camel-case");

  const s = new SDK({});
  const obj = createSimpleObjectCamelCase();
  const res = await s.requestBodies.requestBodyPostApplicationJsonMapObjCamelCase({
    mapElem1: obj,
    mapElem2: obj,
  });
  expect(res.statusCode).toBe(200);
  expect(res.mapObjValueCamelCase).toBeDefined();
  expect(res.mapObjValueCamelCase?.json).toEqual({
    mapElem1: obj,
    mapElem2: obj,
  });
});

test("Request Body Post Application JSON Deep", async () => {
  recordTest("request-bodies-post-application-json-deep");

  const s = new SDK({});
  const obj = createDeepObject();
  const res = await s.requestBodies.requestBodyPostApplicationJsonDeep(obj);
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();

  if (res.res?.json?.any) res.res.json.any = null;
  obj.any = null;

  expect(res.res?.json).toEqual(obj);
});

test("Request Body Post Application JSON Deep Camel Case", async () => {
  recordTest("request-bodies-post-application-json-deep-camel-case");

  const s = new SDK({});
  const obj = createDeepObjectCamelCase();
  const res = await s.requestBodies.requestBodyPostApplicationJsonDeepCamelCase(obj);
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();

  if (res.res?.json?.anyVal) res.res.json.anyVal = null;
  obj.anyVal = null;

  expect(res.res?.json).toEqual(obj);
});

test("Request Body Post Application JSON Multiple JSON Filtered", async () => {
  recordTest("request-bodies-post-application-json-multiple-json-filtered");

  const s = new SDK({});
  const obj = createSimpleObject();
  const res =
    await s.requestBodies.requestBodyPostApplicationJsonMultipleJsonFiltered(
      obj
    );
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.json).toEqual(obj);
});

test("Request Body Post Multiple Content Types Component Filtered", async () => {
  recordTest("request-bodies-post-multiple-content-types-component-filtered");

  const s = new SDK({});
  const obj = createSimpleObject();
  const res =
    await s.requestBodies.requestBodyPostMultipleContentTypesComponentFiltered(
      obj
    );
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.json).toEqual(obj);
});

test("Request Body Post Multiple Content Types Inline Filtered", async () => {
  recordTest("request-bodies-post-multiple-content-types-inline-filtered");

  const s = new SDK({});
  const obj = createSimpleObject();
  const res =
    await s.requestBodies.requestBodyPostMultipleContentTypesInlineFiltered({
      bool: true,
      num: 1.1,
      str: "test",
    });
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.json).toEqual({
    bool: true,
    num: 1.1,
    str: "test",
  });
});

test("Request Body Post Multiple Content Types Split JSON", async () => {
  recordTest("request-bodies-post-multiple-content-types-split-json");

  const s = new SDK({});
  const res =
    await s.requestBodies.requestBodyPostMultipleContentTypesSplitJson({
      bool: true,
      num: 1.1,
      str: "test",
    });
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.json).toEqual({
    bool: true,
    num: 1.1,
    str: "test",
  });
});

test("Request Body Post Multiple Content Types Split Multipart", async () => {
  recordTest("request-bodies-post-multiple-content-types-split-multipart");

  const s = new SDK({});
  const res =
    await s.requestBodies.requestBodyPostMultipleContentTypesSplitMultipart({
      bool2: true,
      num2: 1.1,
      str2: "test",
    });
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.form).toEqual({
    bool2: "true",
    num2: "1.1",
    str2: "test",
  });
});

test("Request Body Post Multiple Content Types Split Form", async () => {
  recordTest("request-bodies-post-multiple-content-types-split-form");

  const s = new SDK({});
  const res =
    await s.requestBodies.requestBodyPostMultipleContentTypesSplitForm({
      bool3: true,
      num3: 1.1,
      str3: "test",
    });
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.form).toEqual({
    bool3: "true",
    num3: "1.1",
    str3: "test",
  });
});

test("Request Body Post Multiple Content Types Split JSON With Param", async () => {
  recordTest(
    "request-bodies-post-multiple-content-types-split-json-with-param"
  );

  const s = new SDK({});
  const res =
    await s.requestBodies.requestBodyPostMultipleContentTypesSplitParamJson(
      {
        bool: true,
        num: 1.1,
        str: "test body",
      },
      "test param"
    );
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.json).toEqual({
    bool: true,
    num: 1.1,
    str: "test body",
  });
  expect(res.res?.args).toEqual({
    paramStr: "test param",
  });
});

test("Request Body Post Multiple Content Types Split Multipart With Param", async () => {
  recordTest(
    "request-bodies-post-multiple-content-types-split-multipart-with-param"
  );

  const s = new SDK({});
  const res =
    await s.requestBodies.requestBodyPostMultipleContentTypesSplitParamMultipart(
      {
        bool2: true,
        num2: 1.1,
        str2: "test body",
      },
      "test param"
    );
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.form).toEqual({
    bool2: "true",
    num2: "1.1",
    str2: "test body",
  });
  expect(res.res?.args).toEqual({
    paramStr: "test param",
  });
});

test("Request Body Post Multiple Content Types Split Form With Parameter", async () => {
  recordTest(
    "request-bodies-post-multiple-content-types-split-form-with-param"
  );

  const s = new SDK({});
  const res =
    await s.requestBodies.requestBodyPostMultipleContentTypesSplitParamForm(
      {
        bool3: true,
        num3: 1.1,
        str3: "test body",
      },
      "test param"
    );
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.form).toEqual({
    bool3: "true",
    num3: "1.1",
    str3: "test body",
  });
  expect(res.res?.args).toEqual({
    paramStr: "test param",
  });
});

test("Request Body Put Multipart Simple", async () => {
  recordTest("request-bodies-put-multipart-simple");

  const s = new SDK({});
  const obj = createSimpleObject();
  const res = await s.requestBodies.requestBodyPutMultipartSimple(obj);
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.form).toEqual({
    any: "any",
    bool: "true",
    boolOpt: "true",
    date: "2020-01-01",
    dateTime: "2020-01-01T00:00:00.001Z",
    enum: "one",
    float32: "1.1",
    int: "1",
    int32: "1",
    num: "1.1",
    str: "test",
    strOpt: "testOptional",
  });
});

test("Request Body Put Multipart Deep", async () => {
  recordTest("request-bodies-put-multipart-deep");

  const s = new SDK({});
  const obj = createDeepObject();
  const res = await s.requestBodies.requestBodyPutMultipartDeep(obj);
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.form).toEqual({
    arr: JSON.stringify(sortKeys(obj.arr)),
    bool: "true",
    int: "1",
    map: JSON.stringify(sortKeys(obj.map)),
    num: "1.1",
    obj: JSON.stringify(sortKeys(obj.obj)),
    str: "test",
  });
});

test("Request Body Put Multipart File", async () => {
  recordTest("request-bodies-put-multipart-file");

  const s = new SDK({});

  const filePath = path.resolve(__dirname, "./testdata/testUpload.json");
  const data = fs.readFileSync(filePath);

  const res = await s.requestBodies.requestBodyPutMultipartFile({
    file: {
      content: data,
      file: "testUpload.json",
    },
  });

  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.files).toEqual({
    file: data.toString(),
  });
});

test("Request Body Put Multipart Different File Name", async () => {
  recordTest("request-bodies-put-different-file-name");

  const s = new SDK({});

  const filePath = path.resolve(__dirname, "./testdata/testUpload.json");
  const data = fs.readFileSync(filePath);

  const res = await s.requestBodies.requestBodyPutMultipartDifferentFileName({
    differentFileName: {
      content: data,
      differentFileName: "testUpload.json",
    },
  });

  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.files).toEqual({
    differentFileName: data.toString(),
  });
});

test("Request Body Post Form Simple", async () => {
  recordTest("request-bodies-post-form-simple");

  const s = new SDK({});
  const obj = createSimpleObject();
  const res = await s.requestBodies.requestBodyPostFormSimple(obj);
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.form).toEqual({
    any: "any",
    bool: "true",
    boolOpt: "true",
    date: "2020-01-01",
    dateTime: "2020-01-01T00:00:00.001Z",
    enum: "one",
    float32: "1.1",
    int: "1",
    int32: "1",
    num: "1.1",
    str: "test",
    strOpt: "testOptional",
  });
});

test("Request Body Post Form Deep", async () => {
  recordTest("request-bodies-post-form-deep");

  const s = new SDK({});
  const obj = createDeepObject();
  const res = await s.requestBodies.requestBodyPostFormDeep(obj);
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.form).toEqual({
    arr: JSON.stringify(sortKeys(obj.arr)),
    bool: "true",
    int: "1",
    map: JSON.stringify(sortKeys(obj.map)),
    num: "1.1",
    obj: JSON.stringify(sortKeys(obj.obj)),
    str: "test",
  });
});

test("Request Body Post Form Map Primitive", async () => {
  recordTest("request-bodies-post-form-map-primitive");

  const s = new SDK({});
  const m = {
    key1: "value1",
    key2: "value2",
    key3: "value3",
  };
  const res = await s.requestBodies.requestBodyPostFormMapPrimitive(m);
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.form).toEqual(m);
});

test("Request Body Put String", async () => {
  recordTest("request-bodies-put-string");

  const s = new SDK({});
  const str = "Hello World";
  const res = await s.requestBodies.requestBodyPutString(str);
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.data).toEqual(str);
});

test("Request Body Put Bytes", async () => {
  recordTest("request-bodies-put-bytes");

  const s = new SDK({});

  const filePath = path.resolve(__dirname, "./testdata/testUpload.json");
  const data = fs.readFileSync(filePath);

  const res = await s.requestBodies.requestBodyPutBytes(data);
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.data).toEqual(data.toString());
});

test("Request Body Put String With Params", async () => {
  recordTest("request-bodies-put-string-with-params");

  const s = new SDK({});
  const str = "Hello World";
  const res = await s.requestBodies.requestBodyPutStringWithParams(
    str,
    "test param"
  );
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.data).toEqual(str);
  expect(res.res?.args.queryStringParam).toEqual("test param");
});

test("Request Body Put Bytes With Params", async () => {
  recordTest("request-bodies-put-bytes-with-params");

  const s = new SDK({});

  const filePath = path.resolve(__dirname, "./testdata/testUpload.json");
  const data = fs.readFileSync(filePath);

  const res = await s.requestBodies.requestBodyPutBytesWithParams(
    data,
    "test param"
  );
  expect(res.statusCode).toBe(200);
  expect(res.res).toBeDefined();
  expect(res.res?.data).toEqual(data.toString());
  expect(res.res?.args.queryStringParam).toEqual("test param");
});

test("Request Body Post Empty Object", async () => {
  recordTest("request-bodies-post-empty-object");

  const s = new SDK({});

  const res = await s.requestBodies.requestBodyPostEmptyObject({});
  expect(res.requestBodyPostEmptyObject200ApplicationJSONObject).toBeDefined();
  expect(res.statusCode).toBe(200);
});

test("Request Body Read Only Input", async () => {
  recordTest("request-bodies-read-only-input");

  const s = new SDK({});
  const res = await s.requestBodies.requestBodyReadOnlyInput(
    new ReadOnlyObjectInput()
  );

  expect(res.statusCode).toBe(200);
  expect(res.readOnlyObject).toBeDefined();
  expect(res.readOnlyObject?.bool).toEqual(true);
  expect(res.readOnlyObject?.num).toEqual(1.0);
  expect(res.readOnlyObject?.string).toEqual("hello");
});

test("Request Body Write Only Output", async () => {
  recordTest("request-bodies-write-only-output");

  const s = new SDK({});
  const res = await s.requestBodies.requestBodyWriteOnlyOutput(
    new WriteOnlyObject({
      bool: true,
      num: 1.0,
      string: "hello",
    })
  );

  expect(res.statusCode).toBe(200);
  expect(res.writeOnlyObject).toBeDefined();
});

test("Request Body Write Only", async () => {
  recordTest("request-bodies-write-only");

  const s = new SDK({});
  const res = await s.requestBodies.requestBodyWriteOnly(
    new WriteOnlyObject({
      bool: true,
      num: 1.0,
      string: "hello",
    })
  );

  expect(res.statusCode).toBe(200);
  expect(res.readOnlyObject).toBeDefined();
  expect(res.readOnlyObject?.bool).toEqual(true);
  expect(res.readOnlyObject?.num).toEqual(1.0);
  expect(res.readOnlyObject?.string).toEqual("hello");
});

test("Request Body Read And Write", async () => {
  recordTest("request-bodies-read-and-write");

  const s = new SDK({});
  const res = await s.requestBodies.requestBodyReadAndWrite(
    new ReadWriteObjectInput({
      num1: 1,
      num2: 2,
      num3: 4,
    })
  );

  expect(res.statusCode).toBe(200);
  expect(res.readWriteObject).toBeDefined();
  expect(res.readWriteObject?.num3).toEqual(4);
  expect(res.readWriteObject?.sum).toEqual(7);
});
