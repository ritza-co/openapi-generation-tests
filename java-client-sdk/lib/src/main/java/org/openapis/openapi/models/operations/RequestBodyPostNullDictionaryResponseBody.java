/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * RequestBodyPostNullDictionaryResponseBody - OK
 */

public class RequestBodyPostNullDictionaryResponseBody {
    @JsonProperty("data")
    public String data;

    public RequestBodyPostNullDictionaryResponseBody withData(String data) {
        this.data = data;
        return this;
    }
    
    public RequestBodyPostNullDictionaryResponseBody(@JsonProperty("data") String data) {
        this.data = data;
  }
}
