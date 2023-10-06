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
import org.openapis.openapi.utils.SpeakeasyMetadata;

/**
 * SimpleObject - A simple object that uses all our supported primitive types and enums and has optional properties.
 * https://docs.speakeasyapi.dev - A link to the external docs.
 */

public class SimpleObject {
    /**
     * An any property.
     */
    @JsonProperty("any")
    @SpeakeasyMetadata("header:name=any pathParam:name=any queryParam:name=any form:name=any multipartForm:name=any")
    public Object any;

    public SimpleObject withAny(Object any) {
        this.any = any;
        return this;
    }
    
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("bigint")
    @SpeakeasyMetadata("header:name=bigint pathParam:name=bigint queryParam:name=bigint form:name=bigint multipartForm:name=bigint")
    public Long bigint;

    public SimpleObject withBigint(Long bigint) {
        this.bigint = bigint;
        return this;
    }
    
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("bigintStr")
    @SpeakeasyMetadata("header:name=bigintStr pathParam:name=bigintStr queryParam:name=bigintStr form:name=bigintStr multipartForm:name=bigintStr")
    public String bigintStr;

    public SimpleObject withBigintStr(String bigintStr) {
        this.bigintStr = bigintStr;
        return this;
    }
    
    /**
     * A boolean property.
     */
    @JsonProperty("bool")
    @SpeakeasyMetadata("header:name=bool pathParam:name=bool queryParam:name=bool form:name=bool multipartForm:name=bool")
    public Boolean bool;

    public SimpleObject withBool(Boolean bool) {
        this.bool = bool;
        return this;
    }
    
    /**
     * An optional boolean property.
     */
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("boolOpt")
    @SpeakeasyMetadata("header:name=boolOpt pathParam:name=boolOpt queryParam:name=boolOpt form:name=boolOpt multipartForm:name=boolOpt")
    public Boolean boolOpt;

    public SimpleObject withBoolOpt(Boolean boolOpt) {
        this.boolOpt = boolOpt;
        return this;
    }
    
    /**
     * A date property.
     */
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    @JsonProperty("date")
    @SpeakeasyMetadata("header:name=date pathParam:name=date queryParam:name=date form:name=date multipartForm:name=date")
    public LocalDate date;

    public SimpleObject withDate(LocalDate date) {
        this.date = date;
        return this;
    }
    
    /**
     * A date-time property.
     */
    @JsonSerialize(using = DateTimeSerializer.class)
    @JsonDeserialize(using = DateTimeDeserializer.class)
    @JsonProperty("dateTime")
    @SpeakeasyMetadata("header:name=dateTime pathParam:name=dateTime queryParam:name=dateTime form:name=dateTime multipartForm:name=dateTime")
    public OffsetDateTime dateTime;

    public SimpleObject withDateTime(OffsetDateTime dateTime) {
        this.dateTime = dateTime;
        return this;
    }
    
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("decimal")
    @SpeakeasyMetadata("header:name=decimal pathParam:name=decimal queryParam:name=decimal form:name=decimal multipartForm:name=decimal")
    public Double decimal;

    public SimpleObject withDecimal(Double decimal) {
        this.decimal = decimal;
        return this;
    }
    
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("decimalStr")
    @SpeakeasyMetadata("header:name=decimalStr pathParam:name=decimalStr queryParam:name=decimalStr form:name=decimalStr multipartForm:name=decimalStr")
    public String decimalStr;

    public SimpleObject withDecimalStr(String decimalStr) {
        this.decimalStr = decimalStr;
        return this;
    }
    
    /**
     * A string based enum
     */
    @JsonProperty("enum")
    @SpeakeasyMetadata("header:name=enum pathParam:name=enum queryParam:name=enum form:name=enum multipartForm:name=enum")
    public Enum enum_;

    public SimpleObject withEnum(Enum enum_) {
        this.enum_ = enum_;
        return this;
    }
    
    /**
     * A float32 property.
     */
    @JsonProperty("float32")
    @SpeakeasyMetadata("header:name=float32 pathParam:name=float32 queryParam:name=float32 form:name=float32 multipartForm:name=float32")
    public Float float32;

    public SimpleObject withFloat32(Float float32) {
        this.float32 = float32;
        return this;
    }
    
