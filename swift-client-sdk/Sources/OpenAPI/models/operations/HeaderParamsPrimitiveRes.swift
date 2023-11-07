// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct HeaderParamsPrimitiveRes {
        public let headers: Operations.HeaderParamsPrimitiveHeaders

        /// Creates an object with the specified parameters
        ///
        ///
        public init(headers: Operations.HeaderParamsPrimitiveHeaders) {
            self.headers = headers
        }
    }
}

extension Operations.HeaderParamsPrimitiveRes: Codable {
    enum CodingKeys: String, CodingKey {
        case headers
    }
}

