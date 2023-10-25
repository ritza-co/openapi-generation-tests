// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct DefaultsAndConsts {
        public let constBigInt: Int
        public let constBigIntStr: String
        public let constBool: Bool
        @DateOnly
        public private(set) var constDate: Date
        @DateTime
        public private(set) var constDateTime: Date
        @DecimalSerialized
        public private(set) var constDecimal: Double
        public let constDecimalStr: String
        public let constEnumInt: Shared.DefaultsAndConstsConstEnumInt
        public let constEnumStr: Shared.DefaultsAndConstsConstEnumStr
        public let constInt: Int
        @DecimalSerialized
        public private(set) var constNum: Double
        public let constStr: String
        public let constStrNull: String
        public let normalField: String
        public let defaultBigInt: Int?
        public let defaultBigIntStr: String?
        public let defaultBool: Bool?
        @DateOnly
        public private(set) var defaultDate: Date?
        @DateTime
        public private(set) var defaultDateTime: Date?
        @DecimalSerialized
        public private(set) var defaultDecimal: Double?
        public let defaultDecimalStr: String?
        public let defaultEnumInt: Shared.DefaultsAndConstsDefaultEnumInt?
        public let defaultEnumStr: Shared.DefaultsAndConstsDefaultEnumStr?
        public let defaultInt: Int?
        @DecimalSerialized
        public private(set) var defaultNum: Double?
        public let defaultStr: String?
        public let defaultStrNullable: String?
        public let defaultStrOptional: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(constBigInt: Int, constBigIntStr: String, constBool: Bool, constDate: Date, constDateTime: Date, constDecimal: Double, constDecimalStr: String, constEnumInt: Shared.DefaultsAndConstsConstEnumInt, constEnumStr: Shared.DefaultsAndConstsConstEnumStr, constInt: Int, constNum: Double, constStr: String, constStrNull: String, normalField: String, defaultBigInt: Int? = nil, defaultBigIntStr: String? = nil, defaultBool: Bool? = nil, defaultDate: Date? = nil, defaultDateTime: Date? = nil, defaultDecimal: Double? = nil, defaultDecimalStr: String? = nil, defaultEnumInt: Shared.DefaultsAndConstsDefaultEnumInt? = nil, defaultEnumStr: Shared.DefaultsAndConstsDefaultEnumStr? = nil, defaultInt: Int? = nil, defaultNum: Double? = nil, defaultStr: String? = nil, defaultStrNullable: String? = nil, defaultStrOptional: String? = nil) {
            self.constBigInt = constBigInt
            self.constBigIntStr = constBigIntStr
            self.constBool = constBool
            self._constDate = DateOnly<Date>(wrappedValue: constDate)
            self._constDateTime = DateTime<Date>(wrappedValue: constDateTime)
            self._constDecimal = DecimalSerialized<Double>(wrappedValue: constDecimal)
            self.constDecimalStr = constDecimalStr
            self.constEnumInt = constEnumInt
            self.constEnumStr = constEnumStr
            self.constInt = constInt
            self._constNum = DecimalSerialized<Double>(wrappedValue: constNum)
            self.constStr = constStr
            self.constStrNull = constStrNull
            self.normalField = normalField
            self.defaultBigInt = defaultBigInt
            self.defaultBigIntStr = defaultBigIntStr
            self.defaultBool = defaultBool
            self._defaultDate = DateOnly<Date?>(wrappedValue: defaultDate)
            self._defaultDateTime = DateTime<Date?>(wrappedValue: defaultDateTime)
            self._defaultDecimal = DecimalSerialized<Double?>(wrappedValue: defaultDecimal)
            self.defaultDecimalStr = defaultDecimalStr
            self.defaultEnumInt = defaultEnumInt
            self.defaultEnumStr = defaultEnumStr
            self.defaultInt = defaultInt
            self._defaultNum = DecimalSerialized<Double?>(wrappedValue: defaultNum)
            self.defaultStr = defaultStr
            self.defaultStrNullable = defaultStrNullable
            self.defaultStrOptional = defaultStrOptional
        }
    }
}

