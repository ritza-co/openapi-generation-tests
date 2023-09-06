# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations
    REQUEST_BODY_READ_ONLY_UNION_SERVERS = [
      'http://localhost:35456'
    ].freeze

    class RequestBodyReadOnlyUnionResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer

      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :weakly_typed_one_of_read_only_object, T.nilable(Object)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), weakly_typed_one_of_read_only_object: T.nilable(Object)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, weakly_typed_one_of_read_only_object: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @weakly_typed_one_of_read_only_object = weakly_typed_one_of_read_only_object
      end
    end
  end
end
