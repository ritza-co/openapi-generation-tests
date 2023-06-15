/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * RetriesGetRetries - OK
 */

public class RetriesGetRetries {
    @JsonProperty("retries")
    public Long retries;

    public RetriesGetRetries withRetries(Long retries) {
        this.retries = retries;
        return this;
    }
    
    public RetriesGetRetries(@JsonProperty("retries") Long retries) {
        this.retries = retries;
  }
}
