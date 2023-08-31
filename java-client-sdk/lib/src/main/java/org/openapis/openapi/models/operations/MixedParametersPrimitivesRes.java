/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * MixedParametersPrimitivesRes - OK
 */

public class MixedParametersPrimitivesRes {
    @JsonProperty("args")
    public MixedParametersPrimitivesResArgs args;

    public MixedParametersPrimitivesRes withArgs(MixedParametersPrimitivesResArgs args) {
        this.args = args;
        return this;
    }
    
    @JsonProperty("headers")
    public MixedParametersPrimitivesResHeaders headers;

    public MixedParametersPrimitivesRes withHeaders(MixedParametersPrimitivesResHeaders headers) {
        this.headers = headers;
        return this;
    }
    
    @JsonProperty("url")
    public String url;

    public MixedParametersPrimitivesRes withUrl(String url) {
        this.url = url;
        return this;
    }
    
    public MixedParametersPrimitivesRes(@JsonProperty("args") MixedParametersPrimitivesResArgs args, @JsonProperty("headers") MixedParametersPrimitivesResHeaders headers, @JsonProperty("url") String url) {
        this.args = args;
        this.headers = headers;
        this.url = url;
  }
}
