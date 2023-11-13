# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class RequestBodyPutMultipartDeepForm < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :arr, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('arr') } }

      field :bool, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('bool') } }

      field :int, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('int') } }

      field :map, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('map') } }

      field :num, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('num') } }

      field :obj, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('obj') } }

      field :str_, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('str') } }


      sig { params(arr: String, bool: String, int: String, map: String, num: String, obj: String, str_: String).void }
      def initialize(arr: nil, bool: nil, int: nil, map: nil, num: nil, obj: nil, str_: nil)
        @arr = arr
        @bool = bool
        @int = int
        @map = map
        @num = num
        @obj = obj
        @str_ = str_
      end
    end

    # OK
    class RequestBodyPutMultipartDeepRes < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :form, Operations::RequestBodyPutMultipartDeepForm, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('form') } }


      sig { params(form: Operations::RequestBodyPutMultipartDeepForm).void }
      def initialize(form: nil)
        @form = form
      end
    end


    class RequestBodyPutMultipartDeepResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :res, T.nilable(Operations::RequestBodyPutMultipartDeepRes)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(Operations::RequestBodyPutMultipartDeepRes)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
