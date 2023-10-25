// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct WriteOnlyObject {
        public let bool: Bool
        @DecimalSerialized
        public private(set) var num: Double
        public let string: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(bool: Bool, num: Double, string: String) {
            self.bool = bool
            self._num = DecimalSerialized<Double>(wrappedValue: num)
            self.string = string
        }
    }
}

extension Shared.WriteOnlyObject: Codable {
    enum CodingKeys: String, CodingKey {
        case bool
        case num
        case string
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bool = try container.decode(Bool.self, forKey: .bool)
        self._num = try container.decode(DecimalSerialized<Double>.self, forKey: .num)
        self.string = try container.decode(String.self, forKey: .string)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.bool, forKey: .bool)
        try container.encode(self._num, forKey: .num)
        try container.encode(self.string, forKey: .string)
    }
}

extension Shared.WriteOnlyObject {
    var numWrapper: DecimalSerialized<Double> {
        return _num
    }
}
