// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum BearerAuthResponse {
        case empty
        case token(Operations.BearerAuthToken)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func token() throws -> Operations.BearerAuthToken {
            guard case .token(let value) = self else {
                throw OpenAPIError.missingResponseData
            }
            return value
        }
    }
}
