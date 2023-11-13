# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations
    # OK
    class ResponseBodyAdditionalPropertiesDatePostResponseBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :json, T::Hash[Symbol, Date], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('json') } }


      sig { params(json: T::Hash[Symbol, Date]).void }
      def initialize(json: nil)
        @json = json
      end
    end


    class ResponseBodyAdditionalPropertiesDatePostResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # OK
      field :object, T.nilable(Operations::ResponseBodyAdditionalPropertiesDatePostResponseBody)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, object: T.nilable(Operations::ResponseBodyAdditionalPropertiesDatePostResponseBody), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, object: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @object = object
        @raw_response = raw_response
      end
    end
  end
end
