// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct MixedParametersCamelCaseResHeaders {
        public let headerParam: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(headerParam: String) {
            self.headerParam = headerParam
        }
    }
}

extension Operations.MixedParametersCamelCaseResHeaders: Codable {
    enum CodingKeys: String, CodingKey {
        case headerParam = "Header-Param"
    }
}

