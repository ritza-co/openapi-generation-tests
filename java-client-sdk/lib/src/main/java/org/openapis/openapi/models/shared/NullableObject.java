/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.shared;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;


public class NullableObject {
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("optional")
    public String optional;

    public NullableObject withOptional(String optional) {
        this.optional = optional;
        return this;
    }
    
    @JsonProperty("required")
    public Long required;

    public NullableObject withRequired(Long required) {
        this.required = required;
        return this;
    }
    
    public NullableObject(@JsonProperty("required") Long required) {
        this.required = required;
  }
}
