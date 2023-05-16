/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Oauth2AuthToken - Successful authentication.
 */
public class Oauth2AuthToken {
    @JsonProperty("authenticated")
    public Boolean authenticated;

    public Oauth2AuthToken withAuthenticated(Boolean authenticated) {
        this.authenticated = authenticated;
        return this;
    }
    
    @JsonProperty("token")
    public String token;

    public Oauth2AuthToken withToken(String token) {
        this.token = token;
        return this;
    }
    
    public Oauth2AuthToken(@JsonProperty("authenticated") Boolean authenticated, @JsonProperty("token") String token) {
        this.authenticated = authenticated;
        this.token = token;
  }
}
