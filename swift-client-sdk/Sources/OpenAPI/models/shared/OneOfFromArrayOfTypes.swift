// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public enum OneOfFromArrayOfTypes {
        case string(String)
        case integer(Int)
    }
}

extension Shared.OneOfFromArrayOfTypes: Codable {
    public init(from decoder: Decoder) throws {
        if let value = try? String(from: decoder) {
            self = .string(value)
        } else if let value = try? Int(from: decoder) {
            self = .integer(value)
        } else {
            throw OpenAPIError.failedToHandleResponse(.failedToDecodeResponse)
        }
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case .string(let value):
            try value.encode(to: encoder)
        case .integer(let value):
            try value.encode(to: encoder)
        }
    }
}

