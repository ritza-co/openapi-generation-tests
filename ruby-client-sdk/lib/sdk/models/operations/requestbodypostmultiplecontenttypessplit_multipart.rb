# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class RequestBodyPostMultipleContentTypesSplitMultipartFormData < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :bool2, T::Boolean, { 'multipart_form': { 'field_name': 'bool2' } }

      field :num2, Float, { 'multipart_form': { 'field_name': 'num2' } }

      field :str2, String, { 'multipart_form': { 'field_name': 'str2' } }


      sig { params(bool2: T::Boolean, num2: Float, str2: String).void }
      def initialize(bool2: nil, num2: nil, str2: nil)
        @bool2 = bool2
        @num2 = num2
        @str2 = str2
      end
    end

    # OK
    class RequestBodyPostMultipleContentTypesSplitMultipartRes < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :form, T.nilable(T::Hash[Symbol, Object]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('form') } }

      field :json, T.nilable(T::Hash[Symbol, Object]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('json') } }


      sig { params(form: T.nilable(T::Hash[Symbol, Object]), json: T.nilable(T::Hash[Symbol, Object])).void }
      def initialize(form: nil, json: nil)
        @form = form
        @json = json
      end
    end


    class RequestBodyPostMultipleContentTypesSplitMultipartResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer

      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :res, T.nilable(Operations::RequestBodyPostMultipleContentTypesSplitMultipartRes)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(Operations::RequestBodyPostMultipleContentTypesSplitMultipartRes)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
