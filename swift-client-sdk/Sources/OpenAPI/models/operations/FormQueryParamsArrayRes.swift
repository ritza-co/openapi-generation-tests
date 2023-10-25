// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct FormQueryParamsArrayRes {
        public let args: Operations.FormQueryParamsArrayResArgs
        public let url: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(args: Operations.FormQueryParamsArrayResArgs, url: String) {
            self.args = args
            self.url = url
        }
    }
}

extension Operations.FormQueryParamsArrayRes: Codable {
    enum CodingKeys: String, CodingKey {
        case args
        case url
    }
}

