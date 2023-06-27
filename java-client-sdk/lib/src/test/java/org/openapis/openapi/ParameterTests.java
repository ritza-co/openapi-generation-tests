/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi;

import org.junit.jupiter.api.Test;
import org.openapis.openapi.models.operations.*;
import org.openapis.openapi.models.shared.DeepObject;
import org.openapis.openapi.models.shared.RefQueryParamObj;
import org.openapis.openapi.models.shared.RefQueryParamObjExploded;
import org.openapis.openapi.models.shared.SimpleObject;
import org.openapis.openapi.utils.JSON;

import java.util.ArrayList;
import java.util.HashMap;

import static org.junit.jupiter.api.Assertions.*;

public class ParameterTests {
@Test
    void testMixedParametersPrimitives() throws Exception {
        Helpers.recordTest("parameters-mixed-primitives");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        MixedParametersPrimitivesResponse res = s.parameters
                .mixedParametersPrimitives("headerValue", "pathValue", "queryValue");

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals("http://localhost:35123/anything/mixedParams/path/pathValue?queryStringParam=queryValue", res.res.url);
        assertEquals("headerValue", res.res.headers.headerparam);
        assertEquals("queryValue", res.res.args.queryStringParam);
    }

    @Test
    void testSimplePathParameterPrimitives() throws Exception {
        Helpers.recordTest("parameters-simple-path-parameter-primitives");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        SimplePathParameterPrimitivesResponse res = s.parameters
                .simplePathParameterPrimitives(true, Long.valueOf(1), 1.1, "test");

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals("http://localhost:35123/anything/pathParams/str/test/bool/true/int/1/num/1.1", res.res.url);
    }

    @Test
    void testSimplePathParameterObjects() throws Exception {
        Helpers.recordTest("parameters-simple-path-parameter-objects");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        SimplePathParameterObjectsResponse res = s.parameters
                .simplePathParameterObjects(Helpers.createSimpleObject(), Helpers.createSimpleObject());

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals(
                "http://localhost:35123/anything/pathParams/obj/any,any,bool,true,boolOpt,true,date,2020-01-01,dateTime,2020-01-01T00:00:00.000000001Z,enum,one,float32,1.1,int,1,int32,1,int32Enum,55,intEnum,2,num,1.1,str,test,strOpt,testOptional/objExploded/any=any,bool=true,boolOpt=true,date=2020-01-01,dateTime=2020-01-01T00:00:00.000000001Z,enum=one,float32=1.1,int=1,int32=1,int32Enum=55,intEnum=2,num=1.1,str=test,strOpt=testOptional",
                res.res.url);
    }

    @Test
    void testSimplePathParameterArrays() throws Exception {
        Helpers.recordTest("parameters-simple-path-parameter-arrays");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        SimplePathParameterArraysResponse res = s.parameters
                .simplePathParameterArrays(new String[]{"test", "test2"});

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals("http://localhost:35123/anything/pathParams/arr/test,test2", res.res.url);
    }

    @Test
    void testSimplePathParameterMaps() throws Exception {
        Helpers.recordTest("parameters-simple-path-parameter-maps");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        HashMap<String, String> mapParam = new java.util.HashMap<String, String>() {
            {
                put("test", "value");
                put("test2", "value2");
            }
        };
        HashMap<String, Long> mapParamExploded = new java.util.HashMap<String, Long>() {
            {
                put("test", Long.valueOf(1));
                put("test2", Long.valueOf(2));
            }
        };

        SimplePathParameterMapsResponse res = s.parameters
                .simplePathParameterMaps(mapParam, mapParamExploded);

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals(
                "http://localhost:35123/anything/pathParams/map/test2,value2,test,value/mapExploded/test2=2,test=1",
                res.res.url);
    }

    @Test
    void testPathParameterJson() throws Exception {
        Helpers.recordTest("parameters-path-parameter-json");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        PathParameterJsonResponse res = s.parameters
                .pathParameterJson(Helpers.createSimpleObject());

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals(
                "http://localhost:35123/anything/pathParams/json/{\"any\":\"any\",\"bool\":true,\"boolOpt\":true,\"date\":\"2020-01-01\",\"dateTime\":\"2020-01-01T00:00:00.000000001Z\",\"enum\":\"one\",\"float32\":1.1,\"int\":1,\"int32\":1,\"int32Enum\":55,\"intEnum\":2,\"num\":1.1,\"str\":\"test\",\"strOpt\":\"testOptional\"}",
                res.res.url);
    }

