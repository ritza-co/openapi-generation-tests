/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * RequestBodyPostNullableNotRequiredStringBody200ApplicationJSON - OK
 */

public class RequestBodyPostNullableNotRequiredStringBody200ApplicationJSON {
    @JsonProperty("data")
    public String data;

    public RequestBodyPostNullableNotRequiredStringBody200ApplicationJSON withData(String data) {
        this.data = data;
        return this;
    }
    
    public RequestBodyPostNullableNotRequiredStringBody200ApplicationJSON(@JsonProperty("data") String data) {
        this.data = data;
  }
}
