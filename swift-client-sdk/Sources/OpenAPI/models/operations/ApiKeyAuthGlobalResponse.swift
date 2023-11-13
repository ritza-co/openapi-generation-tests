// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum ApiKeyAuthGlobalResponse {
        case empty
        case token(Operations.ApiKeyAuthGlobalToken)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func token() throws -> Operations.ApiKeyAuthGlobalToken {
            guard case .token(let value) = self else {
                throw OpenAPIError.missingResponseData
            }
            return value
        }
    }
}
