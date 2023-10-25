// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// OK
    public struct RequestBodyPostJSONDataTypesNumber200ApplicationJSON {
        @DecimalSerialized
        public private(set) var json: Double

        /// Creates an object with the specified parameters
        ///
        ///
        public init(json: Double) {
            self._json = DecimalSerialized<Double>(wrappedValue: json)
        }
    }
}

extension Operations.RequestBodyPostJSONDataTypesNumber200ApplicationJSON: Codable {
    enum CodingKeys: String, CodingKey {
        case json
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self._json = try container.decode(DecimalSerialized<Double>.self, forKey: .json)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self._json, forKey: .json)
    }
}

extension Operations.RequestBodyPostJSONDataTypesNumber200ApplicationJSON {
    var jsonWrapper: DecimalSerialized<Double> {
        return _json
    }
}
