/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.net.http.HttpResponse;

public class RequestBodyPostMultipleContentTypesInlineFilteredResponse {
    
    public String contentType;

    public RequestBodyPostMultipleContentTypesInlineFilteredResponse withContentType(String contentType) {
        this.contentType = contentType;
        return this;
    }
    
    
    public Integer statusCode;

    public RequestBodyPostMultipleContentTypesInlineFilteredResponse withStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
        return this;
    }
    
    
    public HttpResponse<byte[]> rawResponse;

    public RequestBodyPostMultipleContentTypesInlineFilteredResponse withRawResponse(HttpResponse<byte[]> rawResponse) {
        this.rawResponse = rawResponse;
        return this;
    }
    
    /**
     * OK
     */
    
    public RequestBodyPostMultipleContentTypesInlineFilteredRes res;

    public RequestBodyPostMultipleContentTypesInlineFilteredResponse withRes(RequestBodyPostMultipleContentTypesInlineFilteredRes res) {
        this.res = res;
        return this;
    }
    
    public RequestBodyPostMultipleContentTypesInlineFilteredResponse(@JsonProperty("ContentType") String contentType, @JsonProperty("StatusCode") Integer statusCode) {
        this.contentType = contentType;
        this.statusCode = statusCode;
  }
}
