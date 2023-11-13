// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum CreateFileResponse {
        case empty
        case fileResource(Shared.FileResource)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func fileResource() throws -> Shared.FileResource {
            guard case .fileResource(let value) = self else {
                throw OpenAPIError.missingResponseData
            }
            return value
        }
    }
}
