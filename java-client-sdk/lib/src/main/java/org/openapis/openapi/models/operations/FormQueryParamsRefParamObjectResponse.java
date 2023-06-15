/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.net.http.HttpResponse;


public class FormQueryParamsRefParamObjectResponse {
    
    public String contentType;

    public FormQueryParamsRefParamObjectResponse withContentType(String contentType) {
        this.contentType = contentType;
        return this;
    }
    
    
    public Integer statusCode;

    public FormQueryParamsRefParamObjectResponse withStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
        return this;
    }
    
    
    public HttpResponse<byte[]> rawResponse;

    public FormQueryParamsRefParamObjectResponse withRawResponse(HttpResponse<byte[]> rawResponse) {
        this.rawResponse = rawResponse;
        return this;
    }
    
    /**
     * OK
     */
    
    public FormQueryParamsRefParamObjectRes res;

    public FormQueryParamsRefParamObjectResponse withRes(FormQueryParamsRefParamObjectRes res) {
        this.res = res;
        return this;
    }
    
    public FormQueryParamsRefParamObjectResponse(@JsonProperty("ContentType") String contentType, @JsonProperty("StatusCode") Integer statusCode) {
        this.contentType = contentType;
        this.statusCode = statusCode;
  }
}