    @Test
    void testFormQueryParamsPrimitive() throws Exception {
        Helpers.recordTest("parameters-form-query-params-primitive");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        FormQueryParamsPrimitiveResponse res = s.parameters
                .formQueryParamsPrimitive(true, Long.valueOf(1), 1.1, "test");

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals(
                "http://localhost:35123/anything/queryParams/form/primitive?boolParam=true&intParam=1&numParam=1.1&strParam=test",
                res.res.url);
        assertEquals("true", res.res.args.boolParam);
        assertEquals("1", res.res.args.intParam);
        assertEquals("1.1", res.res.args.numParam);
        assertEquals("test", res.res.args.strParam);
    }

    @Test
    void testFormQueryParamsObject() throws Exception {
        Helpers.recordTest("parameters-form-query-params-object");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        FormQueryParamsObjectResponse res = s.parameters
                .formQueryParamsObject(Helpers.createSimpleObject(), Helpers.createSimpleObject());

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals(
                "http://localhost:35123/anything/queryParams/form/obj?any=any&bool=true&boolOpt=true&date=2020-01-01&dateTime=2020-01-01T00%3A00%3A00.000000001Z&enum=one&float32=1.1&int=1&int32=1&int32Enum=55&intEnum=2&num=1.1&str=test&strOpt=testOptional&objParam=any%2Cany%2Cbool%2Ctrue%2CboolOpt%2Ctrue%2Cdate%2C2020-01-01%2CdateTime%2C2020-01-01T00%3A00%3A00.000000001Z%2Cenum%2Cone%2Cfloat32%2C1.1%2Cint%2C1%2Cint32%2C1%2Cint32Enum%2C55%2CintEnum%2C2%2Cnum%2C1.1%2Cstr%2Ctest%2CstrOpt%2CtestOptional",
                res.res.url);
        assertEquals("any", res.res.args.any);
        assertEquals("true", res.res.args.bool);
        assertEquals("true", res.res.args.boolOpt);
        assertEquals("2020-01-01", res.res.args.date);
        assertEquals("2020-01-01T00:00:00.000000001Z", res.res.args.dateTime);
        assertEquals("one", res.res.args.enum_);
        assertEquals("1.1", res.res.args.float32);
        assertEquals("1", res.res.args.int32);
        assertNull(res.res.args.intOptNull);
        assertEquals("1", res.res.args.int_);
        assertEquals("55", res.res.args.int32Enum);
        assertEquals("2", res.res.args.intEnum);
        assertEquals("1.1", res.res.args.num);
        assertNull(res.res.args.numOptNull);
        assertEquals("test", res.res.args.str);
        assertEquals("testOptional", res.res.args.strOpt);
        assertEquals(
                "any,any,bool,true,boolOpt,true,date,2020-01-01,dateTime,2020-01-01T00:00:00.000000001Z,enum,one,float32,1.1,int,1,int32,1,int32Enum,55,intEnum,2,num,1.1,str,test,strOpt,testOptional",
                res.res.args.objParam);
    }

    @Test
    void testFormQueryParamsRefParamObject() throws Exception {
        Helpers.recordTest("parameters-form-query-params-ref-param-object");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        FormQueryParamsRefParamObjectResponse res = s.parameters
                .formQueryParamsRefParamObject(
                        new RefQueryParamObj(true, Long.valueOf(1), 1.1, "test"),
                        new RefQueryParamObjExploded(true, Long.valueOf(1), 1.1, "test"));

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals(
                "http://localhost:35123/anything/queryParams/form/refParamObject?refObjParam=bool%2Ctrue%2Cint%2C1%2Cnum%2C1.1%2Cstr%2Ctest&bool=true&int=1&num=1.1&str=test",
                res.res.url);
        assertEquals("true", res.res.args.bool);
        assertEquals("1", res.res.args.int_);
        assertEquals("1.1", res.res.args.num);
        assertEquals("test", res.res.args.str);
        assertEquals("bool,true,int,1,num,1.1,str,test", res.res.args.refObjParam);
    }

