// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

class _ResponseBodiesAPI: ResponseBodiesAPI {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    public func responseBodyAdditionalPropertiesComplexNumbersPost(request: [String: String]) async throws -> Response<Operations.ResponseBodyAdditionalPropertiesComplexNumbersPostResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureResponseBodyAdditionalPropertiesComplexNumbersPostRequest(with: configuration, request: request)
            },
            handleResponse: handleResponseBodyAdditionalPropertiesComplexNumbersPostResponse
        )
    }
    
    public func responseBodyAdditionalPropertiesDatePost(request: [String: Date]) async throws -> Response<Operations.ResponseBodyAdditionalPropertiesDatePostResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureResponseBodyAdditionalPropertiesDatePostRequest(with: configuration, request: request)
            },
            handleResponse: handleResponseBodyAdditionalPropertiesDatePostResponse
        )
    }
    
    public func responseBodyAdditionalPropertiesObjectPost(request: [String: Shared.SimpleObject]) async throws -> Response<Operations.ResponseBodyAdditionalPropertiesObjectPostResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureResponseBodyAdditionalPropertiesObjectPostRequest(with: configuration, request: request)
            },
            handleResponse: handleResponseBodyAdditionalPropertiesObjectPostResponse
        )
    }
    
    public func responseBodyAdditionalPropertiesPost(request: [String: String]) async throws -> Response<Operations.ResponseBodyAdditionalPropertiesPostResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureResponseBodyAdditionalPropertiesPostRequest(with: configuration, request: request)
            },
            handleResponse: handleResponseBodyAdditionalPropertiesPostResponse
        )
    }
    
    public func responseBodyBytesGet() async throws -> Response<Operations.ResponseBodyBytesGetResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureResponseBodyBytesGetRequest(with: configuration)
            },
            handleResponse: handleResponseBodyBytesGetResponse
        )
    }
    
    public func responseBodyEmptyWithHeaders(request: Operations.ResponseBodyEmptyWithHeadersRequest) async throws -> ResponseWithHeaders<Operations.ResponseBodyEmptyWithHeadersResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureResponseBodyEmptyWithHeadersRequest(with: configuration, request: request)
            },
            handleResponse: handleResponseBodyEmptyWithHeadersResponse
        )
    }
    
    public func responseBodyOptionalGet(server: ResponseBodiesServers.ResponseBodyOptionalGet?) async throws -> Response<Operations.ResponseBodyOptionalGetResponse> {
        return try await client.makeRequest(
            with: try server?.server() ?? ResponseBodiesServers.ResponseBodyOptionalGet.default(),
            configureRequest: { configuration in
                try configureResponseBodyOptionalGetRequest(with: configuration)
            },
            handleResponse: handleResponseBodyOptionalGetResponse
        )
    }
    
    public func responseBodyReadOnly(server: ResponseBodiesServers.ResponseBodyReadOnly?) async throws -> Response<Operations.ResponseBodyReadOnlyResponse> {
        return try await client.makeRequest(
            with: try server?.server() ?? ResponseBodiesServers.ResponseBodyReadOnly.default(),
            configureRequest: { configuration in
                try configureResponseBodyReadOnlyRequest(with: configuration)
            },
            handleResponse: handleResponseBodyReadOnlyResponse
        )
    }
    
    public func responseBodyStringGet() async throws -> Response<Operations.ResponseBodyStringGetResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureResponseBodyStringGetRequest(with: configuration)
            },
            handleResponse: handleResponseBodyStringGetResponse
        )
    }
    
    public func responseBodyXmlGet() async throws -> Response<Operations.ResponseBodyXmlGetResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureResponseBodyXmlGetRequest(with: configuration)
            },
            handleResponse: handleResponseBodyXmlGetResponse
        )
    }
    
    public func responseBodyZeroValueComplexTypePtrsPost(request: Shared.ObjWithZeroValueComplexTypePtrs) async throws -> Response<Operations.ResponseBodyZeroValueComplexTypePtrsPostResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureResponseBodyZeroValueComplexTypePtrsPostRequest(with: configuration, request: request)
            },
            handleResponse: handleResponseBodyZeroValueComplexTypePtrsPostResponse
        )
    }

}

