/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * WeaklyTypedOneOfPostRes - OK
 */

public class WeaklyTypedOneOfPostRes {
    @JsonProperty("json")
    public Object json;

    public WeaklyTypedOneOfPostRes withJson(Object json) {
        this.json = json;
        return this;
    }
    
    public WeaklyTypedOneOfPostRes(@JsonProperty("json") Object json) {
        this.json = json;
  }
}
