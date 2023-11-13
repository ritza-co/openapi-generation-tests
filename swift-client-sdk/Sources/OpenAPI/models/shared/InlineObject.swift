// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct InlineObject {
        public let inlineName: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(inlineName: String? = nil) {
            self.inlineName = inlineName
        }
    }
}

extension Shared.InlineObject: Codable {
    enum CodingKeys: String, CodingKey {
        case inlineName = "inline_name"
    }
}

