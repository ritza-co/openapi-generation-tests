// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct ResponseBodyAdditionalPropertiesDatePost200ApplicationJSON {
        public let json: [String: Date]

        /// Creates an object with the specified parameters
        ///
        ///
        public init(json: [String: Date]) {
            self.json = json
        }
    }
}

extension Operations.ResponseBodyAdditionalPropertiesDatePost200ApplicationJSON: Codable {
    enum CodingKeys: String, CodingKey {
        case json
    }
}