extension Shared.DefaultsAndConsts: Codable {
    enum CodingKeys: String, CodingKey {
        case constBigInt
        case constBigIntStr
        case constBool
        case constDate
        case constDateTime
        case constDecimal
        case constDecimalStr
        case constEnumInt
        case constEnumStr
        case constInt
        case constNum
        case constStr
        case constStrNull
        case normalField
        case defaultBigInt
        case defaultBigIntStr
        case defaultBool
        case defaultDate
        case defaultDateTime
        case defaultDecimal
        case defaultDecimalStr
        case defaultEnumInt
        case defaultEnumStr
        case defaultInt
        case defaultNum
        case defaultStr
        case defaultStrNullable
        case defaultStrOptional
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.constBigInt = try container.decode(Int.self, forKey: .constBigInt)
        self.constBigIntStr = try container.decode(String.self, forKey: .constBigIntStr)
        self.constBool = try container.decode(Bool.self, forKey: .constBool)
        self._constDate = try container.decode(DateOnly<Date>.self, forKey: .constDate)
        self._constDateTime = try container.decode(DateTime<Date>.self, forKey: .constDateTime)
        self._constDecimal = try container.decode(DecimalSerialized<Double>.self, forKey: .constDecimal)
        self.constDecimalStr = try container.decode(String.self, forKey: .constDecimalStr)
        self.constEnumInt = try container.decode(Shared.DefaultsAndConstsConstEnumInt.self, forKey: .constEnumInt)
        self.constEnumStr = try container.decode(Shared.DefaultsAndConstsConstEnumStr.self, forKey: .constEnumStr)
        self.constInt = try container.decode(Int.self, forKey: .constInt)
        self._constNum = try container.decode(DecimalSerialized<Double>.self, forKey: .constNum)
        self.constStr = try container.decode(String.self, forKey: .constStr)
        self.constStrNull = try container.decode(String.self, forKey: .constStrNull)
        self.normalField = try container.decode(String.self, forKey: .normalField)
        self.defaultBigInt = try container.decodeIfPresent(Int.self, forKey: .defaultBigInt)
        self.defaultBigIntStr = try container.decodeIfPresent(String.self, forKey: .defaultBigIntStr)
        self.defaultBool = try container.decodeIfPresent(Bool.self, forKey: .defaultBool)
        self._defaultDate = try container.decodeIfPresent(DateOnly<Date?>.self, forKey: .defaultDate) ?? DateOnly<Date?>(wrappedValue: nil)
        self._defaultDateTime = try container.decodeIfPresent(DateTime<Date?>.self, forKey: .defaultDateTime) ?? DateTime<Date?>(wrappedValue: nil)
        self._defaultDecimal = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .defaultDecimal) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.defaultDecimalStr = try container.decodeIfPresent(String.self, forKey: .defaultDecimalStr)
        self.defaultEnumInt = try container.decodeIfPresent(Shared.DefaultsAndConstsDefaultEnumInt.self, forKey: .defaultEnumInt)
        self.defaultEnumStr = try container.decodeIfPresent(Shared.DefaultsAndConstsDefaultEnumStr.self, forKey: .defaultEnumStr)
        self.defaultInt = try container.decodeIfPresent(Int.self, forKey: .defaultInt)
        self._defaultNum = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .defaultNum) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.defaultStr = try container.decodeIfPresent(String.self, forKey: .defaultStr)
        self.defaultStrNullable = try container.decodeIfPresent(String.self, forKey: .defaultStrNullable)
        self.defaultStrOptional = try container.decodeIfPresent(String.self, forKey: .defaultStrOptional)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.constBigInt, forKey: .constBigInt)
        try container.encode(self.constBigIntStr, forKey: .constBigIntStr)
        try container.encode(self.constBool, forKey: .constBool)
        try container.encode(self._constDate, forKey: .constDate)
        try container.encode(self._constDateTime, forKey: .constDateTime)
        try container.encode(self._constDecimal, forKey: .constDecimal)
        try container.encode(self.constDecimalStr, forKey: .constDecimalStr)
        try container.encode(self.constEnumInt, forKey: .constEnumInt)
        try container.encode(self.constEnumStr, forKey: .constEnumStr)
        try container.encode(self.constInt, forKey: .constInt)
        try container.encode(self._constNum, forKey: .constNum)
        try container.encode(self.constStr, forKey: .constStr)
        try container.encode(self.constStrNull, forKey: .constStrNull)
        try container.encode(self.normalField, forKey: .normalField)
        try container.encodeIfPresent(self.defaultBigInt, forKey: .defaultBigInt)
        try container.encodeIfPresent(self.defaultBigIntStr, forKey: .defaultBigIntStr)
        try container.encodeIfPresent(self.defaultBool, forKey: .defaultBool)
        if self.defaultDate != nil {
            try container.encode(self._defaultDate, forKey: .defaultDate)
        }
        if self.defaultDateTime != nil {
            try container.encode(self._defaultDateTime, forKey: .defaultDateTime)
        }
        if self.defaultDecimal != nil {
            try container.encode(self._defaultDecimal, forKey: .defaultDecimal)
        }
        try container.encodeIfPresent(self.defaultDecimalStr, forKey: .defaultDecimalStr)
        try container.encodeIfPresent(self.defaultEnumInt, forKey: .defaultEnumInt)
        try container.encodeIfPresent(self.defaultEnumStr, forKey: .defaultEnumStr)
        try container.encodeIfPresent(self.defaultInt, forKey: .defaultInt)
        if self.defaultNum != nil {
            try container.encode(self._defaultNum, forKey: .defaultNum)
        }
        try container.encodeIfPresent(self.defaultStr, forKey: .defaultStr)
        try container.encodeIfPresent(self.defaultStrNullable, forKey: .defaultStrNullable)
        try container.encodeIfPresent(self.defaultStrOptional, forKey: .defaultStrOptional)
    }
}

extension Shared.DefaultsAndConsts {
    var constDateWrapper: DateOnly<Date> {
        return _constDate
    }
    var constDateTimeWrapper: DateTime<Date> {
        return _constDateTime
    }
    var constDecimalWrapper: DecimalSerialized<Double> {
        return _constDecimal
    }
    var constNumWrapper: DecimalSerialized<Double> {
        return _constNum
    }
    var defaultDateWrapper: DateOnly<Date?> {
        return _defaultDate
    }
    var defaultDateTimeWrapper: DateTime<Date?> {
        return _defaultDateTime
    }
    var defaultDecimalWrapper: DecimalSerialized<Double?> {
        return _defaultDecimal
    }
    var defaultNumWrapper: DecimalSerialized<Double?> {
        return _defaultNum
    }
}
