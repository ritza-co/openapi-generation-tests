// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct RequestBodyPutMultipartFileRes {
        public let files: [String: String]

        /// Creates an object with the specified parameters
        ///
        ///
        public init(files: [String: String]) {
            self.files = files
        }
    }
}

extension Operations.RequestBodyPutMultipartFileRes: Codable {
    enum CodingKeys: String, CodingKey {
        case files
    }
}

