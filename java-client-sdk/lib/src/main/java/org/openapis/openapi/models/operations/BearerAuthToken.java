/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * BearerAuthToken - Successful authentication.
 */

public class BearerAuthToken {
    @JsonProperty("authenticated")
    public Boolean authenticated;

    public BearerAuthToken withAuthenticated(Boolean authenticated) {
        this.authenticated = authenticated;
        return this;
    }
    
    @JsonProperty("token")
    public String token;

    public BearerAuthToken withToken(String token) {
        this.token = token;
        return this;
    }
    
    public BearerAuthToken(@JsonProperty("authenticated") Boolean authenticated, @JsonProperty("token") String token) {
        this.authenticated = authenticated;
        this.token = token;
  }
}
