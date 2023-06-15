/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.net.http.HttpResponse;


public class RequestBodyPostApplicationJsonMapOfMapResponse {
    
    public String contentType;

    public RequestBodyPostApplicationJsonMapOfMapResponse withContentType(String contentType) {
        this.contentType = contentType;
        return this;
    }
    
    
    public Integer statusCode;

    public RequestBodyPostApplicationJsonMapOfMapResponse withStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
        return this;
    }
    
    
    public HttpResponse<byte[]> rawResponse;

    public RequestBodyPostApplicationJsonMapOfMapResponse withRawResponse(HttpResponse<byte[]> rawResponse) {
        this.rawResponse = rawResponse;
        return this;
    }
    
    /**
     * OK
     */
    
    public java.util.Map<String, java.util.Map<String, org.openapis.openapi.models.shared.SimpleObject>> res;

    public RequestBodyPostApplicationJsonMapOfMapResponse withRes(java.util.Map<String, java.util.Map<String, org.openapis.openapi.models.shared.SimpleObject>> res) {
        this.res = res;
        return this;
    }
    
    public RequestBodyPostApplicationJsonMapOfMapResponse(@JsonProperty("ContentType") String contentType, @JsonProperty("StatusCode") Integer statusCode) {
        this.contentType = contentType;
        this.statusCode = statusCode;
  }
}
