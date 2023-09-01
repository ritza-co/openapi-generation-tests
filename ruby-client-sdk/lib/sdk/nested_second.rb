# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class NestedSecond

    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { returns(Utils::FieldAugmented) }
    def get

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/nested/second"
      headers = {}
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::NestedSecondGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      end
      res
    end
  end
end
