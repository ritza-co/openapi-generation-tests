/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapis.openapi.utils.SpeakeasyMetadata;


public class UsageExamplePostSecurity {
    @SpeakeasyMetadata("security:scheme=true,type=http,subtype=basic,name=password")
    public String password;

    public UsageExamplePostSecurity withPassword(String password) {
        this.password = password;
        return this;
    }
    
    @SpeakeasyMetadata("security:scheme=true,type=http,subtype=basic,name=username")
    public String username;

    public UsageExamplePostSecurity withUsername(String username) {
        this.username = username;
        return this;
    }
    
    public UsageExamplePostSecurity(@JsonProperty("Username") String username, @JsonProperty("Password") String password) {
        this.username = username;
        this.password = password;
  }
}
