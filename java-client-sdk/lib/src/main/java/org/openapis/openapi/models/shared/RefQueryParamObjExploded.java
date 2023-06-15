/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.shared;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapis.openapi.utils.SpeakeasyMetadata;

/**
 * RefQueryParamObjExploded
 */

public class RefQueryParamObjExploded {
    @SpeakeasyMetadata("queryParam:name=bool")
    public Boolean bool;

    public RefQueryParamObjExploded withBool(Boolean bool) {
        this.bool = bool;
        return this;
    }
    
    @SpeakeasyMetadata("queryParam:name=int")
    public Long int_;

    public RefQueryParamObjExploded withInt(Long int_) {
        this.int_ = int_;
        return this;
    }
    
    @SpeakeasyMetadata("queryParam:name=num")
    public Double num;

    public RefQueryParamObjExploded withNum(Double num) {
        this.num = num;
        return this;
    }
    
    @SpeakeasyMetadata("queryParam:name=str")
    public String str;

    public RefQueryParamObjExploded withStr(String str) {
        this.str = str;
        return this;
    }
    
    public RefQueryParamObjExploded(@JsonProperty("bool") Boolean bool, @JsonProperty("int") Long int_, @JsonProperty("num") Double num, @JsonProperty("str") String str) {
        this.bool = bool;
        this.int_ = int_;
        this.num = num;
        this.str = str;
  }
}
