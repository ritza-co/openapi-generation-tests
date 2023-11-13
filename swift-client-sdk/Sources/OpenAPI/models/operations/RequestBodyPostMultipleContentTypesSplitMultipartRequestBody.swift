// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct RequestBodyPostMultipleContentTypesSplitMultipartRequestBody: APIValue {
        public let bool2: Bool
        @DecimalSerialized
        public private(set) var num2: Double
        public let str2: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(bool2: Bool, num2: Double, str2: String) {
            self.bool2 = bool2
            self._num2 = DecimalSerialized<Double>(wrappedValue: num2)
            self.str2 = str2
        }
    }
}
extension Operations.RequestBodyPostMultipleContentTypesSplitMultipartRequestBody {
    var num2Wrapper: DecimalSerialized<Double> {
        return _num2
    }
}
