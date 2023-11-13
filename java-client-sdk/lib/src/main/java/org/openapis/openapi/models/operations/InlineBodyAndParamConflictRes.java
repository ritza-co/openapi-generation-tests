/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * InlineBodyAndParamConflictRes - OK
 */

public class InlineBodyAndParamConflictRes {
    @JsonProperty("args")
    public java.util.Map<String, String> args;

    public InlineBodyAndParamConflictRes withArgs(java.util.Map<String, String> args) {
        this.args = args;
        return this;
    }
    
    @JsonProperty("json")
    public Json json;

    public InlineBodyAndParamConflictRes withJson(Json json) {
        this.json = json;
        return this;
    }
    
    public InlineBodyAndParamConflictRes(@JsonProperty("args") java.util.Map<String, String> args, @JsonProperty("json") Json json) {
        this.args = args;
        this.json = json;
  }
}
