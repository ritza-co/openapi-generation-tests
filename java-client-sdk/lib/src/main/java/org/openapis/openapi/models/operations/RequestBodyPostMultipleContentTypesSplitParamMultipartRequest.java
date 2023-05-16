/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapis.openapi.utils.SpeakeasyMetadata;

public class RequestBodyPostMultipleContentTypesSplitParamMultipartRequest {
    @SpeakeasyMetadata("request:mediaType=multipart/form-data")
    public RequestBodyPostMultipleContentTypesSplitParamMultipartFormData requestBody;

    public RequestBodyPostMultipleContentTypesSplitParamMultipartRequest withRequestBody(RequestBodyPostMultipleContentTypesSplitParamMultipartFormData requestBody) {
        this.requestBody = requestBody;
        return this;
    }
    
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=paramStr")
    public String paramStr;

    public RequestBodyPostMultipleContentTypesSplitParamMultipartRequest withParamStr(String paramStr) {
        this.paramStr = paramStr;
        return this;
    }
    
    public RequestBodyPostMultipleContentTypesSplitParamMultipartRequest(@JsonProperty("RequestBody") RequestBodyPostMultipleContentTypesSplitParamMultipartFormData requestBody, @JsonProperty("paramStr") String paramStr) {
        this.requestBody = requestBody;
        this.paramStr = paramStr;
  }
}
