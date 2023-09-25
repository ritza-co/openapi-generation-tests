# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class GlobalPathParameterGetRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :global_path_param, T.nilable(Integer), { 'path_param': { 'field_name': 'globalPathParam', 'style': 'simple', 'explode': false } }


      sig { params(global_path_param: T.nilable(Integer)).void }
      def initialize(global_path_param: nil)
        @global_path_param = global_path_param
      end
    end

    # OK
    class GlobalPathParameterGetRes < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :url, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('url') } }


      sig { params(url: String).void }
      def initialize(url: nil)
        @url = url
      end
    end


    class GlobalPathParameterGetResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :res, T.nilable(Operations::GlobalPathParameterGetRes)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(Operations::GlobalPathParameterGetRes)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
