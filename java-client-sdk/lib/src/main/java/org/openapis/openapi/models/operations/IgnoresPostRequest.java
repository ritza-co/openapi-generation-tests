/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import org.openapis.openapi.utils.SpeakeasyMetadata;

public class IgnoresPostRequest {
    @SpeakeasyMetadata("request:mediaType=application/json")
    public IgnoresPostApplicationJSON requestBody;

    public IgnoresPostRequest withRequestBody(IgnoresPostApplicationJSON requestBody) {
        this.requestBody = requestBody;
        return this;
    }
    
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=testParam")
    public String testParam;

    public IgnoresPostRequest withTestParam(String testParam) {
        this.testParam = testParam;
        return this;
    }
    
    public IgnoresPostRequest(){}
}
