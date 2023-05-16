/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

public class JsonQueryParamsObjectResArgs {
    @JsonProperty("deepObjParam")
    public String deepObjParam;

    public JsonQueryParamsObjectResArgs withDeepObjParam(String deepObjParam) {
        this.deepObjParam = deepObjParam;
        return this;
    }
    
    @JsonProperty("simpleObjParam")
    public String simpleObjParam;

    public JsonQueryParamsObjectResArgs withSimpleObjParam(String simpleObjParam) {
        this.simpleObjParam = simpleObjParam;
        return this;
    }
    
    public JsonQueryParamsObjectResArgs(@JsonProperty("deepObjParam") String deepObjParam, @JsonProperty("simpleObjParam") String simpleObjParam) {
        this.deepObjParam = deepObjParam;
        this.simpleObjParam = simpleObjParam;
  }
}
