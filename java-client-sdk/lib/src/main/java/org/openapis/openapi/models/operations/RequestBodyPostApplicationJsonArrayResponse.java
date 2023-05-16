/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.net.http.HttpResponse;

public class RequestBodyPostApplicationJsonArrayResponse {
    
    public String contentType;

    public RequestBodyPostApplicationJsonArrayResponse withContentType(String contentType) {
        this.contentType = contentType;
        return this;
    }
    
    
    public Integer statusCode;

    public RequestBodyPostApplicationJsonArrayResponse withStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
        return this;
    }
    
    
    public HttpResponse<byte[]> rawResponse;

    public RequestBodyPostApplicationJsonArrayResponse withRawResponse(HttpResponse<byte[]> rawResponse) {
        this.rawResponse = rawResponse;
        return this;
    }
    
    /**
     * OK
     */
    
    public org.openapis.openapi.models.shared.SimpleObject[] simpleObjects;

    public RequestBodyPostApplicationJsonArrayResponse withSimpleObjects(org.openapis.openapi.models.shared.SimpleObject[] simpleObjects) {
        this.simpleObjects = simpleObjects;
        return this;
    }
    
    public RequestBodyPostApplicationJsonArrayResponse(@JsonProperty("ContentType") String contentType, @JsonProperty("StatusCode") Integer statusCode) {
        this.contentType = contentType;
        this.statusCode = statusCode;
  }
}
