/*
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

import { SpeakeasyBase, SpeakeasyMetadata } from "../../../internal/utils";
import { Expose, Transform, Type } from "class-transformer";

export class Chocolates extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "description" })
    description: string;
}

export enum EnumNumber {
    One = 1,
    Two = 2,
    Three = 3,
}

export enum EnumStr {
    One = "one",
    Two = "two",
    Three = "three",
}

export class InlineObject extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "inline_name" })
    inlineName?: string;
}

export class ExampleResource extends SpeakeasyBase {
    @SpeakeasyMetadata()
    @Expose({ name: "arrayOfNumber" })
    arrayOfNumber?: number[];

    @SpeakeasyMetadata()
    @Expose({ name: "arrayOfString" })
    arrayOfString?: string[];

    @SpeakeasyMetadata({ elemType: Chocolates })
    @Expose({ name: "chocolates" })
    @Type(() => Chocolates)
    chocolates: Chocolates[];

    @SpeakeasyMetadata()
    @Expose({ name: "createdAt" })
    @Transform(({ value }) => new Date(value), { toClassOnly: true })
    createdAt?: Date;

    @SpeakeasyMetadata()
    @Expose({ name: "enumNumber" })
    enumNumber?: EnumNumber;

    @SpeakeasyMetadata()
    @Expose({ name: "enumStr" })
    enumStr?: EnumStr;

    @SpeakeasyMetadata()
    @Expose({ name: "id" })
    id: string;

    @SpeakeasyMetadata()
    @Expose({ name: "inlineObject" })
    @Type(() => InlineObject)
    inlineObject?: InlineObject;

    @SpeakeasyMetadata()
    @Expose({ name: "mapOfInteger" })
    mapOfInteger?: Record<string, number>;

    @SpeakeasyMetadata()
    @Expose({ name: "mapOfString" })
    mapOfString?: Record<string, string>;

    @SpeakeasyMetadata()
    @Expose({ name: "name" })
    name: string;

    @SpeakeasyMetadata()
    @Expose({ name: "name_prefix" })
    namePrefix?: string;

    @SpeakeasyMetadata()
    @Expose({ name: "updatedAt" })
    @Transform(({ value }) => new Date(value), { toClassOnly: true })
    updatedAt?: Date;

    @SpeakeasyMetadata()
    @Expose({ name: "vehicle" })
    vehicle: any;
}
