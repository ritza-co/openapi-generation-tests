/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.net.http.HttpResponse;


public class ResponseBodyAdditionalPropertiesDatePostResponse {
    
    public String contentType;

    public ResponseBodyAdditionalPropertiesDatePostResponse withContentType(String contentType) {
        this.contentType = contentType;
        return this;
    }
    
    
    public Integer statusCode;

    public ResponseBodyAdditionalPropertiesDatePostResponse withStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
        return this;
    }
    
    
    public HttpResponse<byte[]> rawResponse;

    public ResponseBodyAdditionalPropertiesDatePostResponse withRawResponse(HttpResponse<byte[]> rawResponse) {
        this.rawResponse = rawResponse;
        return this;
    }
    
    /**
     * OK
     */
    
    public ResponseBodyAdditionalPropertiesDatePost200ApplicationJSON responseBodyAdditionalPropertiesDatePost200ApplicationJSONObject;

    public ResponseBodyAdditionalPropertiesDatePostResponse withResponseBodyAdditionalPropertiesDatePost200ApplicationJSONObject(ResponseBodyAdditionalPropertiesDatePost200ApplicationJSON responseBodyAdditionalPropertiesDatePost200ApplicationJSONObject) {
        this.responseBodyAdditionalPropertiesDatePost200ApplicationJSONObject = responseBodyAdditionalPropertiesDatePost200ApplicationJSONObject;
        return this;
    }
    
    public ResponseBodyAdditionalPropertiesDatePostResponse(@JsonProperty("ContentType") String contentType, @JsonProperty("StatusCode") Integer statusCode) {
        this.contentType = contentType;
        this.statusCode = statusCode;
  }
}
