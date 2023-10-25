// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct MixedParametersPrimitivesRes {
        public let args: Operations.MixedParametersPrimitivesResArgs
        public let headers: Operations.MixedParametersPrimitivesResHeaders
        public let url: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(args: Operations.MixedParametersPrimitivesResArgs, headers: Operations.MixedParametersPrimitivesResHeaders, url: String) {
            self.args = args
            self.headers = headers
            self.url = url
        }
    }
}

extension Operations.MixedParametersPrimitivesRes: Codable {
    enum CodingKeys: String, CodingKey {
        case args
        case headers
        case url
    }
}

