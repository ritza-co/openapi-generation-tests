# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class RequestBodyPutMultipartFileRequestBodyFile < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content, String, { 'multipart_form': { 'content': true } }

      field :file, String, { 'multipart_form': { 'field_name': 'file' } }


      sig { params(content: String, file: String).void }
      def initialize(content: nil, file: nil)
        @content = content
        @file = file
      end
    end


    class RequestBodyPutMultipartFileRequestBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :file, T.nilable(Operations::RequestBodyPutMultipartFileRequestBodyFile), { 'multipart_form': { 'file': true } }


      sig { params(file: T.nilable(Operations::RequestBodyPutMultipartFileRequestBodyFile)).void }
      def initialize(file: nil)
        @file = file
      end
    end

    # OK
    class RequestBodyPutMultipartFileRes < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :files, T::Hash[Symbol, String], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('files') } }


      sig { params(files: T::Hash[Symbol, String]).void }
      def initialize(files: nil)
        @files = files
      end
    end


    class RequestBodyPutMultipartFileResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer

      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :res, T.nilable(Operations::RequestBodyPutMultipartFileRes)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(Operations::RequestBodyPutMultipartFileRes)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
