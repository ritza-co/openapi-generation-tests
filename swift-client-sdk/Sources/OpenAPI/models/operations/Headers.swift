// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Headers {
        public let xHeaderArray: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(xHeaderArray: String) {
            self.xHeaderArray = xHeaderArray
        }
    }
}

extension Operations.Headers: Codable {
    enum CodingKeys: String, CodingKey {
        case xHeaderArray = "X-Header-Array"
    }
}