    @Test
    void testFormQueryParamsArray() throws Exception {
        Helpers.recordTest("parameters-form-query-params-array");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        FormQueryParamsArrayResponse res = s.parameters
                .formQueryParamsArray(
                        new String[]{"test", "test2"},
                        new Long[]{Long.valueOf(1), Long.valueOf(2)});

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals(
                "http://localhost:35123/anything/queryParams/form/array?arrParam=test%2Ctest2&arrParamExploded=1&arrParamExploded=2",
                res.res.url);
        assertEquals("test,test2", res.res.args.arrParam);
        assertArrayEquals(new String[]{"1", "2"}, res.res.args.arrParamExploded);
    }

    @Test
    void testPipeDelimitedQueryParamsArray() throws Exception {
        Helpers.recordTest("parameters-pipe-query-params-array");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        PipeDelimitedQueryParamsArrayResponse res = s.parameters
                .pipeDelimitedQueryParamsArray(
                        new String[]{"test", "test2"},
                        new Long[]{Long.valueOf(1), Long.valueOf(2)},
                        new HashMap<String, String>() {{
                            put("key1", "val1");
                            put("key2", "val2");
                        }},
                        Helpers.createSimpleObject());

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals(
                "http://localhost:35123/anything/queryParams/pipe/array?arrParam=test|test2&arrParamExploded=1&arrParamExploded=2&mapParam=key1|val1|key2|val2&objParam=any|any|bool|true|boolOpt|true|date|2020-01-01|dateTime|2020-01-01T00%3A00%3A00.000000001Z|enum|one|float32|1.1|int|1|int32|1|int32Enum|55|intEnum|2|num|1.1|str|test|strOpt|testOptional",
                res.res.url);
        assertEquals("test|test2", res.res.args.arrParam);
        assertArrayEquals(new String[]{"1", "2"}, res.res.args.arrParamExploded);
    }

    @Test
    void testFormQueryParamsMap() throws Exception {
        Helpers.recordTest("parameters-form-query-params-map");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        FormQueryParamsMapResponse res = s.parameters
                .formQueryParamsMap(
                        new HashMap<String, String>() {
                            {
                                put("test", "value");
                                put("test2", "value2");
                            }
                        }, new HashMap<String, Long>() {
                            {
                                put("test", Long.valueOf(1));
                                put("test2", Long.valueOf(2));
                            }
                        });

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals(
                "http://localhost:35123/anything/queryParams/form/map?mapParam=test2%2Cvalue2%2Ctest%2Cvalue&test2=2&test=1",
                res.res.url);
        assertEquals(new HashMap<String, String>() {
            {
                put("mapParam", "test2,value2,test,value");
                put("test", "1");
                put("test2", "2");
            }
        }, res.res.args);
    }

    @Test
    void testDeepObjectQueryParamsObject() throws Exception {
        Helpers.recordTest("parameters-deep-object-query-params-object");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        DeepObjectQueryParamsObjectResponse res = s.parameters
                .deepObjectQueryParamsObject(
                        Helpers.createSimpleObject(),
                        new DeepObjectQueryParamsObjectObjArrParam()
                                .withArr(new String[]{"test", "test2"}));

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals(
                "http://localhost:35123/anything/queryParams/deepObject/obj?objParam[any]=any&objParam[bool]=true&objParam[boolOpt]=true&objParam[date]=2020-01-01&objParam[dateTime]=2020-01-01T00%3A00%3A00.000000001Z&objParam[enum]=one&objParam[float32]=1.1&objParam[int]=1&objParam[int32]=1&objParam[int32Enum]=55&objParam[intEnum]=2&objParam[num]=1.1&objParam[str]=test&objParam[strOpt]=testOptional&objArrParam[arr]=test&objArrParam[arr]=test2",
                res.res.url);
        assertArrayEquals(new String[]{"test", "test2"}, res.res.args.objArrParamArr);
        assertEquals("any", res.res.args.objParamAny);
        assertEquals("true", res.res.args.objParamBool);
        assertEquals("true", res.res.args.objParamBoolOpt);
        assertEquals("2020-01-01", res.res.args.objParamDate);
        assertEquals("2020-01-01T00:00:00.000000001Z", res.res.args.objParamDateTime);
        assertEquals("one", res.res.args.objParamEnum);
        assertEquals("1.1", res.res.args.objParamFloat32);
        assertEquals("1", res.res.args.objParamInt32);
        assertEquals("1", res.res.args.objParamInt);
        assertEquals("55", res.res.args.objParamInt32Enum);
        assertEquals("2", res.res.args.objParamIntEnum);
        assertEquals("1.1", res.res.args.objParamNum);
        assertEquals("test", res.res.args.objParamStr);
        assertEquals("testOptional", res.res.args.objParamStrOpt);
    }

