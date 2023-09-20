/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.net.http.HttpResponse;


public class ResponseBodyAdditionalPropertiesComplexNumbersPostResponse {
    
    public String contentType;

    public ResponseBodyAdditionalPropertiesComplexNumbersPostResponse withContentType(String contentType) {
        this.contentType = contentType;
        return this;
    }
    
    
    public Integer statusCode;

    public ResponseBodyAdditionalPropertiesComplexNumbersPostResponse withStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
        return this;
    }
    
    
    public HttpResponse<byte[]> rawResponse;

    public ResponseBodyAdditionalPropertiesComplexNumbersPostResponse withRawResponse(HttpResponse<byte[]> rawResponse) {
        this.rawResponse = rawResponse;
        return this;
    }
    
    /**
     * OK
     */
    
    public ResponseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSON responseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSONObject;

    public ResponseBodyAdditionalPropertiesComplexNumbersPostResponse withResponseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSONObject(ResponseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSON responseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSONObject) {
        this.responseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSONObject = responseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSONObject;
        return this;
    }
    
    public ResponseBodyAdditionalPropertiesComplexNumbersPostResponse(@JsonProperty("ContentType") String contentType, @JsonProperty("StatusCode") Integer statusCode) {
        this.contentType = contentType;
        this.statusCode = statusCode;
  }
}
