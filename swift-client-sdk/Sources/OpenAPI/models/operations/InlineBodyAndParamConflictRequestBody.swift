// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct InlineBodyAndParamConflictRequestBody {
        public let str: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(str: String) {
            self.str = str
        }
    }
}

extension Operations.InlineBodyAndParamConflictRequestBody: Codable {
    enum CodingKeys: String, CodingKey {
        case str
    }
}

