/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * FlattenedTypedObjectPostRes - OK
 */

public class FlattenedTypedObjectPostRes {
    @JsonProperty("json")
    public org.openapis.openapi.models.shared.TypedObject1 json;

    public FlattenedTypedObjectPostRes withJson(org.openapis.openapi.models.shared.TypedObject1 json) {
        this.json = json;
        return this;
    }
    
    public FlattenedTypedObjectPostRes(@JsonProperty("json") org.openapis.openapi.models.shared.TypedObject1 json) {
        this.json = json;
  }
}
