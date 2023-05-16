/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import * as fs from "fs";

import {
  DeepObject,
  EnumEnum,
  SimpleObject,
  SimpleObjectInt32EnumEnum,
  SimpleObjectIntEnumEnum,
} from "../src/sdk/models/shared";

import { RFCDate } from "../src/sdk/types";

export const createSimpleObject = (): SimpleObject => {
  return new SimpleObject({
    str: "test",
    bool: true,
    int: 1,
    int32: 1,
    int32Enum: SimpleObjectInt32EnumEnum.FiftyFive,
    intEnum: SimpleObjectIntEnumEnum.Second,
    num: 1.1,
    float32: 1.1,
    enum: EnumEnum.One,
    any: "any",
    date: new RFCDate("2020-01-01"),
    dateTime: new Date("2020-01-01T00:00:00.001Z"),
    boolOpt: true,
    strOpt: "testOptional",
  });
};

export const createDeepObject = (): DeepObject => {
  return new DeepObject({
    any: createSimpleObject(),
    arr: [createSimpleObject(), createSimpleObject()],
    bool: true,
    int: 1,
    map: {
      key: createSimpleObject(),
    },
    num: 1.1,
    obj: createSimpleObject(),
    str: "test",
  });
};

export const sortKeys = (obj: any): any => {
  if (Array.isArray(obj)) {
    return obj.map(sortKeys);
  } else if (obj && typeof obj === "object") {
    return Object.keys(obj)
      .sort()
      .reduce((result, key) => {
        if (key == "date" || key == "dateTime") {
          result[key] = obj[key];
          return result;
        }
        result[key] = sortKeys(obj[key]);
        return result;
      }, {} as any);
  } else {
    return obj;
  }
};

export function recordTest(id: string) {
  fs.appendFileSync("test-typescript-record.txt", id + "\n");
}
