/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * SimplePathParameterMapsRes - OK
 */
public class SimplePathParameterMapsRes {
    @JsonProperty("url")
    public String url;

    public SimplePathParameterMapsRes withUrl(String url) {
        this.url = url;
        return this;
    }
    
    public SimplePathParameterMapsRes(@JsonProperty("url") String url) {
        this.url = url;
  }
}
