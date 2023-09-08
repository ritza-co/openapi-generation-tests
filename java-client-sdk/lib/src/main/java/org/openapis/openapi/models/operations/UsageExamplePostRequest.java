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
     * An bigint parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=bigintParameter")
    public Long bigintParameter;

    public UsageExamplePostRequest withBigintParameter(Long bigintParameter) {
        this.bigintParameter = bigintParameter;
        return this;
    }
    
    /**
     * An bigint parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=bigintParameterOptional")
    public Long bigintParameterOptional;

    public UsageExamplePostRequest withBigintParameterOptional(Long bigintParameterOptional) {
        this.bigintParameterOptional = bigintParameterOptional;
        return this;
    }
    
    /**
     * An bigint parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=bigintStrParameter")
    public String bigintStrParameter;

    public UsageExamplePostRequest withBigintStrParameter(String bigintStrParameter) {
        this.bigintStrParameter = bigintStrParameter;
        return this;
    }
    
    /**
     * An bigint parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=bigintStrParameterOptional")
    public String bigintStrParameterOptional;

    public UsageExamplePostRequest withBigintStrParameterOptional(String bigintStrParameterOptional) {
        this.bigintStrParameterOptional = bigintStrParameterOptional;
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
     * A decimal parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=decimalParameter")
    public Double decimalParameter;

    public UsageExamplePostRequest withDecimalParameter(Double decimalParameter) {
        this.decimalParameter = decimalParameter;
        return this;
    }
    
    /**
     * A decimal parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=decimalParameterOptional")
    public Double decimalParameterOptional;

    public UsageExamplePostRequest withDecimalParameterOptional(Double decimalParameterOptional) {
        this.decimalParameterOptional = decimalParameterOptional;
        return this;
    }
    
    /**
     * A decimal parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=decimalStrParameter")
    public String decimalStrParameter;

    public UsageExamplePostRequest withDecimalStrParameter(String decimalStrParameter) {
        this.decimalStrParameter = decimalStrParameter;
        return this;
    }
    
    /**
     * A decimal parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=decimalStrParameterOptional")
    public String decimalStrParameterOptional;

    public UsageExamplePostRequest withDecimalStrParameterOptional(String decimalStrParameterOptional) {
        this.decimalStrParameterOptional = decimalStrParameterOptional;
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
    public UsageExamplePostEnumParameter enumParameter;

    public UsageExamplePostRequest withEnumParameter(UsageExamplePostEnumParameter enumParameter) {
        this.enumParameter = enumParameter;
        return this;
    }
    
    /**
     * A number parameter that contains a falsey example value
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=falseyNumberParameter")
    public Double falseyNumberParameter;

    public UsageExamplePostRequest withFalseyNumberParameter(Double falseyNumberParameter) {
        this.falseyNumberParameter = falseyNumberParameter;
        return this;
    }
    
    /**
     * A float32 parameter
     */
    @SpeakeasyMetadata("queryParam:style=form,explode=true,name=float32Parameter")
    public Float float32Parameter;

    public UsageExamplePostRequest withFloat32Parameter(Float float32Parameter) {
        this.float32Parameter = float32Parameter;
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
    public UsageExamplePostOptEnumParameter optEnumParameter;

    public UsageExamplePostRequest withOptEnumParameter(UsageExamplePostOptEnumParameter optEnumParameter) {
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
    
    public UsageExamplePostRequest(@JsonProperty("bigintParameter") Long bigintParameter, @JsonProperty("bigintStrParameter") String bigintStrParameter, @JsonProperty("boolParameter") Boolean boolParameter, @JsonProperty("dateParameter") LocalDate dateParameter, @JsonProperty("dateTimeParameter") OffsetDateTime dateTimeParameter, @JsonProperty("decimalParameter") Double decimalParameter, @JsonProperty("decimalStrParameter") String decimalStrParameter, @JsonProperty("doubleParameter") Double doubleParameter, @JsonProperty("enumParameter") UsageExamplePostEnumParameter enumParameter, @JsonProperty("falseyNumberParameter") Double falseyNumberParameter, @JsonProperty("float32Parameter") Float float32Parameter, @JsonProperty("floatParameter") Double floatParameter, @JsonProperty("int64Parameter") Long int64Parameter, @JsonProperty("intParameter") Integer intParameter, @JsonProperty("strParameter") String strParameter) {
        this.bigintParameter = bigintParameter;
        this.bigintStrParameter = bigintStrParameter;
        this.boolParameter = boolParameter;
        this.dateParameter = dateParameter;
        this.dateTimeParameter = dateTimeParameter;
        this.decimalParameter = decimalParameter;
        this.decimalStrParameter = decimalStrParameter;
        this.doubleParameter = doubleParameter;
        this.enumParameter = enumParameter;
        this.falseyNumberParameter = falseyNumberParameter;
        this.float32Parameter = float32Parameter;
        this.floatParameter = floatParameter;
        this.int64Parameter = int64Parameter;
        this.intParameter = intParameter;
        this.strParameter = strParameter;
  }
}
