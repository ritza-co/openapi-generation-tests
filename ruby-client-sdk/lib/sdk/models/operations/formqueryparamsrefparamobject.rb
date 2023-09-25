# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/refqueryparamobj'
require_relative '../shared/refqueryparamobjexploded'

module OpenApiSDK
  module Operations

    class FormQueryParamsRefParamObjectRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :ref_obj_param, T.nilable(Shared::RefQueryParamObj), { 'query_param': { 'field_name': 'refObjParam', 'style': 'form', 'explode': false } }

      field :ref_obj_param_exploded, T.nilable(Shared::RefQueryParamObjExploded), { 'query_param': { 'field_name': 'refObjParamExploded', 'style': 'form', 'explode': true } }


      sig { params(ref_obj_param: T.nilable(Shared::RefQueryParamObj), ref_obj_param_exploded: T.nilable(Shared::RefQueryParamObjExploded)).void }
      def initialize(ref_obj_param: nil, ref_obj_param_exploded: nil)
        @ref_obj_param = ref_obj_param
        @ref_obj_param_exploded = ref_obj_param_exploded
      end
    end


    class FormQueryParamsRefParamObjectResArgs < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :bool, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('bool') } }

      field :int, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('int') } }

      field :num, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('num') } }

      field :ref_obj_param, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('refObjParam') } }

      field :str_, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('str') } }


      sig { params(bool: String, int: String, num: String, ref_obj_param: String, str_: String).void }
      def initialize(bool: nil, int: nil, num: nil, ref_obj_param: nil, str_: nil)
        @bool = bool
        @int = int
        @num = num
        @ref_obj_param = ref_obj_param
        @str_ = str_
      end
    end

    # OK
    class FormQueryParamsRefParamObjectRes < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :args, Operations::FormQueryParamsRefParamObjectResArgs, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('args') } }

      field :url, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('url') } }


      sig { params(args: Operations::FormQueryParamsRefParamObjectResArgs, url: String).void }
      def initialize(args: nil, url: nil)
        @args = args
        @url = url
      end
    end


    class FormQueryParamsRefParamObjectResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :res, T.nilable(Operations::FormQueryParamsRefParamObjectRes)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(Operations::FormQueryParamsRefParamObjectRes)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