    @Test
    void testDeepObjectQueryParamsMap() throws Exception {
        Helpers.recordTest("parameters-deep-object-query-params-map");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        HashMap<String, String> mapParam = new HashMap<String, String>() {
            {
                put("test", "value");
                put("test2", "value2");
            }
        };
        HashMap<String, String[]> mapArrParam = new HashMap<String, String[]>() {
            {
                put("test", new String[]{"value", "value2"});
                put("test2", new String[]{"value3", "value4"});
            }
        };

        DeepObjectQueryParamsMapResponse res = s.parameters
                .deepObjectQueryParamsMap(mapParam, mapArrParam);

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals(
                "http://localhost:35123/anything/queryParams/deepObject/map?mapParam[test2]=value2&mapParam[test]=value&mapArrParam[test2]=value3&mapArrParam[test2]=value4&mapArrParam[test]=value&mapArrParam[test]=value2",
                res.res.url);
        assertEquals(new HashMap<String, Object>() {
            {
                put("mapArrParam[test]", new ArrayList<String>() {
                    {
                        add("value");
                        add("value2");
                    }
                });
                put("mapArrParam[test2]", new ArrayList<String>() {
                    {
                        add("value3");
                        add("value4");
                    }
                });
                put("mapParam[test]", "value");
                put("mapParam[test2]", "value2");
            }
        }, res.res.args);
    }

    @Test
    void testJsonQueryParamsObject() throws Exception {
        Helpers.recordTest("parameters-json-query-params-object");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        SimpleObject simpleObj = Helpers.createSimpleObject();
        DeepObject deepObj = Helpers.createDeepObject();

        JsonQueryParamsObjectResponse res = s.parameters
                .jsonQueryParamsObject(deepObj, simpleObj);

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals(
                "http://localhost:35123/anything/queryParams/json/obj?deepObjParam={\"any\"%3A{\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000000001Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}%2C\"arr\"%3A[{\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000000001Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}%2C{\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000000001Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}]%2C\"bool\"%3Atrue%2C\"int\"%3A1%2C\"map\"%3A{\"key\"%3A{\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000000001Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}}%2C\"num\"%3A1.1%2C\"obj\"%3A{\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000000001Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}%2C\"str\"%3A\"test\"}&simpleObjParam={\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000000001Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}",
                res.res.url);
        assertEquals(JSON.getMapper().writeValueAsString(simpleObj), res.res.args.simpleObjParam);
        assertEquals(JSON.getMapper().writeValueAsString(deepObj), res.res.args.deepObjParam);
    }

