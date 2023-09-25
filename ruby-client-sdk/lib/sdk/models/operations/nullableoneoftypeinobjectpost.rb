# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/nullableoneoftypeinobject'

module OpenApiSDK
  module Operations
    # OK
    class NullableOneOfTypeInObjectPostRes < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :json, Shared::NullableOneOfTypeInObject, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('json') } }


      sig { params(json: Shared::NullableOneOfTypeInObject).void }
      def initialize(json: nil)
        @json = json
      end
    end


    class NullableOneOfTypeInObjectPostResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :res, T.nilable(Operations::NullableOneOfTypeInObjectPostRes)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(Operations::NullableOneOfTypeInObjectPostRes)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
