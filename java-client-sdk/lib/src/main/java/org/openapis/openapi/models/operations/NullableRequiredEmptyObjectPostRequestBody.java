/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;


public class NullableRequiredEmptyObjectPostRequestBody {
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("NullableOptionalObj")
    public NullableOptionalObj nullableOptionalObj;

    public NullableRequiredEmptyObjectPostRequestBody withNullableOptionalObj(NullableOptionalObj nullableOptionalObj) {
        this.nullableOptionalObj = nullableOptionalObj;
        return this;
    }
    
    @JsonProperty("NullableRequiredObj")
    public NullableRequiredObj nullableRequiredObj;

    public NullableRequiredEmptyObjectPostRequestBody withNullableRequiredObj(NullableRequiredObj nullableRequiredObj) {
        this.nullableRequiredObj = nullableRequiredObj;
        return this;
    }
    
    @JsonProperty("RequiredObj")
    public RequiredObj requiredObj;

    public NullableRequiredEmptyObjectPostRequestBody withRequiredObj(RequiredObj requiredObj) {
        this.requiredObj = requiredObj;
        return this;
    }
    
    public NullableRequiredEmptyObjectPostRequestBody(@JsonProperty("NullableRequiredObj") NullableRequiredObj nullableRequiredObj, @JsonProperty("RequiredObj") RequiredObj requiredObj) {
        this.nullableRequiredObj = nullableRequiredObj;
        this.requiredObj = requiredObj;
  }
}
