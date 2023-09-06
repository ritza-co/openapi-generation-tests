# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/nullableobject'

module OpenApiSDK
  module Operations

    class NullableRequiredSharedObjectPostRequestBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :nullable_required_obj, Shared::NullableObject, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('NullableRequiredObj') } }

      field :nullable_optional_obj, T.nilable(Shared::NullableObject), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('NullableOptionalObj') } }


      sig { params(nullable_required_obj: Shared::NullableObject, nullable_optional_obj: T.nilable(Shared::NullableObject)).void }
      def initialize(nullable_required_obj: nil, nullable_optional_obj: nil)
        @nullable_required_obj = nullable_required_obj
        @nullable_optional_obj = nullable_optional_obj
      end
    end


    class NullableRequiredSharedObjectPostResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer
      # OK
      field :nullable_required_shared_object_post_200_application_json_string, T.nilable(String)

      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, nullable_required_shared_object_post_200_application_json_string: T.nilable(String), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, nullable_required_shared_object_post_200_application_json_string: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @nullable_required_shared_object_post_200_application_json_string = nullable_required_shared_object_post_200_application_json_string
        @raw_response = raw_response
      end
    end
  end
end
