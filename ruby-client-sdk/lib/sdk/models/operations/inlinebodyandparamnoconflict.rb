# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class InlineBodyAndParamNoConflictRequestBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :body_str, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('bodyStr') } }


      sig { params(body_str: String).void }
      def initialize(body_str: nil)
        @body_str = body_str
      end
    end


    class InlineBodyAndParamNoConflictRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :param_str, String, { 'query_param': { 'field_name': 'paramStr', 'style': 'form', 'explode': true } }

      field :request_body, Operations::InlineBodyAndParamNoConflictRequestBody, { 'request': { 'media_type': 'application/json' } }


      sig { params(param_str: String, request_body: Operations::InlineBodyAndParamNoConflictRequestBody).void }
      def initialize(param_str: nil, request_body: nil)
        @param_str = param_str
        @request_body = request_body
      end
    end


    class InlineBodyAndParamNoConflictResJson < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :body_str, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('bodyStr') } }


      sig { params(body_str: String).void }
      def initialize(body_str: nil)
        @body_str = body_str
      end
    end

    # OK
    class InlineBodyAndParamNoConflictRes < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :args, T::Hash[Symbol, String], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('args') } }

      field :json, Operations::InlineBodyAndParamNoConflictResJson, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('json') } }


      sig { params(args: T::Hash[Symbol, String], json: Operations::InlineBodyAndParamNoConflictResJson).void }
      def initialize(args: nil, json: nil)
        @args = args
        @json = json
      end
    end


    class InlineBodyAndParamNoConflictResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer

      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :res, T.nilable(Operations::InlineBodyAndParamNoConflictRes)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(Operations::InlineBodyAndParamNoConflictRes)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
