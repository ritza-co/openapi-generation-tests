# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared

    class TypedObject1Type < T::Enum
      enums do
        OBJ1 = new('obj1')
      end
    end



    class TypedObject1 < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :type, Shared::TypedObject1Type, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::TypedObject1Type, false) } }

      field :value, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('value') } }


      sig { params(type: Shared::TypedObject1Type, value: String).void }
      def initialize(type: nil, value: nil)
        @type = type
        @value = value
      end
    end
  end
end
