/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * SimplePathParameterPrimitivesRes - OK
 */

public class SimplePathParameterPrimitivesRes {
    @JsonProperty("url")
    public String url;

    public SimplePathParameterPrimitivesRes withUrl(String url) {
        this.url = url;
        return this;
    }
    
    public SimplePathParameterPrimitivesRes(@JsonProperty("url") String url) {
        this.url = url;
  }
}
