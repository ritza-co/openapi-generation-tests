// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A request model
    public struct ConflictingParamsRequest: APIValue {
        public let strPathParameter: String
        public let strQueryParameter: String

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(strPathParameter: String, strQueryParameter: String) {
            self.strPathParameter = strPathParameter
            self.strQueryParameter = strQueryParameter
        }
    }
}
