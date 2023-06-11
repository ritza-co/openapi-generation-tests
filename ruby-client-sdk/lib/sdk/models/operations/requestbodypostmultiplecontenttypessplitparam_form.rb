# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class RequestBodyPostMultipleContentTypesSplitParamApplicationXWwwFormUrlencoded < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :bool3, T::Boolean, { 'form': { 'field_name': 'bool3' } }

      field :num3, Float, { 'form': { 'field_name': 'num3' } }

      field :str3, String, { 'form': { 'field_name': 'str3' } }


      sig { params(bool3: T::Boolean, num3: Float, str3: String).void }
      def initialize(bool3: nil, num3: nil, str3: nil)
        @bool3 = bool3
        @num3 = num3
        @str3 = str3
      end
    end


    class RequestBodyPostMultipleContentTypesSplitParamFormRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :param_str, String, { 'query_param': { 'field_name': 'paramStr', 'style': 'form', 'explode': true } }

      field :request_body, Operations::RequestBodyPostMultipleContentTypesSplitParamApplicationXWwwFormUrlencoded, { 'request': { 'media_type': 'application/x-www-form-urlencoded' } }


      sig { params(param_str: String, request_body: Operations::RequestBodyPostMultipleContentTypesSplitParamApplicationXWwwFormUrlencoded).void }
      def initialize(param_str: nil, request_body: nil)
        @param_str = param_str
        @request_body = request_body
      end
    end

    # OK
    class RequestBodyPostMultipleContentTypesSplitParamFormRes < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :args, T.nilable(T::Hash[Symbol, String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('args') } }

      field :form, T.nilable(T::Hash[Symbol, Object]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('form') } }

      field :json, T.nilable(T::Hash[Symbol, Object]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('json') } }


      sig { params(args: T.nilable(T::Hash[Symbol, String]), form: T.nilable(T::Hash[Symbol, Object]), json: T.nilable(T::Hash[Symbol, Object])).void }
      def initialize(args: nil, form: nil, json: nil)
        @args = args
        @form = form
        @json = json
      end
    end


    class RequestBodyPostMultipleContentTypesSplitParamFormResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer

      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :res, T.nilable(Operations::RequestBodyPostMultipleContentTypesSplitParamFormRes)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(Operations::RequestBodyPostMultipleContentTypesSplitParamFormRes)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
