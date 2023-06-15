/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.shared;

import com.fasterxml.jackson.annotation.JsonProperty;


public class TypedObject2 {
    @JsonProperty("type")
    public TypedObject2Type type;

    public TypedObject2 withType(TypedObject2Type type) {
        this.type = type;
        return this;
    }
    
    @JsonProperty("value")
    public String value;

    public TypedObject2 withValue(String value) {
        this.value = value;
        return this;
    }
    
    public TypedObject2(@JsonProperty("type") TypedObject2Type type, @JsonProperty("value") String value) {
        this.type = type;
        this.value = value;
  }
}
