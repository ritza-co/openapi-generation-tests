// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct RequestBodyPostMultipleContentTypesSplitFormRes {
        public let form: [String: AnyValue]?
        public let json: [String: AnyValue]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(form: [String: AnyValue]? = nil, json: [String: AnyValue]? = nil) {
            self.form = form
            self.json = json
        }
    }
}

extension Operations.RequestBodyPostMultipleContentTypesSplitFormRes: Codable {
    enum CodingKeys: String, CodingKey {
        case form
        case json
    }
}

