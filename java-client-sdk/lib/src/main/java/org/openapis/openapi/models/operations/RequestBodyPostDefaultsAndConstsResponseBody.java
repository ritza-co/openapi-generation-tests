/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * RequestBodyPostDefaultsAndConstsResponseBody - OK
 */

public class RequestBodyPostDefaultsAndConstsResponseBody {
    @JsonProperty("json")
    public org.openapis.openapi.models.shared.DefaultsAndConstsOutput json;

    public RequestBodyPostDefaultsAndConstsResponseBody withJson(org.openapis.openapi.models.shared.DefaultsAndConstsOutput json) {
        this.json = json;
        return this;
    }
    
    public RequestBodyPostDefaultsAndConstsResponseBody(@JsonProperty("json") org.openapis.openapi.models.shared.DefaultsAndConstsOutput json) {
        this.json = json;
  }
}
