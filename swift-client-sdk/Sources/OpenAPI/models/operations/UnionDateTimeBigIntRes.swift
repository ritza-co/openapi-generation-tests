// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct UnionDateTimeBigIntRes {
        public let json: Operations.UnionDateTimeBigIntResJson

        /// Creates an object with the specified parameters
        ///
        ///
        public init(json: Operations.UnionDateTimeBigIntResJson) {
            self.json = json
        }
    }
}

extension Operations.UnionDateTimeBigIntRes: Codable {
    enum CodingKeys: String, CodingKey {
        case json
    }
}

