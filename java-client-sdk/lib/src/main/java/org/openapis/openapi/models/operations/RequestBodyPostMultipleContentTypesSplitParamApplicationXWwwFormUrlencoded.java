/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapis.openapi.utils.SpeakeasyMetadata;

public class RequestBodyPostMultipleContentTypesSplitParamApplicationXWwwFormUrlencoded {
    @SpeakeasyMetadata("form:name=bool3")
    public Boolean bool3;

    public RequestBodyPostMultipleContentTypesSplitParamApplicationXWwwFormUrlencoded withBool3(Boolean bool3) {
        this.bool3 = bool3;
        return this;
    }
    
    @SpeakeasyMetadata("form:name=num3")
    public Double num3;

    public RequestBodyPostMultipleContentTypesSplitParamApplicationXWwwFormUrlencoded withNum3(Double num3) {
        this.num3 = num3;
        return this;
    }
    
    @SpeakeasyMetadata("form:name=str3")
    public String str3;

    public RequestBodyPostMultipleContentTypesSplitParamApplicationXWwwFormUrlencoded withStr3(String str3) {
        this.str3 = str3;
        return this;
    }
    
    public RequestBodyPostMultipleContentTypesSplitParamApplicationXWwwFormUrlencoded(@JsonProperty("bool3") Boolean bool3, @JsonProperty("num3") Double num3, @JsonProperty("str3") String str3) {
        this.bool3 = bool3;
        this.num3 = num3;
        this.str3 = str3;
  }
}
