/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * RequestBodyPutMultipartDeepRes - OK
 */
public class RequestBodyPutMultipartDeepRes {
    @JsonProperty("form")
    public RequestBodyPutMultipartDeepResForm form;

    public RequestBodyPutMultipartDeepRes withForm(RequestBodyPutMultipartDeepResForm form) {
        this.form = form;
        return this;
    }
    
    public RequestBodyPutMultipartDeepRes(@JsonProperty("form") RequestBodyPutMultipartDeepResForm form) {
        this.form = form;
  }
}
