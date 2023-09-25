# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/simpleobject'

module OpenApiSDK
  module Operations
    # A successful response that contains the simpleObject sent in the request body
    class TypeFromAnchor < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # A simple object that uses all our supported primitive types and enums and has optional properties.
      # https://docs.speakeasyapi.dev - A link to the external docs.
      field :json, T.nilable(Shared::SimpleObject), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('json') } }


      sig { params(json: T.nilable(Shared::SimpleObject)).void }
      def initialize(json: nil)
        @json = json
      end
    end


    class AnchorTypesGetResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # A successful response that contains the simpleObject sent in the request body
      field :type_from_anchor, T.nilable(Operations::TypeFromAnchor)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), type_from_anchor: T.nilable(Operations::TypeFromAnchor)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, type_from_anchor: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @type_from_anchor = type_from_anchor
      end
    end
  end
end
