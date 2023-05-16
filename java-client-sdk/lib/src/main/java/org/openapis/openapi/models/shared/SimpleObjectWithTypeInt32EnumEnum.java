/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.shared;

import com.fasterxml.jackson.annotation.JsonValue;

/**
 * SimpleObjectWithTypeInt32EnumEnum - An int32 enum property.
 */
public enum SimpleObjectWithTypeInt32EnumEnum {
    FIFTY_FIVE(55),
    SIXTY_NINE(69),
    ONE_HUNDRED_AND_EIGHTY_ONE(181);

    @JsonValue
    public final Integer value;

    private SimpleObjectWithTypeInt32EnumEnum(Integer value) {
        this.value = value;
    }
}
