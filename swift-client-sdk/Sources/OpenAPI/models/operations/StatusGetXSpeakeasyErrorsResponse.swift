// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum StatusGetXSpeakeasyErrorsResponse {
        case empty
        case error(Shared.Error)
        case object(Operations.StatusGetXSpeakeasyErrorsResponseBody)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func error() throws -> Shared.Error {
            guard case .error(let value) = self else {
                throw OpenAPIError.missingResponseData
            }
            return value
        }

        public func object() throws -> Operations.StatusGetXSpeakeasyErrorsResponseBody {
            guard case .object(let value) = self else {
                throw OpenAPIError.missingResponseData
            }
            return value
        }
    }
}
