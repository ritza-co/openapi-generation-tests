// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum IgnoredGenerationGetResponse {
        case empty
        case object(Operations.IgnoredGenerationGetResponseBody)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func object() throws -> Operations.IgnoredGenerationGetResponseBody {
            guard case .object(let value) = self else {
                throw OpenAPIError.missingResponseData
            }
            return value
        }
    }
}
