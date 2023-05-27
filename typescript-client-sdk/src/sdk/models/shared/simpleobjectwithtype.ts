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
export enum SimpleObjectWithTypeInt32Enum {
    FiftyFive = 55,
    SixtyNine = 69,
    OneHundredAndEightyOne = 181,
}

/**
 * An integer enum property.
 */
export enum SimpleObjectWithTypeIntEnum {
    First = 1,
    Second = 2,
    Third = 3,
}

/**
 * A simple object that uses all our supported primitive types and enums and has optional properties.
 *
 * @see {@link https://docs.speakeasyapi.dev} - A link to the external docs.
 */
export class SimpleObjectWithType extends SpeakeasyBase {
    /**
     * An any property.
     */
    @SpeakeasyMetadata()
    @Expose({ name: "any" })
    any: any;

    @SpeakeasyMetadata()
    @Expose({ name: "bigint" })
    bigint?: number;

    @SpeakeasyMetadata()
    @Expose({ name: "bigintStr" })
    bigintStr?: string;

    /**
     * A boolean property.
     */
    @SpeakeasyMetadata()
    @Expose({ name: "bool" })
    bool: boolean;

    /**
     * An optional boolean property.
     */
    @SpeakeasyMetadata()
    @Expose({ name: "boolOpt" })
    boolOpt?: boolean;

    /**
     * A date property.
     */
    @SpeakeasyMetadata()
    @Expose({ name: "date" })
    @Transform(({ value }) => new RFCDate(value), { toClassOnly: true })
    date: RFCDate;

    /**
     * A date-time property.
     */
    @SpeakeasyMetadata()
    @Expose({ name: "dateTime" })
    @Transform(({ value }) => new Date(value), { toClassOnly: true })
    dateTime: Date;

    /**
     * An string based enum
     */
    @SpeakeasyMetadata()
    @Expose({ name: "enum" })
    enum: Enum;

    /**
     * A float32 property.
     */
    @SpeakeasyMetadata()
    @Expose({ name: "float32" })
    float32: number;

    /**
     * An integer property.
     */
    @SpeakeasyMetadata()
    @Expose({ name: "int" })
    int: number;

    /**
     * An int32 property.
     */
    @SpeakeasyMetadata()
    @Expose({ name: "int32" })
    int32: number;

    /**
     * An int32 enum property.
     */
    @SpeakeasyMetadata()
    @Expose({ name: "int32Enum" })
    int32Enum: SimpleObjectWithTypeInt32Enum;

    /**
     * An integer enum property.
     */
    @SpeakeasyMetadata()
    @Expose({ name: "intEnum" })
    intEnum: SimpleObjectWithTypeIntEnum;

    /**
     * An optional integer property will be null for tests.
     */
    @SpeakeasyMetadata()
    @Expose({ name: "intOptNull" })
    intOptNull?: number;

    /**
     * A number property.
     */
    @SpeakeasyMetadata()
    @Expose({ name: "num" })
    num: number;

    /**
     * An optional number property will be null for tests.
     */
    @SpeakeasyMetadata()
    @Expose({ name: "numOptNull" })
    numOptNull?: number;

    /**
     * A string property.
     */
    @SpeakeasyMetadata()
    @Expose({ name: "str" })
    str: string;

    /**
     * An optional string property.
     */
    @SpeakeasyMetadata()
    @Expose({ name: "strOpt" })
    strOpt?: string;

    @SpeakeasyMetadata()
    @Expose({ name: "type" })
    type: string;
}
