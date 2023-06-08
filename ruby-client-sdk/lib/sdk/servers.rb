# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Servers
    extend T::Sig
    sig { params(sdk: OpenApiSDK::SDK, client: Faraday::Connection, server_url: String, language: String, sdk_version: String, gen_version: String, openapi_doc_version: String, gbls: T::Hash[Symbol, T::Hash[Symbol, T::Hash[Symbol, Object]]]).void }
    def initialize(sdk, client, server_url, language, sdk_version, gen_version, openapi_doc_version, gbls)
      @sdk = sdk
      @client = client
      @server_url = server_url
      @language = language
      @sdk_version = sdk_version
      @gen_version = gen_version
      @openapi_doc_version = openapi_doc_version
      @globals = gbls
    end

    sig { returns(Utils::FieldAugmented) }
    def select_global_server

      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/selectGlobalServer"
      headers = {}
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version} #{@openapi_doc_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::SelectGlobalServerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        res.headers = r.headers
      end
      res
    end

    sig { params(server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def select_server_with_id(server_url = nil)
      # select_server_with_id - Select a server by ID.
      base_url = Operations::SELECT_SERVER_WITH_ID_SERVERS[:SELECT_SERVER_WITH_ID_SERVER_VALID]
      base_url = server_url if !server_url.nil?
      url = "#{base_url.delete_suffix('/')}/anything/selectServerWithID"
      headers = {}
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version} #{@openapi_doc_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::SelectServerWithIDResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      end
      res
    end

    sig { params(server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def server_with_templates(server_url = nil)

      base_url = Operations::SERVER_WITH_TEMPLATES_SERVERS[0]
      base_url = server_url if !server_url.nil?
      url = "#{base_url.delete_suffix('/')}/anything/serverWithTemplates"
      headers = {}
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version} #{@openapi_doc_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ServerWithTemplatesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      end
      res
    end

    sig { returns(Utils::FieldAugmented) }
    def server_with_templates_global

      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/serverWithTemplatesGlobal"
      headers = {}
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version} #{@openapi_doc_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ServerWithTemplatesGlobalResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      end
      res
    end

    sig { params(server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def servers_by_id_with_templates(server_url = nil)

      base_url = Operations::SERVERS_BY_ID_WITH_TEMPLATES_SERVERS[:SERVERS_BY_ID_WITH_TEMPLATES_SERVER_MAIN]
      base_url = server_url if !server_url.nil?
      url = "#{base_url.delete_suffix('/')}/anything/serversByIDWithTemplates"
      headers = {}
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version} #{@openapi_doc_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ServersByIDWithTemplatesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      end
      res
    end
  end
end
