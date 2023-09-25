# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class NullableRequiredPropertyPostRequestBodyNullableRequiredEnum < T::Enum
      enums do
        FIRST = new('first')
        SECOND = new('second')
      end
    end



    class NullableRequiredPropertyPostRequestBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :nullable_required_array, T::Array[Float], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('NullableRequiredArray') } }

      field :nullable_required_enum, Operations::NullableRequiredPropertyPostRequestBodyNullableRequiredEnum, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('NullableRequiredEnum'), 'decoder': Utils.enum_from_string(Operations::NullableRequiredPropertyPostRequestBodyNullableRequiredEnum, false) } }

      field :nullable_required_int, Integer, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('NullableRequiredInt') } }

      field :nullable_optional_int, T.nilable(Integer), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('NullableOptionalInt') } }


      sig { params(nullable_required_array: T::Array[Float], nullable_required_enum: Operations::NullableRequiredPropertyPostRequestBodyNullableRequiredEnum, nullable_required_int: Integer, nullable_optional_int: T.nilable(Integer)).void }
      def initialize(nullable_required_array: nil, nullable_required_enum: nil, nullable_required_int: nil, nullable_optional_int: nil)
        @nullable_required_array = nullable_required_array
        @nullable_required_enum = nullable_required_enum
        @nullable_required_int = nullable_required_int
        @nullable_optional_int = nullable_optional_int
      end
    end


    class NullableRequiredPropertyPostResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # OK
      field :nullable_required_property_post_200_application_json_string, T.nilable(String)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, nullable_required_property_post_200_application_json_string: T.nilable(String), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, nullable_required_property_post_200_application_json_string: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @nullable_required_property_post_200_application_json_string = nullable_required_property_post_200_application_json_string
        @raw_response = raw_response
      end
    end
  end
end
