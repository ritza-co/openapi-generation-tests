// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Operations.RequestBodyPostMultipleContentTypesSplitParamFormRequestBody: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .form:
            return serializeModel(with: try serializedFormParameters(formatOverride: format), format: format)
        case .path, .query, .header, .multipart:
            throw SerializationError.invalidSerializationParameter(type: "Operations.RequestBodyPostMultipleContentTypesSplitParamFormRequestBody", format: format.formatDescription)
        }
    }
}

extension Operations.RequestBodyPostMultipleContentTypesSplitParamFormRequestBody: FormBodySerializable {
    func serializedFormParameters(formatOverride: SerializableFormat?) throws -> [SerializedParameter] {
        return [
            SerializedParameter(name: "bool3", serialized: try bool3.serialize(with: .form(explode: true))),
            SerializedParameter(name: "num3", serialized: try num3Wrapper.serialize(with: .form(explode: true))),
            SerializedParameter(name: "str3", serialized: try str3.serialize(with: .form(explode: true)))
        ]
    }
}
