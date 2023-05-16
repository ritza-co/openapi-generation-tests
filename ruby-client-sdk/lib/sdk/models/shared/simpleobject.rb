# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/enum_enum'

module OpenApiSDK
  module Shared
    # SimpleObjectInt32EnumEnum - An int32 enum property.
    class SimpleObjectInt32EnumEnum < T::Enum
      enums do
        FIFTY_FIVE = new(55)
        SIXTY_NINE = new(69)
        ONE_HUNDRED_AND_EIGHTY_ONE = new(181)
      end
    end


    # SimpleObjectIntEnumEnum - An integer enum property.
    class SimpleObjectIntEnumEnum < T::Enum
      enums do
        FIRST = new(1)
        SECOND = new(2)
        THIRD = new(3)
      end
    end


    # A simple object that uses all our supported primitive types and enums and has optional properties.
    # https://docs.speakeasyapi.dev - A link to the external docs.
    class SimpleObject < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # An any property.
      field :any, Object, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('any') }, 'header': { 'field_name': 'any' }, 'path_param': { 'field_name': 'any' }, 'query_param': { 'field_name': 'any' }, 'form': { 'field_name': 'any' }, 'multipart_form': { 'field_name': 'any' } }
      # A boolean property.
      field :bool, T::Boolean, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('bool') }, 'header': { 'field_name': 'bool' }, 'path_param': { 'field_name': 'bool' }, 'query_param': { 'field_name': 'bool' }, 'form': { 'field_name': 'bool' }, 'multipart_form': { 'field_name': 'bool' } }
      # A date property.
      field :date, Date, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('date'), 'decoder': Utils.date_from_iso_format(false) }, 'header': { 'field_name': 'date' }, 'path_param': { 'field_name': 'date' }, 'query_param': { 'field_name': 'date' }, 'form': { 'field_name': 'date' }, 'multipart_form': { 'field_name': 'date' } }
      # A date-time property.
      field :date_time, DateTime, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('dateTime'), 'decoder': Utils.datetime_from_iso_format(false) }, 'header': { 'field_name': 'dateTime' }, 'path_param': { 'field_name': 'dateTime' }, 'query_param': { 'field_name': 'dateTime' }, 'form': { 'field_name': 'dateTime' }, 'multipart_form': { 'field_name': 'dateTime' } }
      # An string based enum
      field :enum, Shared::EnumEnum, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('enum'), 'decoder': Utils.enum_from_string(Shared::EnumEnum, false) }, 'header': { 'field_name': 'enum' }, 'path_param': { 'field_name': 'enum' }, 'query_param': { 'field_name': 'enum' }, 'form': { 'field_name': 'enum' }, 'multipart_form': { 'field_name': 'enum' } }
      # A float32 property.
      field :float32, Float, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('float32') }, 'header': { 'field_name': 'float32' }, 'path_param': { 'field_name': 'float32' }, 'query_param': { 'field_name': 'float32' }, 'form': { 'field_name': 'float32' }, 'multipart_form': { 'field_name': 'float32' } }
      # An integer property.
      field :int, Integer, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('int') }, 'header': { 'field_name': 'int' }, 'path_param': { 'field_name': 'int' }, 'query_param': { 'field_name': 'int' }, 'form': { 'field_name': 'int' }, 'multipart_form': { 'field_name': 'int' } }
      # An int32 property.
      field :int32, Integer, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('int32') }, 'header': { 'field_name': 'int32' }, 'path_param': { 'field_name': 'int32' }, 'query_param': { 'field_name': 'int32' }, 'form': { 'field_name': 'int32' }, 'multipart_form': { 'field_name': 'int32' } }
      # An int32 enum property.
      field :int32_enum, Shared::SimpleObjectInt32EnumEnum, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('int32Enum'), 'decoder': Utils.enum_from_string(Shared::SimpleObjectInt32EnumEnum, false) }, 'header': { 'field_name': 'int32Enum' }, 'path_param': { 'field_name': 'int32Enum' }, 'query_param': { 'field_name': 'int32Enum' }, 'form': { 'field_name': 'int32Enum' }, 'multipart_form': { 'field_name': 'int32Enum' } }
      # An integer enum property.
      field :int_enum, Shared::SimpleObjectIntEnumEnum, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('intEnum'), 'decoder': Utils.enum_from_string(Shared::SimpleObjectIntEnumEnum, false) }, 'header': { 'field_name': 'intEnum' }, 'path_param': { 'field_name': 'intEnum' }, 'query_param': { 'field_name': 'intEnum' }, 'form': { 'field_name': 'intEnum' }, 'multipart_form': { 'field_name': 'intEnum' } }
      # A number property.
      field :num, Float, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('num') }, 'header': { 'field_name': 'num' }, 'path_param': { 'field_name': 'num' }, 'query_param': { 'field_name': 'num' }, 'form': { 'field_name': 'num' }, 'multipart_form': { 'field_name': 'num' } }
      # A string property.
      field :str_, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('str') }, 'header': { 'field_name': 'str' }, 'path_param': { 'field_name': 'str' }, 'query_param': { 'field_name': 'str' }, 'form': { 'field_name': 'str' }, 'multipart_form': { 'field_name': 'str' } }

      field :bigint, T.nilable(Integer), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('bigint') }, 'header': { 'field_name': 'bigint' }, 'path_param': { 'field_name': 'bigint' }, 'query_param': { 'field_name': 'bigint' }, 'form': { 'field_name': 'bigint' }, 'multipart_form': { 'field_name': 'bigint' } }

      field :bigint_str, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('bigintStr') }, 'header': { 'field_name': 'bigintStr' }, 'path_param': { 'field_name': 'bigintStr' }, 'query_param': { 'field_name': 'bigintStr' }, 'form': { 'field_name': 'bigintStr' }, 'multipart_form': { 'field_name': 'bigintStr' } }
      # An optional boolean property.
      field :bool_opt, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('boolOpt') }, 'header': { 'field_name': 'boolOpt' }, 'path_param': { 'field_name': 'boolOpt' }, 'query_param': { 'field_name': 'boolOpt' }, 'form': { 'field_name': 'boolOpt' }, 'multipart_form': { 'field_name': 'boolOpt' } }
      # An optional integer property will be null for tests.
      field :int_opt_null, T.nilable(Integer), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('intOptNull') }, 'header': { 'field_name': 'intOptNull' }, 'path_param': { 'field_name': 'intOptNull' }, 'query_param': { 'field_name': 'intOptNull' }, 'form': { 'field_name': 'intOptNull' }, 'multipart_form': { 'field_name': 'intOptNull' } }
      # An optional number property will be null for tests.
      field :num_opt_null, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('numOptNull') }, 'header': { 'field_name': 'numOptNull' }, 'path_param': { 'field_name': 'numOptNull' }, 'query_param': { 'field_name': 'numOptNull' }, 'form': { 'field_name': 'numOptNull' }, 'multipart_form': { 'field_name': 'numOptNull' } }
      # An optional string property.
      field :str_opt, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('strOpt') }, 'header': { 'field_name': 'strOpt' }, 'path_param': { 'field_name': 'strOpt' }, 'query_param': { 'field_name': 'strOpt' }, 'form': { 'field_name': 'strOpt' }, 'multipart_form': { 'field_name': 'strOpt' } }


      sig { params(any: Object, bool: T::Boolean, date: Date, date_time: DateTime, enum: Shared::EnumEnum, float32: Float, int: Integer, int32: Integer, int32_enum: Shared::SimpleObjectInt32EnumEnum, int_enum: Shared::SimpleObjectIntEnumEnum, num: Float, str_: String, bigint: T.nilable(Integer), bigint_str: T.nilable(String), bool_opt: T.nilable(T::Boolean), int_opt_null: T.nilable(Integer), num_opt_null: T.nilable(Float), str_opt: T.nilable(String)).void }
      def initialize(any: nil, bool: nil, date: nil, date_time: nil, enum: nil, float32: nil, int: nil, int32: nil, int32_enum: nil, int_enum: nil, num: nil, str_: nil, bigint: nil, bigint_str: nil, bool_opt: nil, int_opt_null: nil, num_opt_null: nil, str_opt: nil)
        @any = any
        @bool = bool
        @date = date
        @date_time = date_time
        @enum = enum
        @float32 = float32
        @int = int
        @int32 = int32
        @int32_enum = int32_enum
        @int_enum = int_enum
        @num = num
        @str_ = str_
        @bigint = bigint
        @bigint_str = bigint_str
        @bool_opt = bool_opt
        @int_opt_null = int_opt_null
        @num_opt_null = num_opt_null
        @str_opt = str_opt
      end
    end
  end
end
