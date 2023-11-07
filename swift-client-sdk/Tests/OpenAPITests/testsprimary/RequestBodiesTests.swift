// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

import XCTest
@testable import OpenAPI

class RequestBodiesTests: XCTestCase {
    var client: Client!

    override func setUp() {
        client = Client(security: .apiKeyAuth("api_key_here"))
    }

    func testRequestBodyPostApplicationJSONSimple() async throws {
        try recordTest(named: "request-bodies-post-application-json-simple")

        let object = createSimpleObject()
        let response = try await client.requestBodies.requestBodyPostApplicationJsonSimple(
            request: object
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().json, object, "Serialized request body and response objects should be equal")
    }

    func testRequestBodyPostApplicationJSONArray() async throws {
        try recordTest(named: "request-bodies-post-application-json-array")

        let object = createSimpleObject()
        let response = try await client.requestBodies.requestBodyPostApplicationJsonArray(
            request: [object],
            server: nil
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res(), [object], "Serialized request body and response objects should be equal")
    }

    func testRequestBodyPostApplicationJSONArrayOfArray() async throws {
        try recordTest(named: "request-bodies-post-application-json-array-of-array")

        let object = createSimpleObject()
        let response = try await client.requestBodies.requestBodyPostApplicationJsonArrayOfArray(
            request: [[object], [object]],
            server: nil
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res()[safelyIndexed: 0]?[safelyIndexed: 0], object)
        XCTAssertEqual(try response.data.res()[safelyIndexed: 1]?[safelyIndexed: 0], object)
    }

    func testRequestBodyPostApplicationJSONMap() async throws {
        try recordTest(named: "request-bodies-post-application-json-map")

        let object = createSimpleObject()
        let response = try await client.requestBodies.requestBodyPostApplicationJsonMap(
            request: [
                "mapElem1": object,
                "mapElem2": object
            ],
            server: nil
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res()["mapElem1"], object)
        XCTAssertEqual(try response.data.res()["mapElem2"], object)
    }

    func testRequestBodyPostApplicationJSONMapOfMap() async throws {
        try recordTest(named: "request-bodies-post-application-json-map-of-map")

        let object = createSimpleObject()
        let response = try await client.requestBodies.requestBodyPostApplicationJsonMapOfMap(
            request: [
                "mapElem1": [
                    "subMapElem1": object,
                    "subMapElem2": object,
                ],
                "mapElem2": [
                    "subMapElem1": object,
                    "subMapElem2": object,
                ]
            ],
            server: nil
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res()["mapElem1"]?["subMapElem1"], object)
        XCTAssertEqual(try response.data.res()["mapElem1"]?["subMapElem2"], object)
        XCTAssertEqual(try response.data.res()["mapElem2"]?["subMapElem1"], object)
        XCTAssertEqual(try response.data.res()["mapElem2"]?["subMapElem2"], object)
    }

    func testRequestBodyPostApplicationJSONMapOfArray() async throws {
        try recordTest(named: "request-bodies-post-application-json-map-of-array")

        let object = createSimpleObject()
        let response = try await client.requestBodies.requestBodyPostApplicationJsonMapOfArray(
            request: [
                "mapElem1": [object, object],
                "mapElem2": [object, object]
            ],
            server: nil
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res()["mapElem1"]?[safelyIndexed: 0], object)
        XCTAssertEqual(try response.data.res()["mapElem1"]?[safelyIndexed: 1], object)
        XCTAssertEqual(try response.data.res()["mapElem2"]?[safelyIndexed: 0], object)
        XCTAssertEqual(try response.data.res()["mapElem2"]?[safelyIndexed: 1], object)
    }

    func testRequestBodyPostApplicationJSONArrayOfMap() async throws {
        try recordTest(named: "request-bodies-post-application-json-array-of-map")

        let object = createSimpleObject()
        let response = try await client.requestBodies.requestBodyPostApplicationJsonArrayOfMap(
            request: [
                ["mapElem1": object, "mapElem2": object],
                ["mapElem1": object, "mapElem2": object],
            ],
            server: nil
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res()[safelyIndexed: 0]?["mapElem1"], object)
        XCTAssertEqual(try response.data.res()[safelyIndexed: 0]?["mapElem2"], object)
        XCTAssertEqual(try response.data.res()[safelyIndexed: 1]?["mapElem1"], object)
        XCTAssertEqual(try response.data.res()[safelyIndexed: 1]?["mapElem2"], object)
    }

