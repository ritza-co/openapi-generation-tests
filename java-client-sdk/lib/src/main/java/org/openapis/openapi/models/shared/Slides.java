/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.shared;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Slides {
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("items")
    public String[] items;

    public Slides withItems(String[] items) {
        this.items = items;
        return this;
    }
    
    @JsonProperty("title")
    public String title;

    public Slides withTitle(String title) {
        this.title = title;
        return this;
    }
    
    @JsonProperty("type")
    public String type;

    public Slides withType(String type) {
        this.type = type;
        return this;
    }
    
    public Slides(@JsonProperty("title") String title, @JsonProperty("type") String type) {
        this.title = title;
        this.type = type;
  }
}
