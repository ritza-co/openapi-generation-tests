/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.shared;

import com.fasterxml.jackson.annotation.JsonProperty;


public class HeaderAuth {
    @JsonProperty("expectedValue")
    public String expectedValue;

    public HeaderAuth withExpectedValue(String expectedValue) {
        this.expectedValue = expectedValue;
        return this;
    }
    
    @JsonProperty("headerName")
    public String headerName;

    public HeaderAuth withHeaderName(String headerName) {
        this.headerName = headerName;
        return this;
    }
    
    public HeaderAuth(@JsonProperty("expectedValue") String expectedValue, @JsonProperty("headerName") String headerName) {
        this.expectedValue = expectedValue;
        this.headerName = headerName;
  }
}
