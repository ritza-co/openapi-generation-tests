/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;


public class RequestBodyPostMultipleContentTypesSplitApplicationJSON {
    @JsonProperty("bool")
    public Boolean bool;

    public RequestBodyPostMultipleContentTypesSplitApplicationJSON withBool(Boolean bool) {
        this.bool = bool;
        return this;
    }
    
    @JsonProperty("num")
    public Double num;

    public RequestBodyPostMultipleContentTypesSplitApplicationJSON withNum(Double num) {
        this.num = num;
        return this;
    }
    
    @JsonProperty("str")
    public String str;

    public RequestBodyPostMultipleContentTypesSplitApplicationJSON withStr(String str) {
        this.str = str;
        return this;
    }
    
    public RequestBodyPostMultipleContentTypesSplitApplicationJSON(@JsonProperty("bool") Boolean bool, @JsonProperty("num") Double num, @JsonProperty("str") String str) {
        this.bool = bool;
        this.num = num;
        this.str = str;
  }
}
