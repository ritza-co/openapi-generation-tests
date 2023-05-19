# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class ResponseBodies
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

    sig { returns(Utils::FieldAugmented) }
    def response_body_bytes_get

      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/bytes/100"
      headers = {}
      headers['Accept'] = 'application/octet-stream'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ResponseBodyBytesGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        res.bytes = r.env.response_body if Utils.match_content_type(content_type, 'application/octet-stream')
      end
      res
    end

    sig { returns(Utils::FieldAugmented) }
    def response_body_string_get

      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/html"
      headers = {}
      headers['Accept'] = 'text/html'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ResponseBodyStringGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        res.html = r.env.response_body if Utils.match_content_type(content_type, 'text/html')
      end
      res
    end

    sig { returns(Utils::FieldAugmented) }
    def response_body_xml_get

      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/xml"
      headers = {}
      headers['Accept'] = 'application/xml'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ResponseBodyXmlGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        res.xml = r.env.response_body if Utils.match_content_type(content_type, 'application/xml')
      end
      res
    end
  end
end
