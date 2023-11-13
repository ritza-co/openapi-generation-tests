// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public enum WeaklyTypedOneOfReadWriteObject {
        case simpleObject(Shared.SimpleObject)
        case readWriteObject(Shared.ReadWriteObject)
    }
}

extension Shared.WeaklyTypedOneOfReadWriteObject: Codable {
    public init(from decoder: Decoder) throws {
        if let value = try? Shared.SimpleObject(from: decoder) {
            self = .simpleObject(value)
        } else if let value = try? Shared.ReadWriteObject(from: decoder) {
            self = .readWriteObject(value)
        } else {
            throw OpenAPIError.failedToHandleResponse(.failedToDecodeResponse)
        }
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case .simpleObject(let value):
            try value.encode(to: encoder)
        case .readWriteObject(let value):
            try value.encode(to: encoder)
        }
    }
}

