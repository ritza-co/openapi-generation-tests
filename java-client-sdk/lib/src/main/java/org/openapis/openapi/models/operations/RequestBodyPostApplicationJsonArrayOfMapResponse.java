/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.net.http.HttpResponse;


public class RequestBodyPostApplicationJsonArrayOfMapResponse {
    
    public String contentType;

    public RequestBodyPostApplicationJsonArrayOfMapResponse withContentType(String contentType) {
        this.contentType = contentType;
        return this;
    }
    
    
    public Integer statusCode;

    public RequestBodyPostApplicationJsonArrayOfMapResponse withStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
        return this;
    }
    
    
    public HttpResponse<byte[]> rawResponse;

    public RequestBodyPostApplicationJsonArrayOfMapResponse withRawResponse(HttpResponse<byte[]> rawResponse) {
        this.rawResponse = rawResponse;
        return this;
    }
    
    /**
     * OK
     */
    
    public java.util.Map<String, org.openapis.openapi.models.shared.SimpleObject>[] maps;

    public RequestBodyPostApplicationJsonArrayOfMapResponse withMaps(java.util.Map<String, org.openapis.openapi.models.shared.SimpleObject>[] maps) {
        this.maps = maps;
        return this;
    }
    
    public RequestBodyPostApplicationJsonArrayOfMapResponse(@JsonProperty("ContentType") String contentType, @JsonProperty("StatusCode") Integer statusCode) {
        this.contentType = contentType;
        this.statusCode = statusCode;
  }
}