    @Test
    void testMixedQueryParams() throws Exception {
        Helpers.recordTest("parameters-mixed-query-params");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        SimpleObject obj = Helpers.createSimpleObject();

        MixedQueryParamsResponse res = s.parameters
                .mixedQueryParams(obj, obj, obj);

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals(
                "http://localhost:35123/anything/queryParams/mixed?deepObjectParam[any]=any&deepObjectParam[bool]=true&deepObjectParam[boolOpt]=true&deepObjectParam[date]=2020-01-01&deepObjectParam[dateTime]=2020-01-01T00%3A00%3A00.000000001Z&deepObjectParam[enum]=one&deepObjectParam[float32]=1.1&deepObjectParam[int]=1&deepObjectParam[int32]=1&deepObjectParam[int32Enum]=55&deepObjectParam[intEnum]=2&deepObjectParam[num]=1.1&deepObjectParam[str]=test&deepObjectParam[strOpt]=testOptional&any=any&bool=true&boolOpt=true&date=2020-01-01&dateTime=2020-01-01T00%3A00%3A00.000000001Z&enum=one&float32=1.1&int=1&int32=1&int32Enum=55&intEnum=2&num=1.1&str=test&strOpt=testOptional&jsonParam={\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000000001Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}",
                res.res.url);
        assertEquals(new HashMap<String, String>() {
            {
                put("any", "any");
                put("bool", "true");
                put("boolOpt", "true");
                put("date", "2020-01-01");
                put("dateTime", "2020-01-01T00:00:00.000000001Z");
                put("deepObjectParam[any]", "any");
                put("deepObjectParam[bool]", "true");
                put("deepObjectParam[boolOpt]", "true");
                put("deepObjectParam[date]", "2020-01-01");
                put("deepObjectParam[dateTime]", "2020-01-01T00:00:00.000000001Z");
                put("deepObjectParam[enum]", "one");
                put("deepObjectParam[float32]", "1.1");
                put("deepObjectParam[int]", "1");
                put("deepObjectParam[int32]", "1");
                put("deepObjectParam[int32Enum]", "55");
                put("deepObjectParam[intEnum]", "2");
                put("deepObjectParam[num]", "1.1");
                put("deepObjectParam[str]", "test");
                put("deepObjectParam[strOpt]", "testOptional");
                put("enum", "one");
                put("float32", "1.1");
                put("int", "1");
                put("int32", "1");
                put("int32Enum", "55");
                put("intEnum", "2");
                put("jsonParam", JSON.getMapper().writeValueAsString(obj));
                put("num", "1.1");
                put("str", "test");
                put("strOpt", "testOptional");
            }
        }, res.res.args);
    }

    @Test
    void testHeaderParamsPrimitive() throws Exception {
        Helpers.recordTest("parameters-header-params-primitive");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        HeaderParamsPrimitiveResponse res = s.parameters
                .headerParamsPrimitive(true, Long.valueOf(1), 1.1, "test");

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals("true", res.res.headers.xHeaderBoolean);
        assertEquals("1", res.res.headers.xHeaderInteger);
        assertEquals("1.1", res.res.headers.xHeaderNumber);
        assertEquals("test", res.res.headers.xHeaderString);
    }

    @Test
    void testHeaderParamsObject() throws Exception {
        Helpers.recordTest("parameters-header-params-object");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        HeaderParamsObjectResponse res = s.parameters
                .headerParamsObject(Helpers.createSimpleObject(), Helpers.createSimpleObject());

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals(
                "any,any,bool,true,boolOpt,true,date,2020-01-01,dateTime,2020-01-01T00:00:00.000000001Z,enum,one,float32,1.1,int,1,int32,1,int32Enum,55,intEnum,2,num,1.1,str,test,strOpt,testOptional",
                res.res.headers.xHeaderObj);
        assertEquals(
                "any=any,bool=true,boolOpt=true,date=2020-01-01,dateTime=2020-01-01T00:00:00.000000001Z,enum=one,float32=1.1,int=1,int32=1,int32Enum=55,intEnum=2,num=1.1,str=test,strOpt=testOptional",
                res.res.headers.xHeaderObjExplode);

    }

    @Test
    void testHeaderParamsMap() throws Exception {
        Helpers.recordTest("parameters-header-params-map");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        HashMap<String, String> xHeaderMap = new HashMap<String, String>() {
            {
                put("key1", "value1");
                put("key2", "value2");
            }
        };
        HashMap<String, String> xHeaderMapExplode = new HashMap<String, String>() {
            {
                put("test1", "val1");
                put("test2", "val2");
            }
        };

        HeaderParamsMapResponse res = s.parameters
                .headerParamsMap(xHeaderMap, xHeaderMapExplode);

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals("key1,value1,key2,value2", res.res.headers.xHeaderMap);
        assertEquals("test2=val2,test1=val1", res.res.headers.xHeaderMapExplode);
    }

    @Test
    void testHeaderParamsArray() throws Exception {
        Helpers.recordTest("parameters-header-params-array");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        HeaderParamsArrayResponse res = s.parameters
                .headerParamsArray(new String[]{"test1", "test2"});

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertNotNull(res.res);
        assertEquals("test1,test2", res.res.headers.xHeaderArray);
    }
}
