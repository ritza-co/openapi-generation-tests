// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public enum WeaklyTypedOneOfObject {
        case simpleObject(Shared.SimpleObject)
        case deepObject(Shared.DeepObject)
    }
}

extension Shared.WeaklyTypedOneOfObject: Codable {
    public init(from decoder: Decoder) throws {
        if let value = try? Shared.SimpleObject(from: decoder) {
            self = .simpleObject(value)
        } else if let value = try? Shared.DeepObject(from: decoder) {
            self = .deepObject(value)
        } else {
            throw OpenAPIError.failedToHandleResponse(.failedToDecodeResponse)
        }
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case .simpleObject(let value):
            try value.encode(to: encoder)
        case .deepObject(let value):
            try value.encode(to: encoder)
        }
    }
}

