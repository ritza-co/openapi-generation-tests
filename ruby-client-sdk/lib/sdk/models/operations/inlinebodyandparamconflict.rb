# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class InlineBodyAndParamConflictRequestBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :str_, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('str') } }


      sig { params(str_: String).void }
      def initialize(str_: nil)
        @str_ = str_
      end
    end


    class InlineBodyAndParamConflictRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :request_body, Operations::InlineBodyAndParamConflictRequestBody, { 'request': { 'media_type': 'application/json' } }

      field :str_, String, { 'query_param': { 'field_name': 'str', 'style': 'form', 'explode': true } }


      sig { params(request_body: Operations::InlineBodyAndParamConflictRequestBody, str_: String).void }
      def initialize(request_body: nil, str_: nil)
        @request_body = request_body
        @str_ = str_
      end
    end


    class InlineBodyAndParamConflictResJson < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :str_, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('str') } }


      sig { params(str_: String).void }
      def initialize(str_: nil)
        @str_ = str_
      end
    end

    # OK
    class InlineBodyAndParamConflictRes < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :args, T::Hash[Symbol, String], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('args') } }

      field :json, Operations::InlineBodyAndParamConflictResJson, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('json') } }


      sig { params(args: T::Hash[Symbol, String], json: Operations::InlineBodyAndParamConflictResJson).void }
      def initialize(args: nil, json: nil)
        @args = args
        @json = json
      end
    end


    class InlineBodyAndParamConflictResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :res, T.nilable(Operations::InlineBodyAndParamConflictRes)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(Operations::InlineBodyAndParamConflictRes)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
