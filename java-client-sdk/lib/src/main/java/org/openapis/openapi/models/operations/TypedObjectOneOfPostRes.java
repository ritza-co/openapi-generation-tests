/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * TypedObjectOneOfPostRes - OK
 */
public class TypedObjectOneOfPostRes {
    @JsonProperty("json")
    public Object json;

    public TypedObjectOneOfPostRes withJson(Object json) {
        this.json = json;
        return this;
    }
    
    public TypedObjectOneOfPostRes(@JsonProperty("json") Object json) {
        this.json = json;
  }
}
