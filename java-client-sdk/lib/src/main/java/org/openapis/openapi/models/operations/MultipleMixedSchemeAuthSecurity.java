/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapis.openapi.utils.SpeakeasyMetadata;


public class MultipleMixedSchemeAuthSecurity {
    @SpeakeasyMetadata("security:scheme=true,type=apiKey,subtype=header,name=x-api-key")
    public String apiKeyAuthNew;

    public MultipleMixedSchemeAuthSecurity withApiKeyAuthNew(String apiKeyAuthNew) {
        this.apiKeyAuthNew = apiKeyAuthNew;
        return this;
    }
    
    @SpeakeasyMetadata("security:scheme=true,type=http,subtype=basic")
    public org.openapis.openapi.models.shared.SchemeBasicAuth basicAuth;

    public MultipleMixedSchemeAuthSecurity withBasicAuth(org.openapis.openapi.models.shared.SchemeBasicAuth basicAuth) {
        this.basicAuth = basicAuth;
        return this;
    }
    
    public MultipleMixedSchemeAuthSecurity(@JsonProperty("apiKeyAuthNew") String apiKeyAuthNew, @JsonProperty("basicAuth") org.openapis.openapi.models.shared.SchemeBasicAuth basicAuth) {
        this.apiKeyAuthNew = apiKeyAuthNew;
        this.basicAuth = basicAuth;
  }
}
