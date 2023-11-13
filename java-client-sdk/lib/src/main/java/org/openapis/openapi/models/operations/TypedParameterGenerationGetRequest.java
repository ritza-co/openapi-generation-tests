/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import java.time.LocalDate;
import org.openapis.openapi.utils.SpeakeasyMetadata;


public class TypedParameterGenerationGetRequest {
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=bigint")
    public Long bigint;

    public TypedParameterGenerationGetRequest withBigint(Long bigint) {
        this.bigint = bigint;
        return this;
    }
    
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=date")
    public LocalDate date;

    public TypedParameterGenerationGetRequest withDate(LocalDate date) {
        this.date = date;
        return this;
    }
    
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=decimal")
    public Double decimal;

    public TypedParameterGenerationGetRequest withDecimal(Double decimal) {
        this.decimal = decimal;
        return this;
    }
    
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=obj")
    public Obj obj;

    public TypedParameterGenerationGetRequest withObj(Obj obj) {
        this.obj = obj;
        return this;
    }
    
    public TypedParameterGenerationGetRequest(){}
}
