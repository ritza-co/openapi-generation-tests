// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct RequestBodyPostFormDeepRes {
        public let form: Operations.Form

        /// Creates an object with the specified parameters
        ///
        ///
        public init(form: Operations.Form) {
            self.form = form
        }
    }
}

extension Operations.RequestBodyPostFormDeepRes: Codable {
    enum CodingKeys: String, CodingKey {
        case form
    }
}

