/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.shared;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ArrObjValueCamelCase {
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("json")
    public SimpleObjectCamelCase[] json;

    public ArrObjValueCamelCase withJson(SimpleObjectCamelCase[] json) {
        this.json = json;
        return this;
    }
    
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("required")
    public Object required;

    public ArrObjValueCamelCase withRequired(Object required) {
        this.required = required;
        return this;
    }
    
    public ArrObjValueCamelCase(){}
}
