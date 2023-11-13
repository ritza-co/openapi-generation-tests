/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;


public class FormQueryParamsPrimitiveArgs {
    @JsonProperty("boolParam")
    public String boolParam;

    public FormQueryParamsPrimitiveArgs withBoolParam(String boolParam) {
        this.boolParam = boolParam;
        return this;
    }
    
    @JsonProperty("intParam")
    public String intParam;

    public FormQueryParamsPrimitiveArgs withIntParam(String intParam) {
        this.intParam = intParam;
        return this;
    }
    
    @JsonProperty("numParam")
    public String numParam;

    public FormQueryParamsPrimitiveArgs withNumParam(String numParam) {
        this.numParam = numParam;
        return this;
    }
    
    @JsonProperty("strParam")
    public String strParam;

    public FormQueryParamsPrimitiveArgs withStrParam(String strParam) {
        this.strParam = strParam;
        return this;
    }
    
    public FormQueryParamsPrimitiveArgs(@JsonProperty("boolParam") String boolParam, @JsonProperty("intParam") String intParam, @JsonProperty("numParam") String numParam, @JsonProperty("strParam") String strParam) {
        this.boolParam = boolParam;
        this.intParam = intParam;
        this.numParam = numParam;
        this.strParam = strParam;
  }
}
