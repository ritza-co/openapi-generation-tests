/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * RequestBodyPutMultipartDifferentFileNameRes - OK
 */

public class RequestBodyPutMultipartDifferentFileNameRes {
    @JsonProperty("files")
    public java.util.Map<String, String> files;

    public RequestBodyPutMultipartDifferentFileNameRes withFiles(java.util.Map<String, String> files) {
        this.files = files;
        return this;
    }
    
    public RequestBodyPutMultipartDifferentFileNameRes(@JsonProperty("files") java.util.Map<String, String> files) {
        this.files = files;
  }
}
