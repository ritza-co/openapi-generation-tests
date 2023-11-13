// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct DeprecatedOperationWithCommentsGetRequest: APIValue {
        /// This is a string parameter
        @available(*, deprecated, renamed: "newParameter", message: "This parameter is deprecated")
        public let deprecatedParameter: String?
        /// This is a string parameter
        public let newParameter: String?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter deprecatedParameter: This is a string parameter
        /// - Parameter newParameter: This is a string parameter
        ///
        @available(*, deprecated, message: "This initializer uses deprecated fields and will be removed in a future version.")
        public init(deprecatedParameter: String? = nil, newParameter: String? = nil) {
            self.deprecatedParameter = deprecatedParameter
            self.newParameter = newParameter
        }
    }
}
