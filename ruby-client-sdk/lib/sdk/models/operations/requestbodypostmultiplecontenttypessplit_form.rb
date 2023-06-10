# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class RequestBodyPostMultipleContentTypesSplitApplicationXWwwFormUrlencoded < OpenApiSDK::Utils::FieldAugmented
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


    class RequestBodyPostMultipleContentTypesSplitFormResForm < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig



      
      def initialize; end
    end


    class RequestBodyPostMultipleContentTypesSplitFormResJson < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig



      
      def initialize; end
    end

    # OK
    class RequestBodyPostMultipleContentTypesSplitFormRes < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :form, T.nilable(Operations::RequestBodyPostMultipleContentTypesSplitFormResForm), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('form') } }

      field :json, T.nilable(Operations::RequestBodyPostMultipleContentTypesSplitFormResJson), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('json') } }


      sig { params(form: T.nilable(Operations::RequestBodyPostMultipleContentTypesSplitFormResForm), json: T.nilable(Operations::RequestBodyPostMultipleContentTypesSplitFormResJson)).void }
      def initialize(form: nil, json: nil)
        @form = form
        @json = json
      end
    end


    class RequestBodyPostMultipleContentTypesSplitFormResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer

      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :res, T.nilable(Operations::RequestBodyPostMultipleContentTypesSplitFormRes)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(Operations::RequestBodyPostMultipleContentTypesSplitFormRes)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
