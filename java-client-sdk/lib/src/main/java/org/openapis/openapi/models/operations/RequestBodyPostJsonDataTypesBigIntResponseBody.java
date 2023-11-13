/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * RequestBodyPostJsonDataTypesBigIntResponseBody - OK
 */

public class RequestBodyPostJsonDataTypesBigIntResponseBody {
    @JsonProperty("data")
    public String data;

    public RequestBodyPostJsonDataTypesBigIntResponseBody withData(String data) {
        this.data = data;
        return this;
    }
    
    @JsonProperty("json")
    public Long json;

    public RequestBodyPostJsonDataTypesBigIntResponseBody withJson(Long json) {
        this.json = json;
        return this;
    }
    
    public RequestBodyPostJsonDataTypesBigIntResponseBody(@JsonProperty("data") String data, @JsonProperty("json") Long json) {
        this.data = data;
        this.json = json;
  }
}
