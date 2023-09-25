# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class GetDocumentationPerLanguageRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The language parameter for this endpoint.
      field :language, String, { 'query_param': { 'field_name': 'language', 'style': 'form', 'explode': true } }


      sig { params(language: String).void }
      def initialize(language: nil)
        @language = language
      end
    end


    class GetDocumentationPerLanguageResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
      end
    end
  end
end
