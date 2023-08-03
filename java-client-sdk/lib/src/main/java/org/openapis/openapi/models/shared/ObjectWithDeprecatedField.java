/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.shared;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * ObjectWithDeprecatedField
 * @deprecated class: This will be removed in a future release, please migrate away from it as soon as possible.
 */
@Deprecated
public class ObjectWithDeprecatedField {
    /**
     * @deprecated field: This will be removed in a future release, please migrate away from it as soon as possible.
     */
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("deprecatedEnum")
    @Deprecated
    public ObjectWithDeprecatedFieldDeprecatedEnum deprecatedEnum;

    @Deprecated
    public ObjectWithDeprecatedField withDeprecatedEnum(ObjectWithDeprecatedFieldDeprecatedEnum deprecatedEnum) {
        this.deprecatedEnum = deprecatedEnum;
        return this;
    }
    
    /**
     * @deprecated field: This will be removed in a future release, please migrate away from it as soon as possible. Use newField instead.
     */
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("deprecatedField")
    @Deprecated
    public String deprecatedField;

    @Deprecated
    public ObjectWithDeprecatedField withDeprecatedField(String deprecatedField) {
        this.deprecatedField = deprecatedField;
        return this;
    }
    
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("newField")
    public String newField;

    public ObjectWithDeprecatedField withNewField(String newField) {
        this.newField = newField;
        return this;
    }
    
    public ObjectWithDeprecatedField(){}
}
