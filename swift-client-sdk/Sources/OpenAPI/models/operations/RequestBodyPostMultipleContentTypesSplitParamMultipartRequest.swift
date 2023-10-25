// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A request model
    public struct RequestBodyPostMultipleContentTypesSplitParamMultipartRequest: APIValue {
        public let paramStr: String
        public let requestBody: Operations.RequestBodyPostMultipleContentTypesSplitParamMultipartFormData

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(paramStr: String, requestBody: Operations.RequestBodyPostMultipleContentTypesSplitParamMultipartFormData) {
            self.paramStr = paramStr
            self.requestBody = requestBody
        }
    }
}
