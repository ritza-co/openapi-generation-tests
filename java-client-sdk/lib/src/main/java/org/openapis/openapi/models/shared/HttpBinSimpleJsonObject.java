/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.shared;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * HttpBinSimpleJsonObject - OK
 */

public class HttpBinSimpleJsonObject {
    @JsonProperty("slideshow")
    public HttpBinSimpleJsonObjectSlideshow slideshow;

    public HttpBinSimpleJsonObject withSlideshow(HttpBinSimpleJsonObjectSlideshow slideshow) {
        this.slideshow = slideshow;
        return this;
    }
    
    public HttpBinSimpleJsonObject(@JsonProperty("slideshow") HttpBinSimpleJsonObjectSlideshow slideshow) {
        this.slideshow = slideshow;
  }
}
