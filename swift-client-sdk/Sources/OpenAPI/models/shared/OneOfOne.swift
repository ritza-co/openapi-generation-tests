// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public enum OneOfOne {
        case typedObject1(Shared.TypedObject1)
    }
}

extension Shared.OneOfOne: Codable {
    public init(from decoder: Decoder) throws {
        if let value = try? Shared.TypedObject1(from: decoder) {
            self = .typedObject1(value)
        } else {
            throw OpenAPIError.failedToHandleResponse(.failedToDecodeResponse)
        }
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case .typedObject1(let value):
            try value.encode(to: encoder)
        }
    }
}

