/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapis.openapi.utils.SpeakeasyMetadata;


public class StatusGetXSpeakeasyErrorsRequest {
    @SpeakeasyMetadata("pathParam:style=simple,explode=false,name=statusCode")
    public Long statusCode;

    public StatusGetXSpeakeasyErrorsRequest withStatusCode(Long statusCode) {
        this.statusCode = statusCode;
        return this;
    }
    
    public StatusGetXSpeakeasyErrorsRequest(@JsonProperty("statusCode") Long statusCode) {
        this.statusCode = statusCode;
  }
}
