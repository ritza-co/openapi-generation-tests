// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct DeepObjectQueryParamsObjectArgs {
        public let objArrParamArr: [String]
        public let objParamAny: String
        public let objParamBool: String
        public let objParamBoolOpt: String
        public let objParamDate: String
        public let objParamDateTime: String
        public let objParamEnum: String
        public let objParamFloat32: String
        public let objParamInt: String
        public let objParamInt32: String
        public let objParamInt32Enum: String
        public let objParamIntEnum: String
        public let objParamNum: String
        public let objParamStr: String
        public let objParamStrOpt: String
        public let objParamBigint: String?
        public let objParamBigintStr: String?
        public let objParamDecimal: String?
        public let objParamDecimalStr: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(objArrParamArr: [String], objParamAny: String, objParamBool: String, objParamBoolOpt: String, objParamDate: String, objParamDateTime: String, objParamEnum: String, objParamFloat32: String, objParamInt: String, objParamInt32: String, objParamInt32Enum: String, objParamIntEnum: String, objParamNum: String, objParamStr: String, objParamStrOpt: String, objParamBigint: String? = nil, objParamBigintStr: String? = nil, objParamDecimal: String? = nil, objParamDecimalStr: String? = nil) {
            self.objArrParamArr = objArrParamArr
            self.objParamAny = objParamAny
            self.objParamBool = objParamBool
            self.objParamBoolOpt = objParamBoolOpt
            self.objParamDate = objParamDate
            self.objParamDateTime = objParamDateTime
            self.objParamEnum = objParamEnum
            self.objParamFloat32 = objParamFloat32
            self.objParamInt = objParamInt
            self.objParamInt32 = objParamInt32
            self.objParamInt32Enum = objParamInt32Enum
            self.objParamIntEnum = objParamIntEnum
            self.objParamNum = objParamNum
            self.objParamStr = objParamStr
            self.objParamStrOpt = objParamStrOpt
            self.objParamBigint = objParamBigint
            self.objParamBigintStr = objParamBigintStr
            self.objParamDecimal = objParamDecimal
            self.objParamDecimalStr = objParamDecimalStr
        }
    }
}

extension Operations.DeepObjectQueryParamsObjectArgs: Codable {
    enum CodingKeys: String, CodingKey {
        case objArrParamArr = "objArrParam[arr]"
        case objParamAny = "objParam[any]"
        case objParamBool = "objParam[bool]"
        case objParamBoolOpt = "objParam[boolOpt]"
        case objParamDate = "objParam[date]"
        case objParamDateTime = "objParam[dateTime]"
        case objParamEnum = "objParam[enum]"
        case objParamFloat32 = "objParam[float32]"
        case objParamInt = "objParam[int]"
        case objParamInt32 = "objParam[int32]"
        case objParamInt32Enum = "objParam[int32Enum]"
        case objParamIntEnum = "objParam[intEnum]"
        case objParamNum = "objParam[num]"
        case objParamStr = "objParam[str]"
        case objParamStrOpt = "objParam[strOpt]"
        case objParamBigint = "objParam[bigint]"
        case objParamBigintStr = "objParam[bigintStr]"
        case objParamDecimal = "objParam[decimal]"
        case objParamDecimalStr = "objParam[decimalStr]"
    }
}

