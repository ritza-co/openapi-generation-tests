# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations
    # OK
    class RequestBodyPostJSONDataTypesInt32200ApplicationJSON < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :json, Integer, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('json') } }


      sig { params(json: Integer).void }
      def initialize(json: nil)
        @json = json
      end
    end


    class RequestBodyPostJsonDataTypesInt32Response < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :request_body_post_json_data_types_int32_200_application_json_object, T.nilable(Operations::RequestBodyPostJSONDataTypesInt32200ApplicationJSON)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), request_body_post_json_data_types_int32_200_application_json_object: T.nilable(Operations::RequestBodyPostJSONDataTypesInt32200ApplicationJSON)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, request_body_post_json_data_types_int32_200_application_json_object: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @request_body_post_json_data_types_int32_200_application_json_object = request_body_post_json_data_types_int32_200_application_json_object
      end
    end
  end
end
