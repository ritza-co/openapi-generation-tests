/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * AnchorTypesGetTypeFromAnchor - A successful response that contains the simpleObject sent in the request body
 */

public class AnchorTypesGetTypeFromAnchor {
    /**
     * A simple object that uses all our supported primitive types and enums and has optional properties.
     * https://docs.speakeasyapi.dev - A link to the external docs.
     */
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("json")
    public org.openapis.openapi.models.shared.SimpleObject json;

    public AnchorTypesGetTypeFromAnchor withJson(org.openapis.openapi.models.shared.SimpleObject json) {
        this.json = json;
        return this;
    }
    
    public AnchorTypesGetTypeFromAnchor(){}
}
