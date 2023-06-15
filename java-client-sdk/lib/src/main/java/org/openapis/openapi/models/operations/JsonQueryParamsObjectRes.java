/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * JsonQueryParamsObjectRes - OK
 */

public class JsonQueryParamsObjectRes {
    @JsonProperty("args")
    public JsonQueryParamsObjectResArgs args;

    public JsonQueryParamsObjectRes withArgs(JsonQueryParamsObjectResArgs args) {
        this.args = args;
        return this;
    }
    
    @JsonProperty("url")
    public String url;

    public JsonQueryParamsObjectRes withUrl(String url) {
        this.url = url;
        return this;
    }
    
    public JsonQueryParamsObjectRes(@JsonProperty("args") JsonQueryParamsObjectResArgs args, @JsonProperty("url") String url) {
        this.args = args;
        this.url = url;
  }
}
