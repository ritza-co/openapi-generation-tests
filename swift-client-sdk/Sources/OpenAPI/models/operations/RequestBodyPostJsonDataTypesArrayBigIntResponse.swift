// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum RequestBodyPostJsonDataTypesArrayBigIntResponse {
        case empty
        case requestBodyPostJSONDataTypesArrayBigInt200ApplicationJSONObject(Operations.RequestBodyPostJSONDataTypesArrayBigInt200ApplicationJSON)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func requestBodyPostJSONDataTypesArrayBigInt200ApplicationJSONObject() throws -> Operations.RequestBodyPostJSONDataTypesArrayBigInt200ApplicationJSON {
            guard case .requestBodyPostJSONDataTypesArrayBigInt200ApplicationJSONObject(let value) = self else {
                throw OpenAPIError.missingResponseData
            }
            return value
        }
    }
}