    func testRequestBodyPostApplicationJSONMapOfPrimitive() async throws {
        try recordTest(named: "request-bodies-post-application-json-map-of-primitive")

        let response = try await client.requestBodies.requestBodyPostApplicationJsonMapOfPrimitive(
            request: [
                "mapElem1": "hello",
                "mapElem2": "world"
            ],
            server: nil
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res()["mapElem1"], "hello")
        XCTAssertEqual(try response.data.res()["mapElem2"], "world")
    }

    func testRequestBodyPostApplicationJSONArrayOfPrimitive() async throws {
        try recordTest(named: "request-bodies-post-application-json-array-of-primitive")

        let response = try await client.requestBodies.requestBodyPostApplicationJsonArrayOfPrimitive(
            request: ["hello", "world"],
            server: nil
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res(), ["hello", "world"])
    }

    func testRequestBodyPostApplicationJSONMapOfMapOfPrimitive() async throws {
        try recordTest(named: "request-bodies-post-application-json-map-of-map-of-primitive")

        let response = try await client.requestBodies.requestBodyPostApplicationJsonMapOfMapOfPrimitive(
            request: [
                "mapElem1": [
                    "subMapElem1": "foo",
                    "subMapElem2": "bar",
                ],
                "mapElem2": [
                    "subMapElem1": "buzz",
                    "subMapElem2": "bazz",
                ],
            ],
            server: nil
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res()["mapElem1"]?["subMapElem1"], "foo")
        XCTAssertEqual(try response.data.res()["mapElem1"]?["subMapElem2"], "bar")
        XCTAssertEqual(try response.data.res()["mapElem2"]?["subMapElem1"], "buzz")
        XCTAssertEqual(try response.data.res()["mapElem2"]?["subMapElem2"], "bazz")
    }

    func testRequestBodyPostApplicationJSONArrayOfArrayOfPrimitive() async throws {
        try recordTest(named: "request-bodies-post-application-json-array-of-array-of-primitive")

        let response = try await client.requestBodies.requestBodyPostApplicationJsonArrayOfArrayOfPrimitive(
            request: [
                ["foo", "bar"],
                ["buzz", "bazz"]
            ],
            server: nil
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res(), [["foo", "bar"],["buzz", "bazz"]])
    }

    func testRequestBodyPostApplicationJSONArrayObject() async throws {
        try recordTest(named: "request-bodies-post-application-json-array-object")

        let object = createSimpleObject()
        let response = try await client.requestBodies.requestBodyPostApplicationJsonArrayObj(
            request: [object, object]
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.arrObjValue().json?.count, 2, "Response array should have 2 elements")
        XCTAssertEqual(try response.data.arrObjValue().json?[safelyIndexed: 0], object)
        XCTAssertEqual(try response.data.arrObjValue().json?[safelyIndexed: 1], object)
    }

    func testRequestBodyPostApplicationJSONMapObject() async throws {
        try recordTest(named: "request-bodies-post-application-json-map-object")

        let object = createSimpleObject()
        let response = try await client.requestBodies.requestBodyPostApplicationJsonMapObj(
            request: [
                "mapElem1": object,
                "mapElem2": object,
            ]
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.mapObjValue().json?.count, 2, "Response array should have 2 elements")
        XCTAssertEqual(try response.data.mapObjValue().json?["mapElem1"], object)
        XCTAssertEqual(try response.data.mapObjValue().json?["mapElem2"], object)
    }

    func testRequestBodyPostApplicationJSONDeep() async throws {
        try recordTest(named: "request-bodies-post-application-json-deep")

        let object = try createDeepObject()
        let response = try await client.requestBodies.requestBodyPostApplicationJsonDeep(
            request: object
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().json?.any, object.any)
        XCTAssertEqual(try response.data.res().json?.arr, object.arr)
        XCTAssertEqual(try response.data.res().json?.bool, object.bool)
        XCTAssertEqual(try response.data.res().json?.int, object.int)
        XCTAssertEqual(try response.data.res().json?.map, object.map)
        XCTAssertEqual(try response.data.res().json?.num, object.num)
        XCTAssertEqual(try response.data.res().json?.obj, object.obj)
        XCTAssertEqual(try response.data.res().json?.str, object.str)
        XCTAssertEqual(try response.data.res().json?.type, object.type)
    }

    func testRequestBodyPostApplicationJSONMultipleJSONFiltered() async throws {
        try recordTest(named: "request-bodies-post-application-json-multiple-json-filtered")

        let object = createSimpleObject()
        let response = try await client.requestBodies.requestBodyPostApplicationJsonMultipleJsonFiltered(
            request: object
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().json, object)
    }

