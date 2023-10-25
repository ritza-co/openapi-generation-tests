// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public enum PrimitiveTypeUnion {
        case string(String)
        case integer(Int)
        case int32(Int)
        case number(Double)
        case float32(Double)
        case bool(Bool)
    }
}

extension Shared.PrimitiveTypeUnion: Codable {
    public init(from decoder: Decoder) throws {
        if let value = try? String(from: decoder) {
            self = .string(value)
        } else if let value = try? Int(from: decoder) {
            self = .integer(value)
        } else if let value = try? Int(from: decoder) {
            self = .int32(value)
        } else if let value = try? Double(from: decoder) {
            self = .number(value)
        } else if let value = try? Double(from: decoder) {
            self = .float32(value)
        } else if let value = try? Bool(from: decoder) {
            self = .bool(value)
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
        case .int32(let value):
            try value.encode(to: encoder)
        case .number(let value):
            try value.encode(to: encoder)
        case .float32(let value):
            try value.encode(to: encoder)
        case .bool(let value):
            try value.encode(to: encoder)
        }
    }
}

