/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * RequestBodyPostJsonDataTypesBooleanResponseBody - OK
 */

public class RequestBodyPostJsonDataTypesBooleanResponseBody {
    @JsonProperty("json")
    public Boolean json;

    public RequestBodyPostJsonDataTypesBooleanResponseBody withJson(Boolean json) {
        this.json = json;
        return this;
    }
    
    public RequestBodyPostJsonDataTypesBooleanResponseBody(@JsonProperty("json") Boolean json) {
        this.json = json;
  }
}
