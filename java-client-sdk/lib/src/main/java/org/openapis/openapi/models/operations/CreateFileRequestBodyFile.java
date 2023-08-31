/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapis.openapi.utils.SpeakeasyMetadata;


public class CreateFileRequestBodyFile {
    @SpeakeasyMetadata("multipartForm:content")
    public byte[] content;

    public CreateFileRequestBodyFile withContent(byte[] content) {
        this.content = content;
        return this;
    }
    
    @SpeakeasyMetadata("multipartForm:name=file")
    public String file;

    public CreateFileRequestBodyFile withFile(String file) {
        this.file = file;
        return this;
    }
    
    public CreateFileRequestBodyFile(@JsonProperty("content") byte[] content, @JsonProperty("file") String file) {
        this.content = content;
        this.file = file;
  }
}
