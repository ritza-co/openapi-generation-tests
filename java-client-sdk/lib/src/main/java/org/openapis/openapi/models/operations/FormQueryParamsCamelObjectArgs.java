/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;


public class FormQueryParamsCamelObjectArgs {
    @JsonProperty("item_count")
    public String itemCount;

    public FormQueryParamsCamelObjectArgs withItemCount(String itemCount) {
        this.itemCount = itemCount;
        return this;
    }
    
    @JsonProperty("search_term")
    public String searchTerm;

    public FormQueryParamsCamelObjectArgs withSearchTerm(String searchTerm) {
        this.searchTerm = searchTerm;
        return this;
    }
    
    public FormQueryParamsCamelObjectArgs(@JsonProperty("item_count") String itemCount, @JsonProperty("search_term") String searchTerm) {
        this.itemCount = itemCount;
        this.searchTerm = searchTerm;
  }
}
