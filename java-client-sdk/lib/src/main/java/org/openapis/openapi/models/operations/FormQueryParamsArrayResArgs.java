/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

public class FormQueryParamsArrayResArgs {
    @JsonProperty("arrParam")
    public String arrParam;

    public FormQueryParamsArrayResArgs withArrParam(String arrParam) {
        this.arrParam = arrParam;
        return this;
    }
    
    @JsonProperty("arrParamExploded")
    public String[] arrParamExploded;

    public FormQueryParamsArrayResArgs withArrParamExploded(String[] arrParamExploded) {
        this.arrParamExploded = arrParamExploded;
        return this;
    }
    
    public FormQueryParamsArrayResArgs(@JsonProperty("arrParam") String arrParam, @JsonProperty("arrParamExploded") String[] arrParamExploded) {
        this.arrParam = arrParam;
        this.arrParamExploded = arrParamExploded;
  }
}
