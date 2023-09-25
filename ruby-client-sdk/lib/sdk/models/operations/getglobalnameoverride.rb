# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/simpleobject'

module OpenApiSDK
  module Operations
    # A successful response that contains the simpleObject sent in the request body
    class GetGlobalNameOverride200ApplicationJSON < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # A simple object that uses all our supported primitive types and enums and has optional properties.
      # https://docs.speakeasyapi.dev - A link to the external docs.
      field :json, T.nilable(Shared::SimpleObject), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('json') } }


      sig { params(json: T.nilable(Shared::SimpleObject)).void }
      def initialize(json: nil)
        @json = json
      end
    end


    class GetGlobalNameOverrideResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # A successful response that contains the simpleObject sent in the request body
      field :get_global_name_override_200_application_json_object, T.nilable(Operations::GetGlobalNameOverride200ApplicationJSON)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, get_global_name_override_200_application_json_object: T.nilable(Operations::GetGlobalNameOverride200ApplicationJSON), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, get_global_name_override_200_application_json_object: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @get_global_name_override_200_application_json_object = get_global_name_override_200_application_json_object
        @raw_response = raw_response
      end
    end
  end
end
