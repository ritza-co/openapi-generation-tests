// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct RequestBodyPostJsonDataTypesMapDecimalResponseBody {
        public let data: String
        public let json: [String: Double]

        /// Creates an object with the specified parameters
        ///
        ///
        public init(data: String, json: [String: Double]) {
            self.data = data
            self.json = json
        }
    }
}

extension Operations.RequestBodyPostJsonDataTypesMapDecimalResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case data
        case json
    }
}

