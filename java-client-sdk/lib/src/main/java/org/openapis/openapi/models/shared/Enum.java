/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.shared;

import com.fasterxml.jackson.annotation.JsonValue;

/**
 * Enum - A string based enum
 */
public enum Enum {
    ONE("one"),
    TWO("two"),
    THREE("three"),
    FOUR_AND_MORE("four_and_more");

    @JsonValue
    public final String value;

    private Enum(String value) {
        this.value = value;
    }
}
