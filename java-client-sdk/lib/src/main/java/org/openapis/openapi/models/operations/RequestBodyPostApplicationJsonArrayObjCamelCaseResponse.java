/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.net.http.HttpResponse;


public class RequestBodyPostApplicationJsonArrayObjCamelCaseResponse {
    /**
     * HTTP response content type for this operation
     */
    
    public String contentType;

    public RequestBodyPostApplicationJsonArrayObjCamelCaseResponse withContentType(String contentType) {
        this.contentType = contentType;
        return this;
    }
    
    /**
     * HTTP response status code for this operation
     */
    
    public Integer statusCode;

    public RequestBodyPostApplicationJsonArrayObjCamelCaseResponse withStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
        return this;
    }
    
    /**
     * Raw HTTP response; suitable for custom response parsing
     */
    
    public HttpResponse<byte[]> rawResponse;

    public RequestBodyPostApplicationJsonArrayObjCamelCaseResponse withRawResponse(HttpResponse<byte[]> rawResponse) {
        this.rawResponse = rawResponse;
        return this;
    }
    
    /**
     * OK
     */
    
    public org.openapis.openapi.models.shared.ArrObjValueCamelCase arrObjValueCamelCase;

    public RequestBodyPostApplicationJsonArrayObjCamelCaseResponse withArrObjValueCamelCase(org.openapis.openapi.models.shared.ArrObjValueCamelCase arrObjValueCamelCase) {
        this.arrObjValueCamelCase = arrObjValueCamelCase;
        return this;
    }
    
    public RequestBodyPostApplicationJsonArrayObjCamelCaseResponse(@JsonProperty("ContentType") String contentType, @JsonProperty("StatusCode") Integer statusCode) {
        this.contentType = contentType;
        this.statusCode = statusCode;
  }
}
