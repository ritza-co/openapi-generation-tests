/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;


public class Json {
    @JsonProperty("str")
    public String str;

    public Json withStr(String str) {
        this.str = str;
        return this;
    }
    
    public Json(@JsonProperty("str") String str) {
        this.str = str;
  }
}
