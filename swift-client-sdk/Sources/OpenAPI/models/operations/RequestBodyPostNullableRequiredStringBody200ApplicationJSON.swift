// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct RequestBodyPostNullableRequiredStringBody200ApplicationJSON {
        public let data: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(data: String) {
            self.data = data
        }
    }
}

extension Operations.RequestBodyPostNullableRequiredStringBody200ApplicationJSON: Codable {
    enum CodingKeys: String, CodingKey {
        case data
    }
}

