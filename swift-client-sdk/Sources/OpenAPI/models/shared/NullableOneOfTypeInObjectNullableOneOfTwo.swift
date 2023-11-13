// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public enum NullableOneOfTypeInObjectNullableOneOfTwo {
        case bool(Bool)
        case integer(Int)
    }
}

extension Shared.NullableOneOfTypeInObjectNullableOneOfTwo: Codable {
    public init(from decoder: Decoder) throws {
        if let value = try? Bool(from: decoder) {
            self = .bool(value)
        } else if let value = try? Int(from: decoder) {
            self = .integer(value)
        } else {
            throw OpenAPIError.failedToHandleResponse(.failedToDecodeResponse)
        }
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case .bool(let value):
            try value.encode(to: encoder)
        case .integer(let value):
            try value.encode(to: encoder)
        }
    }
}

