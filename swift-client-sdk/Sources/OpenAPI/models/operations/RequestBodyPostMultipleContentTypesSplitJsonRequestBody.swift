// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct RequestBodyPostMultipleContentTypesSplitJsonRequestBody {
        public let bool: Bool
        @DecimalSerialized
        public private(set) var num: Double
        public let str: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(bool: Bool, num: Double, str: String) {
            self.bool = bool
            self._num = DecimalSerialized<Double>(wrappedValue: num)
            self.str = str
        }
    }
}

extension Operations.RequestBodyPostMultipleContentTypesSplitJsonRequestBody: Codable {
    enum CodingKeys: String, CodingKey {
        case bool
        case num
        case str
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bool = try container.decode(Bool.self, forKey: .bool)
        self._num = try container.decode(DecimalSerialized<Double>.self, forKey: .num)
        self.str = try container.decode(String.self, forKey: .str)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.bool, forKey: .bool)
        try container.encode(self._num, forKey: .num)
        try container.encode(self.str, forKey: .str)
    }
}

extension Operations.RequestBodyPostMultipleContentTypesSplitJsonRequestBody {
    var numWrapper: DecimalSerialized<Double> {
        return _num
    }
}
