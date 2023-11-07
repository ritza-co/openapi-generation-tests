// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Operations.RequestBodyPutMultipartDifferentFileNameRequestBody: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .multipart:
            // Deep, non-JSON encoded multipart serialization is not supported.
            throw SerializationError.invalidSerializationParameter(type: "Operations.RequestBodyPutMultipartDifferentFileNameRequestBody", format: format.formatDescription)
        case .path, .query, .header, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.RequestBodyPutMultipartDifferentFileNameRequestBody", format: format.formatDescription)
        }
    }
}

extension Operations.RequestBodyPutMultipartDifferentFileNameRequestBody: MultipartFormBodySerializable {
    func serializedMultipartFormParameters(formatOverride: SerializableFormat?) throws -> [MultipartFormParameter] {
        return [
            .file(name: "differentFileName", filename: differentFileName?.fileName, data: differentFileName?.content)
        ]
    }
}
