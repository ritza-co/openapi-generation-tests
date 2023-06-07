# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Globals
    extend T::Sig
    sig { params(sdk: OpenApiSDK::SDK, client: Faraday::Connection, server_url: String, language: String, sdk_version: String, gen_version: String, gbls: T::Hash[Symbol, T::Hash[Symbol, T::Hash[Symbol, Object]]]).void }
    def initialize(sdk, client, server_url, language, sdk_version, gen_version, gbls)
      @sdk = sdk
      @client = client
      @server_url = server_url
      @language = language
      @sdk_version = sdk_version
      @gen_version = gen_version
      @globals = gbls
    end

    sig { params(global_path_param: T.nilable(Integer)).returns(Utils::FieldAugmented) }
    def global_path_parameter_get(global_path_param = nil)

      request = Operations::GlobalPathParameterGetRequest.new(
        global_path_param: global_path_param
      )
      base_url = @server_url
      url = Utils.generate_url(
        Operations::GlobalPathParameterGetRequest,
        base_url,
        '/anything/globals/pathParameter/{globalPathParam}',
        request,
        @globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GlobalPathParameterGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::GlobalPathParameterGetRes)
          res.res = out
        end
      end
      res
    end

    sig { params(global_query_param: T.nilable(String)).returns(Utils::FieldAugmented) }
    def globals_query_parameter_get(global_query_param = nil)

      request = Operations::GlobalsQueryParameterGetRequest.new(
        global_query_param: global_query_param
      )
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/globals/queryParameter"
      headers = {}
      query_params = Utils.get_query_params(Operations::GlobalsQueryParameterGetRequest, request, @globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GlobalsQueryParameterGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::GlobalsQueryParameterGetRes)
          res.res = out
        end
      end
      res
    end
  end
end
