// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct ResponseBodyAdditionalPropertiesPostResponseBody {
        public let json: [String: String]

        /// Creates an object with the specified parameters
        ///
        ///
        public init(json: [String: String]) {
            self.json = json
        }
    }
}

extension Operations.ResponseBodyAdditionalPropertiesPostResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case json
    }
}

