/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import org.openapis.openapi.utils.SpeakeasyMetadata;


public class GlobalsQueryParameterGetRequest {
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=globalQueryParam")
    public String globalQueryParam;

    public GlobalsQueryParameterGetRequest withGlobalQueryParam(String globalQueryParam) {
        this.globalQueryParam = globalQueryParam;
        return this;
    }
    
    public GlobalsQueryParameterGetRequest(){}
}
