// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum RequestBodyPostNotNullableNotRequiredStringBodyResponse {
        case empty
        case object(Operations.RequestBodyPostNotNullableNotRequiredStringBodyResponseBody)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func object() throws -> Operations.RequestBodyPostNotNullableNotRequiredStringBodyResponseBody {
            guard case .object(let value) = self else {
                throw OpenAPIError.missingResponseData
            }
            return value
        }
    }
}