// MARK: - Request Configuration

private func configureResponseBodyAdditionalPropertiesComplexNumbersPostRequest(with configuration: URLRequestConfiguration, request: [String: String]) throws {
    configuration.path = "/anything/responseBodies/additionalPropertiesComplexNumbers"
    configuration.method = .post
    configuration.contentType = "application/json"
    configuration.body = try jsonEncoder().encode(request)
    if configuration.body == nil {
        throw SerializationError.missingRequiredRequestBody
    }
    configuration.telemetryHeader = .speakeasyUserAgent
}

private func configureResponseBodyAdditionalPropertiesDatePostRequest(with configuration: URLRequestConfiguration, request: [String: Date]) throws {
    configuration.path = "/anything/responseBodies/additionalPropertiesDate"
    configuration.method = .post
    configuration.contentType = "application/json"
    configuration.body = try jsonEncoder().encode(request)
    if configuration.body == nil {
        throw SerializationError.missingRequiredRequestBody
    }
    configuration.telemetryHeader = .speakeasyUserAgent
}

private func configureResponseBodyAdditionalPropertiesObjectPostRequest(with configuration: URLRequestConfiguration, request: [String: Shared.SimpleObject]) throws {
    configuration.path = "/anything/responseBodies/additionalPropertiesObject"
    configuration.method = .post
    configuration.contentType = "application/json"
    configuration.body = try jsonEncoder().encode(request)
    if configuration.body == nil {
        throw SerializationError.missingRequiredRequestBody
    }
    configuration.telemetryHeader = .speakeasyUserAgent
}

private func configureResponseBodyAdditionalPropertiesPostRequest(with configuration: URLRequestConfiguration, request: [String: String]) throws {
    configuration.path = "/anything/responseBodies/additionalProperties"
    configuration.method = .post
    configuration.contentType = "application/json"
    configuration.body = try jsonEncoder().encode(request)
    if configuration.body == nil {
        throw SerializationError.missingRequiredRequestBody
    }
    configuration.telemetryHeader = .speakeasyUserAgent
}

private func configureResponseBodyBytesGetRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/bytes/100"
    configuration.method = .get
    configuration.telemetryHeader = .speakeasyUserAgent
}

private func configureResponseBodyEmptyWithHeadersRequest(with configuration: URLRequestConfiguration, request: Operations.ResponseBodyEmptyWithHeadersRequest) throws {
    configuration.path = "/response-headers"
    configuration.method = .post
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .speakeasyUserAgent
}

private func configureResponseBodyOptionalGetRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/optional"
    configuration.method = .get
    configuration.telemetryHeader = .speakeasyUserAgent
}

private func configureResponseBodyReadOnlyRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/readonlyorwriteonly#readOnly"
    configuration.method = .post
    configuration.telemetryHeader = .speakeasyUserAgent
}

private func configureResponseBodyStringGetRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/html"
    configuration.method = .get
    configuration.telemetryHeader = .speakeasyUserAgent
}

private func configureResponseBodyXmlGetRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/xml"
    configuration.method = .get
    configuration.telemetryHeader = .speakeasyUserAgent
}

private func configureResponseBodyZeroValueComplexTypePtrsPostRequest(with configuration: URLRequestConfiguration, request: Shared.ObjWithZeroValueComplexTypePtrs) throws {
    configuration.path = "/anything/responseBodies/zeroValueComplexTypePtrs"
    configuration.method = .post
    configuration.contentType = "application/json"
    configuration.body = try jsonEncoder().encode(request)
    if configuration.body == nil {
        throw SerializationError.missingRequiredRequestBody
    }
    configuration.telemetryHeader = .speakeasyUserAgent
}

