# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/simpleobject'

module OpenApiSDK
  module Operations

    class SimplePathParameterObjectsRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # A simple object that uses all our supported primitive types and enums and has optional properties.
      field :obj_param, Shared::SimpleObject, { 'path_param': { 'field_name': 'objParam', 'style': 'simple', 'explode': false } }
      # A simple object that uses all our supported primitive types and enums and has optional properties.
      field :obj_param_exploded, Shared::SimpleObject, { 'path_param': { 'field_name': 'objParamExploded', 'style': 'simple', 'explode': true } }


      sig { params(obj_param: Shared::SimpleObject, obj_param_exploded: Shared::SimpleObject).void }
      def initialize(obj_param: nil, obj_param_exploded: nil)
        @obj_param = obj_param
        @obj_param_exploded = obj_param_exploded
      end
    end

    # OK
    class SimplePathParameterObjectsRes < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :url, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('url') } }


      sig { params(url: String).void }
      def initialize(url: nil)
        @url = url
      end
    end


    class SimplePathParameterObjectsResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :res, T.nilable(Operations::SimplePathParameterObjectsRes)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(Operations::SimplePathParameterObjectsRes)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
