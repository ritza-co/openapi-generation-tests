/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * FormQueryParamsCamelObjectRes - OK
 */

public class FormQueryParamsCamelObjectRes {
    @JsonProperty("args")
    public FormQueryParamsCamelObjectResArgs args;

    public FormQueryParamsCamelObjectRes withArgs(FormQueryParamsCamelObjectResArgs args) {
        this.args = args;
        return this;
    }
    
    @JsonProperty("url")
    public String url;

    public FormQueryParamsCamelObjectRes withUrl(String url) {
        this.url = url;
        return this;
    }
    
    public FormQueryParamsCamelObjectRes(@JsonProperty("args") FormQueryParamsCamelObjectResArgs args, @JsonProperty("url") String url) {
        this.args = args;
        this.url = url;
  }
}
