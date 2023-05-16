/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapis.openapi.utils.SpeakeasyMetadata;

public class DeepObjectQueryParamsMapRequest {
    @SpeakeasyMetadata("queryParam:style=deepObject,explode=true,name=mapArrParam")
    public java.util.Map<String, String[]> mapArrParam;

    public DeepObjectQueryParamsMapRequest withMapArrParam(java.util.Map<String, String[]> mapArrParam) {
        this.mapArrParam = mapArrParam;
        return this;
    }
    
    @SpeakeasyMetadata("queryParam:style=deepObject,explode=true,name=mapParam")
    public java.util.Map<String, String> mapParam;

    public DeepObjectQueryParamsMapRequest withMapParam(java.util.Map<String, String> mapParam) {
        this.mapParam = mapParam;
        return this;
    }
    
    public DeepObjectQueryParamsMapRequest(@JsonProperty("mapParam") java.util.Map<String, String> mapParam) {
        this.mapParam = mapParam;
  }
}
