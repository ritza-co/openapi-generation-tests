# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations
    REQUEST_BODY_POST_APPLICATION_JSON_MAP_OF_MAP_SERVERS = [
      'http://localhost:35456'
    ].freeze

    class RequestBodyPostApplicationJsonMapOfMapResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer

      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :res, T.nilable(T::Hash[Symbol, T::Hash[Symbol, Shared::SimpleObject]])


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(T::Hash[Symbol, T::Hash[Symbol, Shared::SimpleObject]])).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
