// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct GlobalPathParameterGetRes {
        public let url: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(url: String) {
            self.url = url
        }
    }
}

extension Operations.GlobalPathParameterGetRes: Codable {
    enum CodingKeys: String, CodingKey {
        case url
    }
}

