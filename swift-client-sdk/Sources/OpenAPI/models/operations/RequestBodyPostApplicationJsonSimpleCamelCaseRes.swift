// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct RequestBodyPostApplicationJsonSimpleCamelCaseRes {
        /// A simple object that uses all our supported primitive types and enums and has optional properties.
        public let json: Shared.SimpleObjectCamelCase

        /// Creates an object with the specified parameters
        ///
        /// - Parameter json: A simple object that uses all our supported primitive types and enums and has optional properties.
        ///
        public init(json: Shared.SimpleObjectCamelCase) {
            self.json = json
        }
    }
}

extension Operations.RequestBodyPostApplicationJsonSimpleCamelCaseRes: Codable {
    enum CodingKeys: String, CodingKey {
        case json
    }
}

