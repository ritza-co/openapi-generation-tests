// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct HeaderParamsMapResHeaders {
        public let xHeaderMap: String
        public let xHeaderMapExplode: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(xHeaderMap: String, xHeaderMapExplode: String) {
            self.xHeaderMap = xHeaderMap
            self.xHeaderMapExplode = xHeaderMapExplode
        }
    }
}

extension Operations.HeaderParamsMapResHeaders: Codable {
    enum CodingKeys: String, CodingKey {
        case xHeaderMap = "X-Header-Map"
        case xHeaderMapExplode = "X-Header-Map-Explode"
    }
}

