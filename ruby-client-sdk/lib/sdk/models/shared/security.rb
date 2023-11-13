# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared

    class Security < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :api_key_auth, T.nilable(String), { 'security': { 'scheme': true, 'type': 'apiKey', 'sub_type': 'header', 'field_name': 'Authorization' } }

      field :api_key_auth_new, T.nilable(String), { 'security': { 'scheme': true, 'type': 'apiKey', 'sub_type': 'header', 'field_name': 'x-api-key' } }

      field :oauth2, T.nilable(String), { 'security': { 'scheme': true, 'type': 'oauth2', 'field_name': 'Authorization' } }


      sig { params(api_key_auth: T.nilable(String), api_key_auth_new: T.nilable(String), oauth2: T.nilable(String)).void }
      def initialize(api_key_auth: nil, api_key_auth_new: nil, oauth2: nil)
        @api_key_auth = api_key_auth
        @api_key_auth_new = api_key_auth_new
        @oauth2 = oauth2
      end
    end
  end
end
