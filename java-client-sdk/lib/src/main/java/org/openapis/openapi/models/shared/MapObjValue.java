/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.shared;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * MapObjValue - OK
 */

public class MapObjValue {
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("json")
    public java.util.Map<String, SimpleObject> json;

    public MapObjValue withJson(java.util.Map<String, SimpleObject> json) {
        this.json = json;
        return this;
    }
    
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("required")
    public Object required;

    public MapObjValue withRequired(Object required) {
        this.required = required;
        return this;
    }
    
    public MapObjValue(){}
}
