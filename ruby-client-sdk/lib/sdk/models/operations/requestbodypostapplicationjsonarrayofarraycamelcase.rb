# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations
    REQUEST_BODY_POST_APPLICATION_JSON_ARRAY_OF_ARRAY_CAMEL_CASE_SERVERS = [
      'http://localhost:35456'
    ].freeze

    class RequestBodyPostApplicationJsonArrayOfArrayCamelCaseResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :res, T.nilable(T::Array[T::Array[Shared::SimpleObjectCamelCase]])


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(T::Array[T::Array[Shared::SimpleObjectCamelCase]])).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
