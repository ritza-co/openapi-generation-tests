# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared

    class ExampleResourceChocolates < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :description, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('description') } }


      sig { params(description: String).void }
      def initialize(description: nil)
        @description = description
      end
    end


    class ExampleResourceEnumNumber < T::Enum
      enums do
        ONE = new(1)
        TWO = new(2)
        THREE = new(3)
      end
    end



    class ExampleResourceEnumStr < T::Enum
      enums do
        ONE = new('one')
        TWO = new('two')
        THREE = new('three')
      end
    end



    class ExampleResource < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :chocolates, T::Array[Shared::ExampleResourceChocolates], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('chocolates') } }

      field :id, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :name, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }

      field :vehicle, Object, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('vehicle') } }

      field :array_of_number, T.nilable(T::Array[Float]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('arrayOfNumber') } }

      field :array_of_string, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('arrayOfString') } }

      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('createdAt'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :enum_number, T.nilable(Shared::ExampleResourceEnumNumber), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('enumNumber'), 'decoder': Utils.enum_from_string(Shared::ExampleResourceEnumNumber, true) } }

      field :enum_str, T.nilable(Shared::ExampleResourceEnumStr), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('enumStr'), 'decoder': Utils.enum_from_string(Shared::ExampleResourceEnumStr, true) } }

      field :map_of_integer, T.nilable(T::Hash[Symbol, Integer]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('mapOfInteger') } }

      field :map_of_string, T.nilable(T::Hash[Symbol, String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('mapOfString') } }

      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('updatedAt'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(chocolates: T::Array[Shared::ExampleResourceChocolates], id: String, name: String, vehicle: Object, array_of_number: T.nilable(T::Array[Float]), array_of_string: T.nilable(T::Array[String]), created_at: T.nilable(DateTime), enum_number: T.nilable(Shared::ExampleResourceEnumNumber), enum_str: T.nilable(Shared::ExampleResourceEnumStr), map_of_integer: T.nilable(T::Hash[Symbol, Integer]), map_of_string: T.nilable(T::Hash[Symbol, String]), updated_at: T.nilable(DateTime)).void }
      def initialize(chocolates: nil, id: nil, name: nil, vehicle: nil, array_of_number: nil, array_of_string: nil, created_at: nil, enum_number: nil, enum_str: nil, map_of_integer: nil, map_of_string: nil, updated_at: nil)
        @chocolates = chocolates
        @id = id
        @name = name
        @vehicle = vehicle
        @array_of_number = array_of_number
        @array_of_string = array_of_string
        @created_at = created_at
        @enum_number = enum_number
        @enum_str = enum_str
        @map_of_integer = map_of_integer
        @map_of_string = map_of_string
        @updated_at = updated_at
      end
    end
  end
end
