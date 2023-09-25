# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations
    # Successful authentication.
    class GlobalBearerAuthToken < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :authenticated, T::Boolean, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('authenticated') } }

      field :token, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('token') } }


      sig { params(authenticated: T::Boolean, token: String).void }
      def initialize(authenticated: nil, token: nil)
        @authenticated = authenticated
        @token = token
      end
    end


    class GlobalBearerAuthResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # Successful authentication.
      field :token, T.nilable(Operations::GlobalBearerAuthToken)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), token: T.nilable(Operations::GlobalBearerAuthToken)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, token: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @token = token
      end
    end
  end
end
