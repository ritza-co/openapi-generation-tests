/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.net.http.HttpResponse;


public class RequestBodyPostJsonDataTypesStringResponse {
    /**
     * HTTP response content type for this operation
     */
    
    public String contentType;

    public RequestBodyPostJsonDataTypesStringResponse withContentType(String contentType) {
        this.contentType = contentType;
        return this;
    }
    
    /**
     * HTTP response status code for this operation
     */
    
    public Integer statusCode;

    public RequestBodyPostJsonDataTypesStringResponse withStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
        return this;
    }
    
    /**
     * Raw HTTP response; suitable for custom response parsing
     */
    
    public HttpResponse<byte[]> rawResponse;

    public RequestBodyPostJsonDataTypesStringResponse withRawResponse(HttpResponse<byte[]> rawResponse) {
        this.rawResponse = rawResponse;
        return this;
    }
    
    /**
     * OK
     */
    
    public RequestBodyPostJSONDataTypesString200ApplicationJSON requestBodyPostJSONDataTypesString200ApplicationJSONObject;

    public RequestBodyPostJsonDataTypesStringResponse withRequestBodyPostJSONDataTypesString200ApplicationJSONObject(RequestBodyPostJSONDataTypesString200ApplicationJSON requestBodyPostJSONDataTypesString200ApplicationJSONObject) {
        this.requestBodyPostJSONDataTypesString200ApplicationJSONObject = requestBodyPostJSONDataTypesString200ApplicationJSONObject;
        return this;
    }
    
    public RequestBodyPostJsonDataTypesStringResponse(@JsonProperty("ContentType") String contentType, @JsonProperty("StatusCode") Integer statusCode) {
        this.contentType = contentType;
        this.statusCode = statusCode;
  }
}
