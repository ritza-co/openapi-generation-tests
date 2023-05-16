/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import org.openapis.openapi.utils.SpeakeasyMetadata;

public class UsageExamplePostRequest {
    /**
     * A request body that contains fields with different formats for testing example generation
     */
    @SpeakeasyMetadata("request:mediaType=application/json")
    public UsageExamplePostRequestBody requestBody;

    public UsageExamplePostRequest withRequestBody(UsageExamplePostRequestBody requestBody) {
        this.requestBody = requestBody;
        return this;
    }
    
    /**
     * A boolean parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=boolParameter")
    public Boolean boolParameter;

    public UsageExamplePostRequest withBoolParameter(Boolean boolParameter) {
        this.boolParameter = boolParameter;
        return this;
    }
    
    /**
     * A date parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=dateParameter")
    public LocalDate dateParameter;

    public UsageExamplePostRequest withDateParameter(LocalDate dateParameter) {
        this.dateParameter = dateParameter;
        return this;
    }
    
    /**
     * A date time parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=dateTimeParameter")
    public OffsetDateTime dateTimeParameter;

    public UsageExamplePostRequest withDateTimeParameter(OffsetDateTime dateTimeParameter) {
        this.dateTimeParameter = dateTimeParameter;
        return this;
    }
    
    /**
     * A double parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=doubleParameter")
    public Double doubleParameter;

    public UsageExamplePostRequest withDoubleParameter(Double doubleParameter) {
        this.doubleParameter = doubleParameter;
        return this;
    }
    
    /**
     * An enum parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=enumParameter")
    public UsageExamplePostEnumParameterEnum enumParameter;

    public UsageExamplePostRequest withEnumParameter(UsageExamplePostEnumParameterEnum enumParameter) {
        this.enumParameter = enumParameter;
        return this;
    }
    
    /**
     * A float parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=floatParameter")
    public Double floatParameter;

    public UsageExamplePostRequest withFloatParameter(Double floatParameter) {
        this.floatParameter = floatParameter;
        return this;
    }
    
    /**
     * An int64 parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=int64Parameter")
    public Long int64Parameter;

    public UsageExamplePostRequest withInt64Parameter(Long int64Parameter) {
        this.int64Parameter = int64Parameter;
        return this;
    }
    
    /**
     * An integer parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=intParameter")
    public Integer intParameter;

    public UsageExamplePostRequest withIntParameter(Integer intParameter) {
        this.intParameter = intParameter;
        return this;
    }
    
    /**
     * An enum parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=optEnumParameter")
    public UsageExamplePostOptEnumParameterEnum optEnumParameter;

    public UsageExamplePostRequest withOptEnumParameter(UsageExamplePostOptEnumParameterEnum optEnumParameter) {
        this.optEnumParameter = optEnumParameter;
        return this;
    }
    
    /**
     * A string parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=strParameter")
    public String strParameter;

    public UsageExamplePostRequest withStrParameter(String strParameter) {
        this.strParameter = strParameter;
        return this;
    }
    
    public UsageExamplePostRequest(@JsonProperty("boolParameter") Boolean boolParameter, @JsonProperty("dateParameter") LocalDate dateParameter, @JsonProperty("dateTimeParameter") OffsetDateTime dateTimeParameter, @JsonProperty("doubleParameter") Double doubleParameter, @JsonProperty("enumParameter") UsageExamplePostEnumParameterEnum enumParameter, @JsonProperty("floatParameter") Double floatParameter, @JsonProperty("int64Parameter") Long int64Parameter, @JsonProperty("intParameter") Integer intParameter, @JsonProperty("strParameter") String strParameter) {
        this.boolParameter = boolParameter;
        this.dateParameter = dateParameter;
        this.dateTimeParameter = dateTimeParameter;
        this.doubleParameter = doubleParameter;
        this.enumParameter = enumParameter;
        this.floatParameter = floatParameter;
        this.int64Parameter = int64Parameter;
        this.intParameter = intParameter;
        this.strParameter = strParameter;
  }
}
