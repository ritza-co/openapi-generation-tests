// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct PaginationCursorBodyRequestBody {
        public let cursor: Int

        /// Creates an object with the specified parameters
        ///
        ///
        public init(cursor: Int) {
            self.cursor = cursor
        }
    }
}

extension Operations.PaginationCursorBodyRequestBody: Codable {
    enum CodingKeys: String, CodingKey {
        case cursor
    }
}

