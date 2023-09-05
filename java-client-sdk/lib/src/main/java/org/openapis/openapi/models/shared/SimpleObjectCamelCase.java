/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.shared;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import org.openapis.openapi.utils.DateTimeDeserializer;
import org.openapis.openapi.utils.DateTimeSerializer;

/**
 * SimpleObjectCamelCase - A simple object that uses all our supported primitive types and enums and has optional properties.
 * https://docs.speakeasyapi.dev - A link to the external docs.
 */

public class SimpleObjectCamelCase {
    /**
     * An any property.
     */
    @JsonProperty("any_val")
    public Object anyVal;

    public SimpleObjectCamelCase withAnyVal(Object anyVal) {
        this.anyVal = anyVal;
        return this;
    }
    
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("bigint_str_val")
    public String bigintStrVal;

    public SimpleObjectCamelCase withBigintStrVal(String bigintStrVal) {
        this.bigintStrVal = bigintStrVal;
        return this;
    }
    
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("bigint_val")
    public Long bigintVal;

    public SimpleObjectCamelCase withBigintVal(Long bigintVal) {
        this.bigintVal = bigintVal;
        return this;
    }
    
    /**
     * An optional boolean property.
     */
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("bool_opt_val")
    public Boolean boolOptVal;

    public SimpleObjectCamelCase withBoolOptVal(Boolean boolOptVal) {
        this.boolOptVal = boolOptVal;
        return this;
    }
    
    /**
     * A boolean property.
     */
    @JsonProperty("bool_val")
    public Boolean boolVal;

    public SimpleObjectCamelCase withBoolVal(Boolean boolVal) {
        this.boolVal = boolVal;
        return this;
    }
    
    /**
     * A date-time property.
     */
    @JsonSerialize(using = DateTimeSerializer.class)
    @JsonDeserialize(using = DateTimeDeserializer.class)
    @JsonProperty("date_time_val")
    public OffsetDateTime dateTimeVal;

    public SimpleObjectCamelCase withDateTimeVal(OffsetDateTime dateTimeVal) {
        this.dateTimeVal = dateTimeVal;
        return this;
    }
    
    /**
     * A date property.
     */
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    @JsonProperty("date_val")
    public LocalDate dateVal;

    public SimpleObjectCamelCase withDateVal(LocalDate dateVal) {
        this.dateVal = dateVal;
        return this;
    }
    
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("decimal_val")
    public Double decimalVal;

    public SimpleObjectCamelCase withDecimalVal(Double decimalVal) {
        this.decimalVal = decimalVal;
        return this;
    }
    
    /**
     * A string based enum
     */
    @JsonProperty("enum_val")
    public Enum enumVal;

    public SimpleObjectCamelCase withEnumVal(Enum enumVal) {
        this.enumVal = enumVal;
        return this;
    }
    
    /**
     * A float32 property.
     */
    @JsonProperty("float32_val")
    public Float float32Val;

    public SimpleObjectCamelCase withFloat32Val(Float float32Val) {
        this.float32Val = float32Val;
        return this;
    }
    
    /**
     * An int32 enum property.
     */
    @JsonProperty("int32_enum_val")
    public SimpleObjectCamelCaseInt32EnumVal int32EnumVal;

    public SimpleObjectCamelCase withInt32EnumVal(SimpleObjectCamelCaseInt32EnumVal int32EnumVal) {
        this.int32EnumVal = int32EnumVal;
        return this;
    }
    
    /**
     * An int32 property.
     */
    @JsonProperty("int32_val")
    public Integer int32Val;

    public SimpleObjectCamelCase withInt32Val(Integer int32Val) {
        this.int32Val = int32Val;
        return this;
    }
    
    /**
     * An integer enum property.
     */
    @JsonProperty("int_enum_val")
    public SimpleObjectCamelCaseIntEnumVal intEnumVal;

    public SimpleObjectCamelCase withIntEnumVal(SimpleObjectCamelCaseIntEnumVal intEnumVal) {
        this.intEnumVal = intEnumVal;
        return this;
    }
    
    /**
     * An optional integer property will be null for tests.
     */
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("int_opt_null_val")
    public Long intOptNullVal;

    public SimpleObjectCamelCase withIntOptNullVal(Long intOptNullVal) {
        this.intOptNullVal = intOptNullVal;
        return this;
    }
    
    /**
     * An integer property.
     */
    @JsonProperty("int_val")
    public Long intVal;

    public SimpleObjectCamelCase withIntVal(Long intVal) {
        this.intVal = intVal;
        return this;
    }
    
    /**
     * An optional number property will be null for tests.
     */
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("num_opt_null_val")
    public Double numOptNullVal;

    public SimpleObjectCamelCase withNumOptNullVal(Double numOptNullVal) {
        this.numOptNullVal = numOptNullVal;
        return this;
    }
    
    /**
     * A number property.
     */
    @JsonProperty("num_val")
    public Double numVal;

    public SimpleObjectCamelCase withNumVal(Double numVal) {
        this.numVal = numVal;
        return this;
    }
    
    /**
     * An optional string property.
     */
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("str_opt_val")
    public String strOptVal;

    public SimpleObjectCamelCase withStrOptVal(String strOptVal) {
        this.strOptVal = strOptVal;
        return this;
    }
    
    /**
     * A string property.
     */
    @JsonProperty("str_val")
    public String strVal;

    public SimpleObjectCamelCase withStrVal(String strVal) {
        this.strVal = strVal;
        return this;
    }
    
    public SimpleObjectCamelCase(@JsonProperty("any_val") Object anyVal, @JsonProperty("bool_val") Boolean boolVal, @JsonProperty("date_time_val") OffsetDateTime dateTimeVal, @JsonProperty("date_val") LocalDate dateVal, @JsonProperty("enum_val") Enum enumVal, @JsonProperty("float32_val") Float float32Val, @JsonProperty("int32_enum_val") SimpleObjectCamelCaseInt32EnumVal int32EnumVal, @JsonProperty("int32_val") Integer int32Val, @JsonProperty("int_enum_val") SimpleObjectCamelCaseIntEnumVal intEnumVal, @JsonProperty("int_val") Long intVal, @JsonProperty("num_val") Double numVal, @JsonProperty("str_val") String strVal) {
        this.anyVal = anyVal;
        this.boolVal = boolVal;
        this.dateTimeVal = dateTimeVal;
        this.dateVal = dateVal;
        this.enumVal = enumVal;
        this.float32Val = float32Val;
        this.int32EnumVal = int32EnumVal;
        this.int32Val = int32Val;
        this.intEnumVal = intEnumVal;
        this.intVal = intVal;
        this.numVal = numVal;
        this.strVal = strVal;
  }
}
