// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct RequestBodyPostJSONDataTypesMapDateTime200ApplicationJSON {
        public let data: String
        public let json: [String: Date]

        /// Creates an object with the specified parameters
        ///
        ///
        public init(data: String, json: [String: Date]) {
            self.data = data
            self.json = json
        }
    }
}

extension Operations.RequestBodyPostJSONDataTypesMapDateTime200ApplicationJSON: Codable {
    enum CodingKeys: String, CodingKey {
        case data
        case json
    }
}

