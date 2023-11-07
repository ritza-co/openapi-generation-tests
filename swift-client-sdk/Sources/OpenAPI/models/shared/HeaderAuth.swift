// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct HeaderAuth {
        public let expectedValue: String
        public let headerName: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(expectedValue: String, headerName: String) {
            self.expectedValue = expectedValue
            self.headerName = headerName
        }
    }
}

extension Shared.HeaderAuth: Codable {
    enum CodingKeys: String, CodingKey {
        case expectedValue
        case headerName
    }
}

