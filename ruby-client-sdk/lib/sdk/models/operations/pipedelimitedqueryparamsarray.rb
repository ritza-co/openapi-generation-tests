# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/simpleobject'

module OpenApiSDK
  module Operations

    class PipeDelimitedQueryParamsArrayRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :arr_param, T.nilable(T::Array[String]), { 'query_param': { 'field_name': 'arrParam', 'style': 'pipeDelimited', 'explode': false } }

      field :arr_param_exploded, T.nilable(T::Array[Integer]), { 'query_param': { 'field_name': 'arrParamExploded', 'style': 'pipeDelimited', 'explode': true } }

      field :map_param, T.nilable(T::Hash[Symbol, String]), { 'query_param': { 'field_name': 'mapParam', 'style': 'pipeDelimited', 'explode': false } }
      # A simple object that uses all our supported primitive types and enums and has optional properties.
      field :obj_param, T.nilable(Shared::SimpleObject), { 'query_param': { 'field_name': 'objParam', 'style': 'pipeDelimited', 'explode': false } }


      sig { params(arr_param: T.nilable(T::Array[String]), arr_param_exploded: T.nilable(T::Array[Integer]), map_param: T.nilable(T::Hash[Symbol, String]), obj_param: T.nilable(Shared::SimpleObject)).void }
      def initialize(arr_param: nil, arr_param_exploded: nil, map_param: nil, obj_param: nil)
        @arr_param = arr_param
        @arr_param_exploded = arr_param_exploded
        @map_param = map_param
        @obj_param = obj_param
      end
    end


    class PipeDelimitedQueryParamsArrayResArgs < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :arr_param, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('arrParam') } }

      field :arr_param_exploded, T::Array[String], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('arrParamExploded') } }


      sig { params(arr_param: String, arr_param_exploded: T::Array[String]).void }
      def initialize(arr_param: nil, arr_param_exploded: nil)
        @arr_param = arr_param
        @arr_param_exploded = arr_param_exploded
      end
    end

    # OK
    class PipeDelimitedQueryParamsArrayRes < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :args, Operations::PipeDelimitedQueryParamsArrayResArgs, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('args') } }

      field :url, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('url') } }


      sig { params(args: Operations::PipeDelimitedQueryParamsArrayResArgs, url: String).void }
      def initialize(args: nil, url: nil)
        @args = args
        @url = url
      end
    end


    class PipeDelimitedQueryParamsArrayResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer

      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :res, T.nilable(Operations::PipeDelimitedQueryParamsArrayRes)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(Operations::PipeDelimitedQueryParamsArrayRes)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