// MARK: - Response Handlers

private func handleResponseBodyAdditionalPropertiesComplexNumbersPostResponse(response: Client.APIResponse) throws -> Operations.ResponseBodyAdditionalPropertiesComplexNumbersPostResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .responseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSONObject(try JSONDecoder().decode(Operations.ResponseBodyAdditionalPropertiesComplexNumbersPost200ApplicationJSON.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleResponseBodyAdditionalPropertiesDatePostResponse(response: Client.APIResponse) throws -> Operations.ResponseBodyAdditionalPropertiesDatePostResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .responseBodyAdditionalPropertiesDatePost200ApplicationJSONObject(try JSONDecoder().decode(Operations.ResponseBodyAdditionalPropertiesDatePost200ApplicationJSON.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleResponseBodyAdditionalPropertiesObjectPostResponse(response: Client.APIResponse) throws -> Operations.ResponseBodyAdditionalPropertiesObjectPostResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .responseBodyAdditionalPropertiesObjectPost200ApplicationJSONObject(try JSONDecoder().decode(Operations.ResponseBodyAdditionalPropertiesObjectPost200ApplicationJSON.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleResponseBodyAdditionalPropertiesPostResponse(response: Client.APIResponse) throws -> Operations.ResponseBodyAdditionalPropertiesPostResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .responseBodyAdditionalPropertiesPost200ApplicationJSONObject(try JSONDecoder().decode(Operations.ResponseBodyAdditionalPropertiesPost200ApplicationJSON.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleResponseBodyBytesGetResponse(response: Client.APIResponse) throws -> Operations.ResponseBodyBytesGetResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/octet-stream"), let data = response.data {
            return .bytes(data)
        }
    }

    return .empty
}

private func handleResponseBodyEmptyWithHeadersResponse(response: Client.APIResponse) throws -> Operations.ResponseBodyEmptyWithHeadersResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        return .empty
    }

    return .empty
}

private func handleResponseBodyOptionalGetResponse(response: Client.APIResponse) throws -> Operations.ResponseBodyOptionalGetResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .typedObject1(try JSONDecoder().decode(Shared.TypedObject1.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
        if httpResponse.contentType.matchContentType(pattern: "text/plain"), let data = response.data {
            guard let string = String(data: data, encoding: .utf8) else {
                throw ResponseHandlerError.failedToDecodeResponse
            }
            return .responseBodyOptionalGet200TextPlainString(string)
        }
    }

    return .empty
}

private func handleResponseBodyReadOnlyResponse(response: Client.APIResponse) throws -> Operations.ResponseBodyReadOnlyResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .readOnlyObject(try JSONDecoder().decode(Shared.ReadOnlyObject.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleResponseBodyStringGetResponse(response: Client.APIResponse) throws -> Operations.ResponseBodyStringGetResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "text/html"), let data = response.data {
            guard let string = String(data: data, encoding: .utf8) else {
                throw ResponseHandlerError.failedToDecodeResponse
            }
            return .html(string)
        }
    }

    return .empty
}

private func handleResponseBodyXmlGetResponse(response: Client.APIResponse) throws -> Operations.ResponseBodyXmlGetResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/xml"), let data = response.data {
            guard let string = String(data: data, encoding: .utf8) else {
                throw ResponseHandlerError.failedToDecodeResponse
            }
            return .xml(string)
        }
    }

    return .empty
}

private func handleResponseBodyZeroValueComplexTypePtrsPostResponse(response: Client.APIResponse) throws -> Operations.ResponseBodyZeroValueComplexTypePtrsPostResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .responseBodyZeroValueComplexTypePtrsPost200ApplicationJSONObject(try JSONDecoder().decode(Operations.ResponseBodyZeroValueComplexTypePtrsPost200ApplicationJSON.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

