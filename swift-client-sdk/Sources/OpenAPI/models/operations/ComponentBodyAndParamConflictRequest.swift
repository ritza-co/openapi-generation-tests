// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A request model
    public struct ComponentBodyAndParamConflictRequest: APIValue {
        public let simpleObject: Shared.SimpleObject
        public let str: String

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(simpleObject: Shared.SimpleObject, str: String) {
            self.simpleObject = simpleObject
            self.str = str
        }
    }
}
