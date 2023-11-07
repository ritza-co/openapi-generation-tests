// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct SimplePathParameterObjectsRequest: APIValue {
        /// A simple object that uses all our supported primitive types and enums and has optional properties.
        public let objParam: Shared.SimpleObject
        /// A simple object that uses all our supported primitive types and enums and has optional properties.
        public let objParamExploded: Shared.SimpleObject

        /// Creates an object with the specified parameters
        ///
        /// - Parameter objParam: A simple object that uses all our supported primitive types and enums and has optional properties.
        /// - Parameter objParamExploded: A simple object that uses all our supported primitive types and enums and has optional properties.
        ///
        public init(objParam: Shared.SimpleObject, objParamExploded: Shared.SimpleObject) {
            self.objParam = objParam
            self.objParamExploded = objParamExploded
        }
    }
}
