# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations
    # OK
    class RequestBodyPostJSONDataTypesMapDateTime200ApplicationJSON < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :json, T::Hash[Symbol, DateTime], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('json') } }


      sig { params(json: T::Hash[Symbol, DateTime]).void }
      def initialize(json: nil)
        @json = json
      end
    end


    class RequestBodyPostJsonDataTypesMapDateTimeResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer

      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :request_body_post_json_data_types_map_date_time_200_application_json_object, T.nilable(Operations::RequestBodyPostJSONDataTypesMapDateTime200ApplicationJSON)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), request_body_post_json_data_types_map_date_time_200_application_json_object: T.nilable(Operations::RequestBodyPostJSONDataTypesMapDateTime200ApplicationJSON)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, request_body_post_json_data_types_map_date_time_200_application_json_object: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @request_body_post_json_data_types_map_date_time_200_application_json_object = request_body_post_json_data_types_map_date_time_200_application_json_object
      end
    end
  end
end
