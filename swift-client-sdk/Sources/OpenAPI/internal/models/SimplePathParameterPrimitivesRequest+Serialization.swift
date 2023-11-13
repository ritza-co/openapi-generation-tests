// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Operations.SimplePathParameterPrimitivesRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .path:
            return try serializePathParameterSerializable(self, with: format)
        case .query, .header, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.SimplePathParameterPrimitivesRequest", format: format.formatDescription)
        }
    }
}

extension Operations.SimplePathParameterPrimitivesRequest: PathParameterSerializable {
    func serializedPathParameters(formatOverride: SerializableFormat?) throws -> [String: String] {
        return [
            "boolParam": try boolParam.serialize(with: formatOverride ?? .path(explode: false)),
            "intParam": try intParam.serialize(with: formatOverride ?? .path(explode: false)),
            "numParam": try numParamWrapper.serialize(with: formatOverride ?? .path(explode: false)),
            "strParam": try strParam.serialize(with: formatOverride ?? .path(explode: false)),
        ].compactMapValues { $0 }
    }
}
