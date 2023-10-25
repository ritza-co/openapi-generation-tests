// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A request model
    public struct GetDocumentationPerLanguageRequest: APIValue {
        /// The language parameter for this endpoint.
        public let language: String

        /// Creates a request model with the specified parameters
        ///
        /// - Parameter language: The language parameter for this endpoint.
        ///
        public init(language: String) {
            self.language = language
        }
    }
}
