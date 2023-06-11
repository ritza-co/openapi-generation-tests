# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class RequestBodyPostMultipleContentTypesSplitApplicationJSON < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :bool, T::Boolean, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('bool') } }

      field :num, Float, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('num') } }

      field :str_, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('str') } }


      sig { params(bool: T::Boolean, num: Float, str_: String).void }
      def initialize(bool: nil, num: nil, str_: nil)
        @bool = bool
        @num = num
        @str_ = str_
      end
    end

    # OK
    class RequestBodyPostMultipleContentTypesSplitJsonRes < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :form, T.nilable(T::Hash[Symbol, Object]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('form') } }

      field :json, T.nilable(T::Hash[Symbol, Object]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('json') } }


      sig { params(form: T.nilable(T::Hash[Symbol, Object]), json: T.nilable(T::Hash[Symbol, Object])).void }
      def initialize(form: nil, json: nil)
        @form = form
        @json = json
      end
    end


    class RequestBodyPostMultipleContentTypesSplitJsonResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer

      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :res, T.nilable(Operations::RequestBodyPostMultipleContentTypesSplitJsonRes)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(Operations::RequestBodyPostMultipleContentTypesSplitJsonRes)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