    func testRequestBodyPostMultipleContentTypesComponentFiltered() async throws {
        try recordTest(named: "request-bodies-post-multiple-content-types-component-filtered")

        let object = createSimpleObject()
        let response = try await client.requestBodies.requestBodyPostMultipleContentTypesComponentFiltered(
            request: object
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().json, object)
    }

    func testRequestBodyPostMultipleContentTypesInlineFiltered() async throws {
        try recordTest(named: "request-bodies-post-multiple-content-types-inline-filtered")

        let response = try await client.requestBodies.requestBodyPostMultipleContentTypesInlineFiltered(
            request: .init(
                bool: true,
                num: 1.1,
                str: "test"
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().json?["bool"]?.as(type: Bool.self), true)
        XCTAssertEqual(try response.data.res().json?["num"]?.as(type: Double.self), 1.1)
        XCTAssertEqual(try response.data.res().json?["str"]?.as(type: String.self), "test")
    }

    func testRequestBodyPostMultipleContentTypesSplitJSON() async throws {
        try recordTest(named: "request-bodies-post-multiple-content-types-split-json")

        let response = try await client.requestBodies.requestBodyPostMultipleContentTypesSplitJson(
            request: .init(
                bool: true,
                num: 1.1,
                str: "test"
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().json?["bool"]?.as(type: Bool.self), true)
        XCTAssertEqual(try response.data.res().json?["num"]?.as(type: Double.self), 1.1)
        XCTAssertEqual(try response.data.res().json?["str"]?.as(type: String.self), "test")
    }

    func testRequestBodyPostMultipleContentTypesSplitMultipart() async throws {
        try recordTest(named: "request-bodies-post-multiple-content-types-split-multipart")

        let response = try await client.requestBodies.requestBodyPostMultipleContentTypesSplitMultipart(
            request: .init(
                bool2: true,
                num2: 1.1,
                str2: "test"
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().form?["bool2"]?.as(type: String.self), "true")
        XCTAssertEqual(try response.data.res().form?["num2"]?.as(type: String.self), "1.1")
        XCTAssertEqual(try response.data.res().form?["str2"]?.as(type: String.self), "test")
    }

    func testRequestBodyPostMultipleContentTypesSplitForm() async throws {
        try recordTest(named: "request-bodies-post-multiple-content-types-split-form")

        let response = try await client.requestBodies.requestBodyPostMultipleContentTypesSplitForm(
            request: .init(
                bool3: true,
                num3: 1.1,
                str3: "test"
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().form?["bool3"]?.as(type: String.self), "true")
        XCTAssertEqual(try response.data.res().form?["num3"]?.as(type: String.self), "1.1")
        XCTAssertEqual(try response.data.res().form?["str3"]?.as(type: String.self), "test")
    }

    func testRequestBodyPostMultipleContentTypesSplitJSONParam() async throws {
        try recordTest(named: "request-bodies-post-multiple-content-types-split-json-with-param")

        let response = try await client.requestBodies.requestBodyPostMultipleContentTypesSplitParamJson(
            request: .init(
                paramStr: "test param",
                requestBody: .init(
                    bool: true,
                    num: 1.1,
                    str: "test body"
                )
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().json?["bool"]?.as(type: Bool.self), true)
        XCTAssertEqual(try response.data.res().json?["num"]?.as(type: Double.self), 1.1)
        XCTAssertEqual(try response.data.res().json?["str"]?.as(type: String.self), "test body")
        XCTAssertEqual(try response.data.res().args, ["paramStr": "test param"])
    }

    func testRequestBodyPostMultipleContentTypesSplitMultipartParam() async throws {
        try recordTest(named: "request-bodies-post-multiple-content-types-split-multipart-with-param")

        let response = try await client.requestBodies.requestBodyPostMultipleContentTypesSplitParamMultipart(
            request: .init(
                paramStr: "test param",
                requestBody: .init(
                    bool2: true,
                    num2: 1.1,
                    str2: "test body"
                )
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().form?["bool2"]?.as(type: String.self), "true")
        XCTAssertEqual(try response.data.res().form?["num2"]?.as(type: String.self), "1.1")
        XCTAssertEqual(try response.data.res().form?["str2"]?.as(type: String.self), "test body")
        XCTAssertEqual(try response.data.res().args, ["paramStr": "test param"])
    }

    func testRequestBodyPostMultipleContentTypesSplitFormParam() async throws {
        try recordTest(named: "request-bodies-post-multiple-content-types-split-form-with-param")

        let response = try await client.requestBodies.requestBodyPostMultipleContentTypesSplitParamForm(
            request: .init(
                paramStr: "test param",
                requestBody: .init(
                    bool3: true,
                    num3: 1.1,
                    str3: "test body"
                )
            )
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().form?["bool3"]?.as(type: String.self), "true")
        XCTAssertEqual(try response.data.res().form?["num3"]?.as(type: String.self), "1.1")
        XCTAssertEqual(try response.data.res().form?["str3"]?.as(type: String.self), "test body")
        XCTAssertEqual(try response.data.res().args, ["paramStr": "test param"])
    }

    func testRequestBodyPutMultipartSimple() async throws {
        try recordTest(named: "request-bodies-put-multipart-simple")

        let response = try await client.requestBodies.requestBodyPutMultipartSimple(
            request: createSimpleObject()
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().form.any, "any")
        XCTAssertEqual(try response.data.res().form.boolOpt, "true")
        XCTAssertEqual(try response.data.res().form.bool, "true")
        XCTAssertEqual(try response.data.res().form.dateTime, "2020-01-01T00:00:00.000Z")
        XCTAssertEqual(try response.data.res().form.date, "2020-01-01")
        XCTAssertEqual(try response.data.res().form.enum, "one")
        XCTAssertEqual(try response.data.res().form.float32, "1.1")
        XCTAssertEqual(try response.data.res().form.int, "1")
        XCTAssertEqual(try response.data.res().form.int32, "1")
        XCTAssertEqual(try response.data.res().form.num, "1.1")
        XCTAssertEqual(try response.data.res().form.strOpt, "testOptional")
        XCTAssertEqual(try response.data.res().form.str, "test")
    }

    func testRequestBodyPutMultipartDeep() async throws {
        try recordTest(named: "request-bodies-put-multipart-deep")

        let object = try createDeepObject()
        let response = try await client.requestBodies.requestBodyPutMultipartDeep(
            request: object
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().form.arr, String(data: try jsonEncoder().encode(object.arr), encoding: .utf8))
        XCTAssertEqual(try response.data.res().form.bool, "true")
        XCTAssertEqual(try response.data.res().form.int, "1")
        XCTAssertEqual(try response.data.res().form.map, String(data: try jsonEncoder().encode(object.map), encoding: .utf8))
        XCTAssertEqual(try response.data.res().form.num, "1.1")
        XCTAssertEqual(try response.data.res().form.obj, String(data: try jsonEncoder().encode(object.obj), encoding: .utf8))
        XCTAssertEqual(try response.data.res().form.str, "test")
    }

    func testRequestBodyPutMultipartFile() async throws {
        try recordTest(named: "request-bodies-put-multipart-file")

        let fileContents = try testUploadJSONContents()
        let data = fileContents.data(using: .ascii)
        XCTAssertNotNil(data, "Data for request should not be nil")

        if let data {
            let response = try await client.requestBodies.requestBodyPutMultipartFile(
                request: .init(
                    file: .init(
                        content: data,
                        fileName: fileContents
                    )
                )
            )
            XCTAssertEqual(response.statusCode, 200, "Request should succeed")
            XCTAssertEqual(try response.data.res().files["file"], fileContents)
        }
    }

    func testRequestBodyPostFormSimple() async throws {
        try recordTest(named: "request-bodies-post-form-simple")

        let response = try await client.requestBodies.requestBodyPostFormSimple(
            request: createSimpleObject()
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().form.any, "any")
        XCTAssertEqual(try response.data.res().form.bool, "true")
        XCTAssertEqual(try response.data.res().form.boolOpt, "true")
        XCTAssertEqual(try response.data.res().form.date, "2020-01-01")
        XCTAssertEqual(try response.data.res().form.dateTime, "2020-01-01T00:00:00.000Z")
        XCTAssertEqual(try response.data.res().form.enum, "one")
        XCTAssertEqual(try response.data.res().form.float32, "1.1")
        XCTAssertEqual(try response.data.res().form.int, "1")
        XCTAssertEqual(try response.data.res().form.int32, "1")
        XCTAssertEqual(try response.data.res().form.num, "1.1")
        XCTAssertEqual(try response.data.res().form.str, "test")
        XCTAssertEqual(try response.data.res().form.strOpt, "testOptional")
    }

    func testRequestBodyPostFormDeep() async throws {
        try recordTest(named: "request-bodies-post-form-deep")

        let object = try createDeepObject()
        let response = try await client.requestBodies.requestBodyPostFormDeep(
            request: object
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().form.arr, String(data: try jsonEncoder().encode(object.arr), encoding: .utf8))
        XCTAssertEqual(try response.data.res().form.bool, "true")
        XCTAssertEqual(try response.data.res().form.int, "1")
        XCTAssertEqual(try response.data.res().form.map, String(data: try jsonEncoder().encode(object.map), encoding: .utf8))
        XCTAssertEqual(try response.data.res().form.num, "1.1")
        XCTAssertEqual(try response.data.res().form.obj, String(data: try jsonEncoder().encode(object.obj), encoding: .utf8))
        XCTAssertEqual(try response.data.res().form.str, "test")
    }

    func testRequestBodyPostFormMapPrimitive() async throws {
        try recordTest(named: "request-bodies-post-form-map-primitive")

        let dictionary = [
            "key1": "value1",
            "key2": "value2",
            "key3": "value3",
        ]
        let response = try await client.requestBodies.requestBodyPostFormMapPrimitive(
            request: dictionary
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().form, dictionary)
    }

    func testRequestBodyPutString() async throws {
        try recordTest(named: "request-bodies-put-string")

        let string = "Hello World"
        let response = try await client.requestBodies.requestBodyPutString(
            request: string
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().data, string)
    }

    func testRequestBodyPutBytes() async throws {
        try recordTest(named: "request-bodies-put-bytes")

        let fileContents = try testUploadJSONContents()
        let data = fileContents.data(using: .ascii)
        XCTAssertNotNil(data, "Data for request should not be nil")

        if let data {
            let response = try await client.requestBodies.requestBodyPutBytes(
                request: data
            )
            XCTAssertEqual(response.statusCode, 200, "Request should succeed")
            XCTAssertEqual(try response.data.res().data, fileContents)
        }
    }

    func testRequestBodyPutStringWithParams() async throws {
        try recordTest(named: "request-bodies-put-string-with-params")

        let response = try await client.requestBodies.requestBodyPutStringWithParams(
            request: .init(queryStringParam: "test param", requestBody: "Hello world")
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.res().data, "Hello world")
        XCTAssertEqual(try response.data.res().args.queryStringParam, "test param")
    }

    func testRequestBodyPutBytesWithParams() async throws {
        try recordTest(named: "request-bodies-put-bytes-with-params")

        let fileContents = try testUploadJSONContents()
        let data = fileContents.data(using: .ascii)
        XCTAssertNotNil(data, "Data for request should not be nil")

        if let data {
            let response = try await client.requestBodies.requestBodyPutBytesWithParams(
                request: .init(queryStringParam: "test param", requestBody: data)
            )
            XCTAssertEqual(response.statusCode, 200, "Request should succeed")
            XCTAssertEqual(try response.data.res().data, fileContents)
            XCTAssertEqual(try response.data.res().args.queryStringParam, "test param")
        }
    }

    func testRequestBodyEmptyObject() async throws {
        try recordTest(named: "request-bodies-post-empty-object")

        let response = try await client.requestBodies.requestBodyPostEmptyObject(
            request: .init(empty: nil, emptyWithEmptyProperties: nil)
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
    }

    func testRequestBodyReadOnlyInput() async throws {
        try recordTest(named: "request-bodies-read-only-input")

        let response = try await client.requestBodies.requestBodyReadOnlyInput(
            request: .init(),
            server: nil
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.readOnlyObject().bool, true)
        XCTAssertEqual(try response.data.readOnlyObject().num, 1.0)
        XCTAssertEqual(try response.data.readOnlyObject().string, "hello")
    }

    func testRequestBodyWriteOnlyOutput() async throws {
        try recordTest(named: "request-bodies-write-only-output")

        let response = try await client.requestBodies.requestBodyWriteOnlyOutput(
            request: .init(bool: true, num: 1.0, string: "hello"),
            server: nil
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
    }

    func testRequestBodyWriteOnly() async throws {
        try recordTest(named: "request-bodies-write-only")

        let response = try await client.requestBodies.requestBodyWriteOnly(
            request: .init(bool: true, num: 1.0, string: "hello"),
            server: nil
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.readOnlyObject().bool, true)
        XCTAssertEqual(try response.data.readOnlyObject().num, 1.0)
        XCTAssertEqual(try response.data.readOnlyObject().string, "hello")
    }

    func testRequestBodyReadAndWrite() async throws {
        try recordTest(named: "request-bodies-read-and-write")

        let response = try await client.requestBodies.requestBodyReadAndWrite(
            request: .init(num1: 1, num2: 2, num3: 4),
            server: nil
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.readWriteObject().num3, 4)
        XCTAssertEqual(try response.data.readWriteObject().sum, 7)
    }
}
