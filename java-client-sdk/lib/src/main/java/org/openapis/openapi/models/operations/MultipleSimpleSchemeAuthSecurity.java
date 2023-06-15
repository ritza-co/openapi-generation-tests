/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapis.openapi.utils.SpeakeasyMetadata;


public class MultipleSimpleSchemeAuthSecurity {
    @SpeakeasyMetadata("security:scheme=true,type=apiKey,subtype=header,name=x-api-key")
    public String apiKeyAuthNew;

    public MultipleSimpleSchemeAuthSecurity withApiKeyAuthNew(String apiKeyAuthNew) {
        this.apiKeyAuthNew = apiKeyAuthNew;
        return this;
    }
    
    @SpeakeasyMetadata("security:scheme=true,type=oauth2,name=Authorization")
    public String oauth2;

    public MultipleSimpleSchemeAuthSecurity withOauth2(String oauth2) {
        this.oauth2 = oauth2;
        return this;
    }
    
    public MultipleSimpleSchemeAuthSecurity(@JsonProperty("apiKeyAuthNew") String apiKeyAuthNew, @JsonProperty("oauth2") String oauth2) {
        this.apiKeyAuthNew = apiKeyAuthNew;
        this.oauth2 = oauth2;
  }
}
