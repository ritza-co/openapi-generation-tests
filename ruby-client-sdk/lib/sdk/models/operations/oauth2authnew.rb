# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations
    OAUTH2_AUTH_NEW_SERVERS = [
      'http://localhost:35456'
    ].freeze

    class Oauth2AuthNewSecurity < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :oauth2, String, { 'security': { 'scheme': true, 'type': 'oauth2', 'field_name': 'Authorization' } }


      sig { params(oauth2: String).void }
      def initialize(oauth2: nil)
        @oauth2 = oauth2
      end
    end


    class Oauth2AuthNewResponse < OpenApiSDK::Utils::FieldAugmented
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
