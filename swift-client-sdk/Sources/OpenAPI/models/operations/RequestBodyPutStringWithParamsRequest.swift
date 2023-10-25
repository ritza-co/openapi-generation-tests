// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A request model
    public struct RequestBodyPutStringWithParamsRequest: APIValue {
        public let queryStringParam: String
        public let requestBody: String

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(queryStringParam: String, requestBody: String) {
            self.queryStringParam = queryStringParam
            self.requestBody = requestBody
        }
    }
}
