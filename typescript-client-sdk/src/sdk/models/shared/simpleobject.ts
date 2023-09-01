/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { RFCDate } from "../../types";
import { Enum } from "./enum";
import { Expose, Transform } from "class-transformer";

/**
 * An int32 enum property.
 */
export enum SimpleObjectInt32Enum {
    FiftyFive = 55,
    SixtyNine = 69,
    OneHundredAndEightyOne = 181,
}

/**
 * An integer enum property.
 */
export enum SimpleObjectIntEnum {
    First = 1,
    Second = 2,
    Third = 3,
}

/**
 * A simple object that uses all our supported primitive types and enums and has optional properties.
 *
 * @see {@link https://docs.speakeasyapi.dev} - A link to the external docs.
 */
export class SimpleObject extends SpeakeasyBase {
    /**
     * An any property.
     */
    @SpeakeasyMetadata({
        data: "header, name=any, pathParam, name=any, queryParam, name=any, form, name=any, multipart_form, name=any",
    })
    @Expose({ name: "any" })
    any: any;

    @SpeakeasyMetadata({
        data: "header, name=bigint, pathParam, name=bigint, queryParam, name=bigint, form, name=bigint, multipart_form, name=bigint",
    })
    @Expose({ name: "bigint" })
    bigint?: number;

    @SpeakeasyMetadata({
        data: "header, name=bigintStr, pathParam, name=bigintStr, queryParam, name=bigintStr, form, name=bigintStr, multipart_form, name=bigintStr",
    })
    @Expose({ name: "bigintStr" })
    bigintStr?: string;

    /**
     * A boolean property.
     */
    @SpeakeasyMetadata({
        data: "header, name=bool, pathParam, name=bool, queryParam, name=bool, form, name=bool, multipart_form, name=bool",
    })
    @Expose({ name: "bool" })
    bool: boolean;

    /**
     * An optional boolean property.
     */
    @SpeakeasyMetadata({
        data: "header, name=boolOpt, pathParam, name=boolOpt, queryParam, name=boolOpt, form, name=boolOpt, multipart_form, name=boolOpt",
    })
    @Expose({ name: "boolOpt" })
    boolOpt?: boolean;

    /**
     * A date property.
     */
    @SpeakeasyMetadata({
        data: "header, name=date, pathParam, name=date, queryParam, name=date, form, name=date, multipart_form, name=date",
    })
    @Expose({ name: "date" })
    @Transform(({ value }) => new RFCDate(value), { toClassOnly: true })
    date: RFCDate;

    /**
     * A date-time property.
     */
    @SpeakeasyMetadata({
        data: "header, name=dateTime, pathParam, name=dateTime, queryParam, name=dateTime, form, name=dateTime, multipart_form, name=dateTime",
    })
    @Expose({ name: "dateTime" })
    @Transform(({ value }) => new Date(value), { toClassOnly: true })
    dateTime: Date;

    /**
     * A string based enum
     */
    @SpeakeasyMetadata({
        data: "header, name=enum, pathParam, name=enum, queryParam, name=enum, form, name=enum, multipart_form, name=enum",
    })
    @Expose({ name: "enum" })
    enum: Enum;

    /**
     * A float32 property.
     */
    @SpeakeasyMetadata({
        data: "header, name=float32, pathParam, name=float32, queryParam, name=float32, form, name=float32, multipart_form, name=float32",
    })
    @Expose({ name: "float32" })
    float32: number;

    /**
     * An integer property.
     */
    @SpeakeasyMetadata({
        data: "header, name=int, pathParam, name=int, queryParam, name=int, form, name=int, multipart_form, name=int",
    })
    @Expose({ name: "int" })
    int: number;

    /**
     * An int32 property.
     */
    @SpeakeasyMetadata({
        data: "header, name=int32, pathParam, name=int32, queryParam, name=int32, form, name=int32, multipart_form, name=int32",
    })
    @Expose({ name: "int32" })
    int32: number;

    /**
     * An int32 enum property.
     */
    @SpeakeasyMetadata({
        data: "header, name=int32Enum, pathParam, name=int32Enum, queryParam, name=int32Enum, form, name=int32Enum, multipart_form, name=int32Enum",
    })
    @Expose({ name: "int32Enum" })
    int32Enum: SimpleObjectInt32Enum;

    /**
     * An integer enum property.
     */
    @SpeakeasyMetadata({
        data: "header, name=intEnum, pathParam, name=intEnum, queryParam, name=intEnum, form, name=intEnum, multipart_form, name=intEnum",
    })
    @Expose({ name: "intEnum" })
    intEnum: SimpleObjectIntEnum;

    /**
     * An optional integer property will be null for tests.
     */
    @SpeakeasyMetadata({
        data: "header, name=intOptNull, pathParam, name=intOptNull, queryParam, name=intOptNull, form, name=intOptNull, multipart_form, name=intOptNull",
    })
    @Expose({ name: "intOptNull" })
    intOptNull?: number;

    /**
     * A number property.
     */
    @SpeakeasyMetadata({
        data: "header, name=num, pathParam, name=num, queryParam, name=num, form, name=num, multipart_form, name=num",
    })
    @Expose({ name: "num" })
    num: number;

    /**
     * An optional number property will be null for tests.
     */
    @SpeakeasyMetadata({
        data: "header, name=numOptNull, pathParam, name=numOptNull, queryParam, name=numOptNull, form, name=numOptNull, multipart_form, name=numOptNull",
    })
    @Expose({ name: "numOptNull" })
    numOptNull?: number;

    /**
     * A string property.
     */
    @SpeakeasyMetadata({
        data: "header, name=str, pathParam, name=str, queryParam, name=str, form, name=str, multipart_form, name=str",
    })
    @Expose({ name: "str" })
    str: string;

    /**
     * An optional string property.
     */
    @SpeakeasyMetadata({
        data: "header, name=strOpt, pathParam, name=strOpt, queryParam, name=strOpt, form, name=strOpt, multipart_form, name=strOpt",
    })
    @Expose({ name: "strOpt" })
    strOpt?: string;
}
