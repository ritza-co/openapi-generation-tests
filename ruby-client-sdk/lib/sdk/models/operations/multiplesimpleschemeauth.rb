# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations
    MULTIPLE_SIMPLE_SCHEME_AUTH_SERVERS = [
      'http://localhost:35456'
    ].freeze

    class MultipleSimpleSchemeAuthSecurity < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :api_key_auth_new, String, { 'security': { 'scheme': true, 'type': 'apiKey', 'sub_type': 'header', 'field_name': 'x-api-key' } }

      field :oauth2, String, { 'security': { 'scheme': true, 'type': 'oauth2', 'field_name': 'Authorization' } }


      sig { params(api_key_auth_new: String, oauth2: String).void }
      def initialize(api_key_auth_new: nil, oauth2: nil)
        @api_key_auth_new = api_key_auth_new
        @oauth2 = oauth2
      end
    end


    class MultipleSimpleSchemeAuthResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer

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
