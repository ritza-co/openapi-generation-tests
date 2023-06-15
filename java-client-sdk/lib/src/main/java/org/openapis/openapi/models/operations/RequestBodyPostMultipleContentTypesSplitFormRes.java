/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * RequestBodyPostMultipleContentTypesSplitFormRes - OK
 */

public class RequestBodyPostMultipleContentTypesSplitFormRes {
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("form")
    public java.util.Map<String, Object> form;

    public RequestBodyPostMultipleContentTypesSplitFormRes withForm(java.util.Map<String, Object> form) {
        this.form = form;
        return this;
    }
    
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("json")
    public java.util.Map<String, Object> json;

    public RequestBodyPostMultipleContentTypesSplitFormRes withJson(java.util.Map<String, Object> json) {
        this.json = json;
        return this;
    }
    
    public RequestBodyPostMultipleContentTypesSplitFormRes(){}
}
