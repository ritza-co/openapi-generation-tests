/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * BasicAuthUser - Successful authentication.
 */

public class BasicAuthUser {
    @JsonProperty("authenticated")
    public Boolean authenticated;

    public BasicAuthUser withAuthenticated(Boolean authenticated) {
        this.authenticated = authenticated;
        return this;
    }
    
    @JsonProperty("user")
    public String user;

    public BasicAuthUser withUser(String user) {
        this.user = user;
        return this;
    }
    
    public BasicAuthUser(@JsonProperty("authenticated") Boolean authenticated, @JsonProperty("user") String user) {
        this.authenticated = authenticated;
        this.user = user;
  }
}
