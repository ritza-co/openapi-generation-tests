// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import XCTest
@testable import OpenAPI

class ParameterTests: XCTestCase {
    var client: Client!

    override func setUp() {
        client = Client(security: .apiKeyAuth("api_key_here"))
    }

    // MARK: - Path Parameters

    func testMixedParametersPrimitives() async throws {
        try recordTest(named: "parameters-mixed-primitives")

        let response = try await client.parameters.mixedParametersPrimitives(
            request: .init(
                headerParam: "headerValue",
                pathParam: "pathValue",
                queryStringParam: "queryValue"
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().url, "http://localhost:35123/anything/mixedParams/path/pathValue?queryStringParam=queryValue", "Mixed path parameters should be serialized correctly")
        XCTAssertEqual(try response.data.res().headers.headerparam, "headerValue")
        XCTAssertEqual(try response.data.res().args.queryStringParam, "queryValue")
    }

    func testSimplePathParameterPrimitives() async throws {
        try recordTest(named: "parameters-simple-path-parameter-primitives")

        let response = try await client.parameters.simplePathParameterPrimitives(
            request: .init(
                boolParam: true,
                intParam: 1,
                numParam: 1.1,
                strParam: "test"
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().url, "http://localhost:35123/anything/pathParams/str/test/bool/true/int/1/num/1.1", "Simple path parameters should be serialized correctly")
    }

    func testSimplePathParameterObjects() async throws {
        try recordTest(named: "parameters-simple-path-parameter-objects")

        let response = try await client.parameters.simplePathParameterObjects(
            request: .init(
                objParam: createSimpleObject(),
                objParamExploded: createSimpleObject()
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().url, "http://localhost:35123/anything/pathParams/obj/any,any,bool,true,boolOpt,true,date,2020-01-01,dateTime,2020-01-01T00:00:00.000Z,enum,one,float32,1.1,int,1,int32,1,int32Enum,55,intEnum,2,num,1.1,str,test,strOpt,testOptional/objExploded/any=any,bool=true,boolOpt=true,date=2020-01-01,dateTime=2020-01-01T00:00:00.000Z,enum=one,float32=1.1,int=1,int32=1,int32Enum=55,intEnum=2,num=1.1,str=test,strOpt=testOptional")
    }

    func testSimplePathParameterArrays() async throws {
        try recordTest(named: "parameters-simple-path-parameter-arrays")

        let response = try await client.parameters.simplePathParameterArrays(
            request: .init(
                arrParam: ["test", "test2"]
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().url, "http://localhost:35123/anything/pathParams/arr/test,test2", "Array path parameters should be serialized correctly")
    }

    func testSimplePathParameterMaps() async throws {
        try recordTest(named: "parameters-simple-path-parameter-maps")

        let response = try await client.parameters.simplePathParameterMaps(
            request: .init(
                mapParam: ["test": "value", "test2": "value2"],
                mapParamExploded: ["test": 1, "test2": 2]
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().url, "http://localhost:35123/anything/pathParams/map/test,value,test2,value2/mapExploded/test=1,test2=2", "Map path parameters should be serialized correctly")
    }

    func testPathParameterJSON() async throws {
        try recordTest(named: "parameters-path-parameter-json")

        let response = try await client.parameters.pathParameterJson(
            request: .init(
                jsonObj: createSimpleObject()
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().url, "http://localhost:35123/anything/pathParams/json/{\"any\":\"any\",\"bool\":true,\"boolOpt\":true,\"date\":\"2020-01-01\",\"dateTime\":\"2020-01-01T00:00:00.000Z\",\"enum\":\"one\",\"float32\":1.1,\"int\":1,\"int32\":1,\"int32Enum\":55,\"intEnum\":2,\"num\":1.1,\"str\":\"test\",\"strOpt\":\"testOptional\"}", "JSON path parameters should be serialized correctly")
    }

    // MARK: - Query Parameters

    func testFormQueryParamsPrimitive() async throws {
        try recordTest(named: "parameters-form-query-params-primitive")

        let response = try await client.parameters.formQueryParamsPrimitive(
            request: .init(
                boolParam: true,
                intParam: 1,
                numParam: 1.1,
                strParam: "test"
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().args.boolParam, "true")
        XCTAssertEqual(try response.data.res().args.intParam, "1")
        XCTAssertEqual(try response.data.res().args.numParam, "1.1")
        XCTAssertEqual(try response.data.res().args.strParam, "test")
    }

    func testFormQueryParamsObject() async throws {
        try recordTest(named: "parameters-form-query-params-object")

        let response = try await client.parameters.formQueryParamsObject(
            request: .init(
                objParamExploded: createSimpleObject(),
                objParam: createSimpleObject()
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().url, "http://localhost:35123/anything/queryParams/form/obj?any=any&bool=true&boolOpt=true&date=2020-01-01&dateTime=2020-01-01T00%3A00%3A00.000Z&enum=one&float32=1.1&int=1&int32=1&int32Enum=55&intEnum=2&num=1.1&objParam=any%2Cany%2Cbool%2Ctrue%2Cdate%2C2020-01-01%2CdateTime%2C2020-01-01T00%3A00%3A00.000Z%2Cenum%2Cone%2Cfloat32%2C1.1%2Cint%2C1%2Cint32%2C1%2Cint32Enum%2C55%2CintEnum%2C2%2Cnum%2C1.1%2Cstr%2Ctest%2CboolOpt%2Ctrue%2CstrOpt%2CtestOptional&str=test&strOpt=testOptional")
        XCTAssertEqual(try response.data.res().args.str, "test")
        XCTAssertEqual(try response.data.res().args.bool, "true")
        XCTAssertEqual(try response.data.res().args.int, "1")
        XCTAssertEqual(try response.data.res().args.num, "1.1")
        XCTAssertEqual(try response.data.res().args.int32, "1")
        XCTAssertEqual(try response.data.res().args.int32Enum, "55")
        XCTAssertEqual(try response.data.res().args.intEnum, "2")
        XCTAssertEqual(try response.data.res().args.float32, "1.1")
        XCTAssertEqual(try response.data.res().args.enum, "one")
        XCTAssertEqual(try response.data.res().args.any, "any")
        XCTAssertEqual(try response.data.res().args.date, "2020-01-01")
        XCTAssertEqual(try response.data.res().args.dateTime, "2020-01-01T00:00:00.000Z")
        XCTAssertEqual(try response.data.res().args.boolOpt, "true")
        XCTAssertEqual(try response.data.res().args.strOpt, "testOptional")
        XCTAssertNil(try response.data.res().args.intOptNull)
        XCTAssertNil(try response.data.res().args.numOptNull)
        XCTAssertEqual(try response.data.res().args.objParam, "any,any,bool,true,date,2020-01-01,dateTime,2020-01-01T00:00:00.000Z,enum,one,float32,1.1,int,1,int32,1,int32Enum,55,intEnum,2,num,1.1,str,test,boolOpt,true,strOpt,testOptional")
    }

    func testFormQueryParamsRefParamObject() async throws {
        try recordTest(named: "parameters-form-query-params-ref-param-object")

        let response = try await client.parameters.formQueryParamsRefParamObject(
            request: .init(
                refObjParam: .init(bool: true, int: 1, num: 1.1, str: "test"),
                refObjParamExploded: .init(bool: true, int: 1, num: 1.1, str: "test")
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().url, "http://localhost:35123/anything/queryParams/form/refParamObject?bool=true&int=1&num=1.1&refObjParam=bool%2Ctrue%2Cint%2C1%2Cnum%2C1.1%2Cstr%2Ctest&str=test")
        XCTAssertEqual(try response.data.res().args.str, "test")
        XCTAssertEqual(try response.data.res().args.bool, "true")
        XCTAssertEqual(try response.data.res().args.int, "1")
        XCTAssertEqual(try response.data.res().args.num, "1.1")
        XCTAssertEqual(try response.data.res().args.refObjParam, "bool,true,int,1,num,1.1,str,test")
    }

    func testFormQueryParamsArray() async throws {
        try recordTest(named: "parameters-form-query-params-array")

        let response = try await client.parameters.formQueryParamsArray(
            request: .init(
                arrParam: ["test", "test2"],
                arrParamExploded: [1, 2]
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().url, "http://localhost:35123/anything/queryParams/form/array?arrParam=test%2Ctest2&arrParamExploded=1&arrParamExploded=2")
        XCTAssertEqual(try response.data.res().args.arrParam, "test,test2")
        XCTAssertEqual(try response.data.res().args.arrParamExploded, ["1", "2"])
    }

    func testPipeDelimitedQueryParamsArray() async throws {
        try recordTest(named: "parameters-pipe-query-params-array")

        let response = try await client.parameters.pipeDelimitedQueryParamsArray(
            request: .init(
                arrParam: ["test", "test2"],
                arrParamExploded: [1, 2],
                mapParam: [
                    "key1": "val1",
                    "key2": "val2"
                ],
                objParam: createSimpleObject()
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().url, "http://localhost:35123/anything/queryParams/pipe/array?arrParam=test|test2&arrParamExploded=1&arrParamExploded=2&mapParam=key1|val1|key2|val2&objParam=any|any|bool|true|date|2020-01-01|dateTime|2020-01-01T00%3A00%3A00.000Z|enum|one|float32|1.1|int|1|int32|1|int32Enum|55|intEnum|2|num|1.1|str|test|boolOpt|true|strOpt|testOptional")
        XCTAssertEqual(try response.data.res().args.arrParam, "test|test2")
        XCTAssertEqual(try response.data.res().args.arrParamExploded, ["1", "2"])
    }

    func testFormQueryParamsMap() async throws {
        try recordTest(named: "parameters-form-query-params-map")

        let response = try await client.parameters.formQueryParamsMap(
            request: .init(
                mapParam: [
                    "test": "value",
                    "test2": "value2"
                ],
                mapParamExploded: [
                    "test": 1,
                    "test2": 2
                ]
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().url, "http://localhost:35123/anything/queryParams/form/map?mapParam=test%2Cvalue%2Ctest2%2Cvalue2&test=1&test2=2")
        XCTAssertEqual(try response.data.res().args["test"], "1")
        XCTAssertEqual(try response.data.res().args["test2"], "2")
        XCTAssertEqual(try response.data.res().args["mapParam"], "test,value,test2,value2")
    }

    func testDeepObjectQueryParamsObject() async throws {
        try recordTest(named: "parameters-deep-object-query-params-object")

        let response = try await client.parameters.deepObjectQueryParamsObject(
            request: .init(
                objParam: createSimpleObject(),
                objArrParam: .init(
                    arr: ["test", "test2"]
                )
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().url, "http://localhost:35123/anything/queryParams/deepObject/obj?objArrParam[arr]=test&objArrParam[arr]=test2&objParam[any]=any&objParam[bool]=true&objParam[boolOpt]=true&objParam[date]=2020-01-01&objParam[dateTime]=2020-01-01T00%3A00%3A00.000Z&objParam[enum]=one&objParam[float32]=1.1&objParam[int]=1&objParam[int32]=1&objParam[int32Enum]=55&objParam[intEnum]=2&objParam[num]=1.1&objParam[str]=test&objParam[strOpt]=testOptional")
        XCTAssertEqual(try response.data.res().args.objArrParamArr, ["test", "test2"])
        XCTAssertEqual(try response.data.res().args.objParamAny, "any")
        XCTAssertEqual(try response.data.res().args.objParamBoolOpt, "true")
        XCTAssertEqual(try response.data.res().args.objParamBool, "true")
        XCTAssertEqual(try response.data.res().args.objParamDateTime, "2020-01-01T00:00:00.000Z")
        XCTAssertEqual(try response.data.res().args.objParamDate, "2020-01-01")
        XCTAssertEqual(try response.data.res().args.objParamEnum, "one")
        XCTAssertEqual(try response.data.res().args.objParamFloat32, "1.1")
        XCTAssertEqual(try response.data.res().args.objParamInt, "1")
        XCTAssertEqual(try response.data.res().args.objParamInt32, "1")
        XCTAssertEqual(try response.data.res().args.objParamInt32Enum, "55")
        XCTAssertEqual(try response.data.res().args.objParamIntEnum, "2")
        XCTAssertEqual(try response.data.res().args.objParamNum, "1.1")
        XCTAssertEqual(try response.data.res().args.objParamStrOpt, "testOptional")
        XCTAssertEqual(try response.data.res().args.objParamStr, "test")
    }

    func testDeepObjectQueryParamsMap() async throws {
        try recordTest(named: "parameters-deep-object-query-params-map")

        let response = try await client.parameters.deepObjectQueryParamsMap(
            request: .init(
                mapParam: [
                    "test":  "value",
                    "test2": "value2"
                ],
                mapArrParam: [
                    "test":  ["test", "test2"],
                    "test2": ["test3", "test4"]
                ]
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().url, "http://localhost:35123/anything/queryParams/deepObject/map?mapArrParam[test]=test&mapArrParam[test]=test2&mapArrParam[test2]=test3&mapArrParam[test2]=test4&mapParam[test]=value&mapParam[test2]=value2")
        XCTAssertEqual(try response.data.res().args["mapArrParam[test]"]?.array(), ["test", "test2"])
        XCTAssertEqual(try response.data.res().args["mapArrParam[test2]"]?.array(), ["test3", "test4"])
        XCTAssertEqual(try response.data.res().args["mapParam[test]"]?.string(), "value")
        XCTAssertEqual(try response.data.res().args["mapParam[test2]"]?.string(), "value2")
    }

    func testJSONQueryParamsObject() async throws {
        try recordTest(named: "parameters-json-query-params-object")

        let deepObject = try createDeepObject()
        let simpleObject = createSimpleObject()
        let response = try await client.parameters.jsonQueryParamsObject(
            request: .init(
                deepObjParam: deepObject,
                simpleObjParam: simpleObject
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().url, "http://localhost:35123/anything/queryParams/json/obj?deepObjParam={\"any\"%3A{\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}%2C\"arr\"%3A[{\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}%2C{\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}]%2C\"bool\"%3Atrue%2C\"int\"%3A1%2C\"map\"%3A{\"key\"%3A{\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}}%2C\"num\"%3A1.1%2C\"obj\"%3A{\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}%2C\"str\"%3A\"test\"}&simpleObjParam={\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}")

        let encodedSimpleObject = (try? jsonEncoder().encode(simpleObject)).flatMap { String(data: $0, encoding: .utf8) }
        XCTAssertEqual(try response.data.res().args.simpleObjParam, encodedSimpleObject)
        let encodedDeepObject = (try? jsonEncoder().encode(deepObject)).flatMap { String(data: $0, encoding: .utf8) }
        XCTAssertEqual(try response.data.res().args.deepObjParam, encodedDeepObject)
    }

    func testMixedQueryParams() async throws {
        try recordTest(named: "parameters-mixed-query-params")

        let simpleObject = createSimpleObject()
        let response = try await client.parameters.mixedQueryParams(
            request: .init(
                deepObjectParam: simpleObject,
                formParam: simpleObject,
                jsonParam: simpleObject
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().url, "http://localhost:35123/anything/queryParams/mixed?any=any&bool=true&boolOpt=true&date=2020-01-01&dateTime=2020-01-01T00%3A00%3A00.000Z&deepObjectParam[any]=any&deepObjectParam[bool]=true&deepObjectParam[boolOpt]=true&deepObjectParam[date]=2020-01-01&deepObjectParam[dateTime]=2020-01-01T00%3A00%3A00.000Z&deepObjectParam[enum]=one&deepObjectParam[float32]=1.1&deepObjectParam[int]=1&deepObjectParam[int32]=1&deepObjectParam[int32Enum]=55&deepObjectParam[intEnum]=2&deepObjectParam[num]=1.1&deepObjectParam[str]=test&deepObjectParam[strOpt]=testOptional&enum=one&float32=1.1&int=1&int32=1&int32Enum=55&intEnum=2&jsonParam={\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}&num=1.1&str=test&strOpt=testOptional")

        let encodedSimpleObject = (try? jsonEncoder().encode(simpleObject)).flatMap { String(data: $0, encoding: .utf8) }
        XCTAssertEqual(try response.data.res().args, [
            "any": "any",
            "bool": "true",
            "boolOpt": "true",
            "date": "2020-01-01",
            "dateTime": "2020-01-01T00:00:00.000Z",
            "deepObjectParam[any]": "any",
            "deepObjectParam[boolOpt]": "true",
            "deepObjectParam[bool]": "true",
            "deepObjectParam[dateTime]": "2020-01-01T00:00:00.000Z",
            "deepObjectParam[date]": "2020-01-01",
            "deepObjectParam[enum]": "one",
            "deepObjectParam[float32]": "1.1",
            "deepObjectParam[int32]": "1",
            "deepObjectParam[int]": "1",
            "deepObjectParam[int32Enum]": "55",
            "deepObjectParam[intEnum]": "2",
            "deepObjectParam[num]": "1.1",
            "deepObjectParam[strOpt]": "testOptional",
            "deepObjectParam[str]": "test",
            "enum": "one",
            "float32": "1.1",
            "int": "1",
            "int32": "1",
            "int32Enum": "55",
            "intEnum": "2",
            "jsonParam": encodedSimpleObject ?? "",
            "num": "1.1",
            "str": "test",
            "strOpt": "testOptional"
        ])
    }

    // MARK: - Header Parameters

    func testHeaderParamsPrimitive() async throws {
        try recordTest(named: "parameters-header-params-primitive")

        let response = try await client.parameters.headerParamsPrimitive(
            request: .init(
                xHeaderBoolean: true,
                xHeaderInteger: 1,
                xHeaderNumber: 1.1,
                xHeaderString: "test"
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().headers.xHeaderBoolean, "true")
        XCTAssertEqual(try response.data.res().headers.xHeaderInteger, "1")
        XCTAssertEqual(try response.data.res().headers.xHeaderNumber, "1.1")
        XCTAssertEqual(try response.data.res().headers.xHeaderString, "test")
    }

    func testHeaderParamsObject() async throws {
        try recordTest(named: "parameters-header-params-object")

        let response = try await client.parameters.headerParamsObject(
            request: .init(
                xHeaderObj: createSimpleObject(),
                xHeaderObjExplode: createSimpleObject()
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().headers.xHeaderObj, "any,any,bool,true,date,2020-01-01,dateTime,2020-01-01T00:00:00.000Z,enum,one,float32,1.1,int,1,int32,1,int32Enum,55,intEnum,2,num,1.1,str,test,boolOpt,true,strOpt,testOptional")
        XCTAssertEqual(try response.data.res().headers.xHeaderObjExplode, "any=any,bool=true,date=2020-01-01,dateTime=2020-01-01T00:00:00.000Z,enum=one,float32=1.1,int=1,int32=1,int32Enum=55,intEnum=2,num=1.1,str=test,boolOpt=true,strOpt=testOptional")
    }

    func testHeaderParamsMap() async throws {
        try recordTest(named: "parameters-header-params-map")

        let response = try await client.parameters.headerParamsMap(
            request: .init(
                xHeaderMap: [
                    "key1": "value1",
                    "key2": "value2"
                ],
                xHeaderMapExplode: [
                    "test1": "val1",
                    "test2": "val2"
                ]
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().headers.xHeaderMap, "key1,value1,key2,value2")
        XCTAssertEqual(try response.data.res().headers.xHeaderMapExplode, "test1=val1,test2=val2")
    }

    func testHeaderParamsArray() async throws {
        try recordTest(named: "parameters-header-params-array")

        let response = try await client.parameters.headerParamsArray(
            request: .init(
                xHeaderArray: ["test1", "test2"]
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertFalse(response.data.isEmpty, "Response object should not be nil")
        XCTAssertEqual(try response.data.res().headers.xHeaderArray, "test1,test2")
    }
}