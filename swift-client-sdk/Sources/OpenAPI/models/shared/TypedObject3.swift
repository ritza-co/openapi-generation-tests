// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct TypedObject3 {
        public let type: Shared.TypedObject3Type
        public let value: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(type: Shared.TypedObject3Type, value: String) {
            self.type = type
            self.value = value
        }
    }
}

extension Shared.TypedObject3: Codable {
    enum CodingKeys: String, CodingKey {
        case type
        case value
    }
}

