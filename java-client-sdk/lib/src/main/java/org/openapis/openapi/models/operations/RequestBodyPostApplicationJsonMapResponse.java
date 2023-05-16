/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.net.http.HttpResponse;

public class RequestBodyPostApplicationJsonMapResponse {
    
    public String contentType;

    public RequestBodyPostApplicationJsonMapResponse withContentType(String contentType) {
        this.contentType = contentType;
        return this;
    }
    
    
    public Integer statusCode;

    public RequestBodyPostApplicationJsonMapResponse withStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
        return this;
    }
    
    
    public HttpResponse<byte[]> rawResponse;

    public RequestBodyPostApplicationJsonMapResponse withRawResponse(HttpResponse<byte[]> rawResponse) {
        this.rawResponse = rawResponse;
        return this;
    }
    
    /**
     * OK
     */
    
    public java.util.Map<String, org.openapis.openapi.models.shared.SimpleObject> res;

    public RequestBodyPostApplicationJsonMapResponse withRes(java.util.Map<String, org.openapis.openapi.models.shared.SimpleObject> res) {
        this.res = res;
        return this;
    }
    
    public RequestBodyPostApplicationJsonMapResponse(@JsonProperty("ContentType") String contentType, @JsonProperty("StatusCode") Integer statusCode) {
        this.contentType = contentType;
        this.statusCode = statusCode;
  }
}
