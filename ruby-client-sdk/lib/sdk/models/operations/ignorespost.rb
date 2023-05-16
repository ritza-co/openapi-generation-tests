# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/httpbinsimplejsonobject'

module OpenApiSDK
  module Operations

    class IgnoresPostApplicationJSON < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :callback_url, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('callbackUrl') } }

      field :test_prop, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('testProp') } }


      sig { params(callback_url: T.nilable(String), test_prop: T.nilable(String)).void }
      def initialize(callback_url: nil, test_prop: nil)
        @callback_url = callback_url
        @test_prop = test_prop
      end
    end


    class IgnoresPostRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :request_body, T.nilable(Operations::IgnoresPostApplicationJSON), { 'request': { 'media_type': 'application/json' } }

      field :test_param, T.nilable(String), { 'query_param': { 'field_name': 'testParam', 'style': 'form', 'explode': true } }


      sig { params(request_body: T.nilable(Operations::IgnoresPostApplicationJSON), test_param: T.nilable(String)).void }
      def initialize(request_body: nil, test_param: nil)
        @request_body = request_body
        @test_param = test_param
      end
    end


    class IgnoresPostResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer
      # OK
      field :http_bin_simple_json_object, T.nilable(Shared::HttpBinSimpleJsonObject)

      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, http_bin_simple_json_object: T.nilable(Shared::HttpBinSimpleJsonObject), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, http_bin_simple_json_object: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @http_bin_simple_json_object = http_bin_simple_json_object
        @raw_response = raw_response
      end
    end
  end
end
