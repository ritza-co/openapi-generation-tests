/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.time.LocalDate;

/**
 * RequestBodyPostJSONDataTypesDate200ApplicationJSON - OK
 */

public class RequestBodyPostJSONDataTypesDate200ApplicationJSON {
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    @JsonProperty("json")
    public LocalDate json;

    public RequestBodyPostJSONDataTypesDate200ApplicationJSON withJson(LocalDate json) {
        this.json = json;
        return this;
    }
    
    public RequestBodyPostJSONDataTypesDate200ApplicationJSON(@JsonProperty("json") LocalDate json) {
        this.json = json;
  }
}
