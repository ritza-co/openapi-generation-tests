/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.net.http.HttpResponse;


public class GetGlobalNameOverrideResponse {
    
    public String contentType;

    public GetGlobalNameOverrideResponse withContentType(String contentType) {
        this.contentType = contentType;
        return this;
    }
    
    
    public Integer statusCode;

    public GetGlobalNameOverrideResponse withStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
        return this;
    }
    
    
    public HttpResponse<byte[]> rawResponse;

    public GetGlobalNameOverrideResponse withRawResponse(HttpResponse<byte[]> rawResponse) {
        this.rawResponse = rawResponse;
        return this;
    }
    
    /**
     * A successful response that contains the simpleObject sent in the request body
     */
    
    public GetGlobalNameOverride200ApplicationJSON getGlobalNameOverride200ApplicationJSONObject;

    public GetGlobalNameOverrideResponse withGetGlobalNameOverride200ApplicationJSONObject(GetGlobalNameOverride200ApplicationJSON getGlobalNameOverride200ApplicationJSONObject) {
        this.getGlobalNameOverride200ApplicationJSONObject = getGlobalNameOverride200ApplicationJSONObject;
        return this;
    }
    
    public GetGlobalNameOverrideResponse(@JsonProperty("ContentType") String contentType, @JsonProperty("StatusCode") Integer statusCode) {
        this.contentType = contentType;
        this.statusCode = statusCode;
  }
}
