// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct FormQueryParamsPrimitiveRes {
        public let args: Operations.FormQueryParamsPrimitiveResArgs
        public let url: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(args: Operations.FormQueryParamsPrimitiveResArgs, url: String) {
            self.args = args
            self.url = url
        }
    }
}

extension Operations.FormQueryParamsPrimitiveRes: Codable {
    enum CodingKeys: String, CodingKey {
        case args
        case url
    }
}