    /**
     * An integer property.
     */
    @JsonProperty("int")
    @SpeakeasyMetadata("header:name=int pathParam:name=int queryParam:name=int form:name=int multipartForm:name=int")
    public Long int_;

    public SimpleObject withInt(Long int_) {
        this.int_ = int_;
        return this;
    }
    
    /**
     * An int32 property.
     */
    @JsonProperty("int32")
    @SpeakeasyMetadata("header:name=int32 pathParam:name=int32 queryParam:name=int32 form:name=int32 multipartForm:name=int32")
    public Integer int32;

    public SimpleObject withInt32(Integer int32) {
        this.int32 = int32;
        return this;
    }
    
    /**
     * An int32 enum property.
     */
    @JsonProperty("int32Enum")
    @SpeakeasyMetadata("header:name=int32Enum pathParam:name=int32Enum queryParam:name=int32Enum form:name=int32Enum multipartForm:name=int32Enum")
    public SimpleObjectInt32Enum int32Enum;

    public SimpleObject withInt32Enum(SimpleObjectInt32Enum int32Enum) {
        this.int32Enum = int32Enum;
        return this;
    }
    
    /**
     * An integer enum property.
     */
    @JsonProperty("intEnum")
    @SpeakeasyMetadata("header:name=intEnum pathParam:name=intEnum queryParam:name=intEnum form:name=intEnum multipartForm:name=intEnum")
    public SimpleObjectIntEnum intEnum;

    public SimpleObject withIntEnum(SimpleObjectIntEnum intEnum) {
        this.intEnum = intEnum;
        return this;
    }
    
    /**
     * An optional integer property will be null for tests.
     */
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("intOptNull")
    @SpeakeasyMetadata("header:name=intOptNull pathParam:name=intOptNull queryParam:name=intOptNull form:name=intOptNull multipartForm:name=intOptNull")
    public Long intOptNull;

    public SimpleObject withIntOptNull(Long intOptNull) {
        this.intOptNull = intOptNull;
        return this;
    }
    
    /**
     * A number property.
     */
    @JsonProperty("num")
    @SpeakeasyMetadata("header:name=num pathParam:name=num queryParam:name=num form:name=num multipartForm:name=num")
    public Double num;

    public SimpleObject withNum(Double num) {
        this.num = num;
        return this;
    }
    
    /**
     * An optional number property will be null for tests.
     */
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("numOptNull")
    @SpeakeasyMetadata("header:name=numOptNull pathParam:name=numOptNull queryParam:name=numOptNull form:name=numOptNull multipartForm:name=numOptNull")
    public Double numOptNull;

    public SimpleObject withNumOptNull(Double numOptNull) {
        this.numOptNull = numOptNull;
        return this;
    }
    
    /**
     * A string property.
     */
    @JsonProperty("str")
    @SpeakeasyMetadata("header:name=str pathParam:name=str queryParam:name=str form:name=str multipartForm:name=str")
    public String str;

    public SimpleObject withStr(String str) {
        this.str = str;
        return this;
    }
    
    /**
     * An optional string property.
     */
    @JsonInclude(Include.NON_ABSENT)
    @JsonProperty("strOpt")
    @SpeakeasyMetadata("header:name=strOpt pathParam:name=strOpt queryParam:name=strOpt form:name=strOpt multipartForm:name=strOpt")
    public String strOpt;

    public SimpleObject withStrOpt(String strOpt) {
        this.strOpt = strOpt;
        return this;
    }
    
    public SimpleObject(@JsonProperty("any") Object any, @JsonProperty("bool") Boolean bool, @JsonProperty("date") LocalDate date, @JsonProperty("dateTime") OffsetDateTime dateTime, @JsonProperty("enum") Enum enum_, @JsonProperty("float32") Float float32, @JsonProperty("int") Long int_, @JsonProperty("int32") Integer int32, @JsonProperty("int32Enum") SimpleObjectInt32Enum int32Enum, @JsonProperty("intEnum") SimpleObjectIntEnum intEnum, @JsonProperty("num") Double num, @JsonProperty("str") String str) {
        this.any = any;
        this.bool = bool;
        this.date = date;
        this.dateTime = dateTime;
        this.enum_ = enum_;
        this.float32 = float32;
        this.int_ = int_;
        this.int32 = int32;
        this.int32Enum = int32Enum;
        this.intEnum = intEnum;
        this.num = num;
        this.str = str;
  }
}
