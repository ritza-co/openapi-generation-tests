/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.net.http.HttpResponse;

public class RequestBodyPostFormSimpleResponse {
    
    public String contentType;

    public RequestBodyPostFormSimpleResponse withContentType(String contentType) {
        this.contentType = contentType;
        return this;
    }
    
    
    public Integer statusCode;

    public RequestBodyPostFormSimpleResponse withStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
        return this;
    }
    
    
    public HttpResponse<byte[]> rawResponse;

    public RequestBodyPostFormSimpleResponse withRawResponse(HttpResponse<byte[]> rawResponse) {
        this.rawResponse = rawResponse;
        return this;
    }
    
    /**
     * OK
     */
    
    public RequestBodyPostFormSimpleRes res;

    public RequestBodyPostFormSimpleResponse withRes(RequestBodyPostFormSimpleRes res) {
        this.res = res;
        return this;
    }
    
    public RequestBodyPostFormSimpleResponse(@JsonProperty("ContentType") String contentType, @JsonProperty("StatusCode") Integer statusCode) {
        this.contentType = contentType;
        this.statusCode = statusCode;
  }
}
