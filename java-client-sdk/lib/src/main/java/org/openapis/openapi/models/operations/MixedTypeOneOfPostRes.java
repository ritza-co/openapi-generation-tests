/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * MixedTypeOneOfPostRes - OK
 */

public class MixedTypeOneOfPostRes {
    @JsonProperty("json")
    public Object json;

    public MixedTypeOneOfPostRes withJson(Object json) {
        this.json = json;
        return this;
    }
    
    public MixedTypeOneOfPostRes(@JsonProperty("json") Object json) {
        this.json = json;
  }
}
