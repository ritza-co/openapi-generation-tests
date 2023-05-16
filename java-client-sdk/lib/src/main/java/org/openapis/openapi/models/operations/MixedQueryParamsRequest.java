/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapis.openapi.utils.SpeakeasyMetadata;

public class MixedQueryParamsRequest {
    /**
     * A simple object that uses all our supported primitive types and enums and has optional properties.
     */
    @SpeakeasyMetadata("queryParam:style=deepObject,explode=true,name=deepObjectParam")
    public org.openapis.openapi.models.shared.SimpleObject deepObjectParam;

    public MixedQueryParamsRequest withDeepObjectParam(org.openapis.openapi.models.shared.SimpleObject deepObjectParam) {
        this.deepObjectParam = deepObjectParam;
        return this;
    }
    
    /**
     * A simple object that uses all our supported primitive types and enums and has optional properties.
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=formParam")
    public org.openapis.openapi.models.shared.SimpleObject formParam;

    public MixedQueryParamsRequest withFormParam(org.openapis.openapi.models.shared.SimpleObject formParam) {
        this.formParam = formParam;
        return this;
    }
    
    /**
     * A simple object that uses all our supported primitive types and enums and has optional properties.
     */
    @SpeakeasyMetadata("queryParam:serialization=json,name=jsonParam")
    public org.openapis.openapi.models.shared.SimpleObject jsonParam;

    public MixedQueryParamsRequest withJsonParam(org.openapis.openapi.models.shared.SimpleObject jsonParam) {
        this.jsonParam = jsonParam;
        return this;
    }
    
    public MixedQueryParamsRequest(@JsonProperty("deepObjectParam") org.openapis.openapi.models.shared.SimpleObject deepObjectParam, @JsonProperty("formParam") org.openapis.openapi.models.shared.SimpleObject formParam, @JsonProperty("jsonParam") org.openapis.openapi.models.shared.SimpleObject jsonParam) {
        this.deepObjectParam = deepObjectParam;
        this.formParam = formParam;
        this.jsonParam = jsonParam;
  }
}
