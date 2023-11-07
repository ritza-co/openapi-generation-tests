// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Client: OpenAPI {
    // MARK: - Root operations 
    
    public func putAnythingIgnoredGeneration(request: String) async throws -> Response<Operations.PutAnythingIgnoredGenerationResponse> {
        return try await makeRequest(
            configureRequest: { configuration in
                try configurePutAnythingIgnoredGenerationRequest(with: configuration, request: request)
            },
            handleResponse: handlePutAnythingIgnoredGenerationResponse
        )
    }
    
    public func responseBodyJsonGet() async throws -> Response<Operations.ResponseBodyJsonGetResponse> {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureResponseBodyJsonGetRequest(with: configuration)
            },
            handleResponse: handleResponseBodyJsonGetResponse
        )
    }

    // MARK: - Scoped API operations

    public var generation: GenerationAPI {
        return _GenerationAPI(client: self)
    }

    public var errors: ErrorsAPI {
        return _ErrorsAPI(client: self)
    }

    public var unions: UnionsAPI {
        return _UnionsAPI(client: self)
    }

    public var flattening: FlatteningAPI {
        return _FlatteningAPI(client: self)
    }

    public var globals: GlobalsAPI {
        return _GlobalsAPI(client: self)
    }

    public var parameters: ParametersAPI {
        return _ParametersAPI(client: self)
    }

    public var nestFirst: NestFirstAPI {
        return _NestFirstAPI(client: self)
    }

    public var nested: NestedAPI {
        return _NestedAPI(client: self)
    }

    public var nestedFirst: NestedFirstAPI {
        return _NestedFirstAPI(client: self)
    }

    public var nestedSecond: NestedSecondAPI {
        return _NestedSecondAPI(client: self)
    }

    public var requestBodies: RequestBodiesAPI {
        return _RequestBodiesAPI(client: self)
    }

    public var responseBodies: ResponseBodiesAPI {
        return _ResponseBodiesAPI(client: self)
    }

    public var servers: ServersAPI {
        return _ServersAPI(client: self)
    }

    public var telemetry: TelemetryAPI {
        return _TelemetryAPI(client: self)
    }

    public var authNew: AuthNewAPI {
        return _AuthNewAPI(client: self)
    }

    public var auth: AuthAPI {
        return _AuthAPI(client: self)
    }

    public var documentation: DocumentationAPI {
        return _DocumentationAPI(client: self)
    }

    public var resource: ResourceAPI {
        return _ResourceAPI(client: self)
    }

    public var first: FirstAPI {
        return _FirstAPI(client: self)
    }

    public var second: SecondAPI {
        return _SecondAPI(client: self)
    }

    public var pagination: PaginationAPI {
        return _PaginationAPI(client: self)
    }

    public var retries: RetriesAPI {
        return _RetriesAPI(client: self)
    }
}

// MARK: - Request Configuration

private func configurePutAnythingIgnoredGenerationRequest(with configuration: URLRequestConfiguration, request: String) throws {
    configuration.path = "/anything/ignoredGeneration"
    configuration.method = .put
    configuration.contentType = "application/json"
    configuration.body = try jsonEncoder().encode(request)
    if configuration.body == nil {
        throw SerializationError.missingRequiredRequestBody
    }
    configuration.telemetryHeader = .speakeasyUserAgent
}

private func configureResponseBodyJsonGetRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/json"
    configuration.method = .get
    configuration.telemetryHeader = .speakeasyUserAgent
}

// MARK: - Response Handlers

private func handlePutAnythingIgnoredGenerationResponse(response: Client.APIResponse) throws -> Operations.PutAnythingIgnoredGenerationResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.PutAnythingIgnoredGenerationResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleResponseBodyJsonGetResponse(response: Client.APIResponse) throws -> Operations.ResponseBodyJsonGetResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .httpBinSimpleJsonObject(try JSONDecoder().decode(Shared.HttpBinSimpleJsonObject.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

