// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct RequestBodyPostApplicationJsonDeepCamelCaseRes {
        public let json: Shared.DeepObjectCamelCase?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(json: Shared.DeepObjectCamelCase? = nil) {
            self.json = json
        }
    }
}

extension Operations.RequestBodyPostApplicationJsonDeepCamelCaseRes: Codable {
    enum CodingKeys: String, CodingKey {
        case json
    }
}

