# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Flattening
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

    sig { params(simple_object: Shared::SimpleObject, str_: String).returns(Utils::FieldAugmented) }
    def component_body_and_param_conflict(simple_object, str_)

      request = Operations::ComponentBodyAndParamConflictRequest.new(
        simple_object: simple_object,
        str_: str_,
      )
      
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/flattening/componentBodyAndParamConflict"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :simple_object, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(Operations::ComponentBodyAndParamConflictRequest, request, @globals)
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.post(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ComponentBodyAndParamConflictResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::ComponentBodyAndParamConflictRes)
          res.res = out
        end
      end
      res
    end

    sig { params(param_str: String, simple_object: Shared::SimpleObject).returns(Utils::FieldAugmented) }
    def component_body_and_param_no_conflict(param_str, simple_object)

      request = Operations::ComponentBodyAndParamNoConflictRequest.new(
        param_str: param_str,
        simple_object: simple_object,
      )
      
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/flattening/componentBodyAndParamNoConflict"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :simple_object, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(Operations::ComponentBodyAndParamNoConflictRequest, request, @globals)
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.post(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ComponentBodyAndParamNoConflictResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::ComponentBodyAndParamNoConflictRes)
          res.res = out
        end
      end
      res
    end

    sig { params(str_path_parameter: String, str_query_parameter: String).returns(Utils::FieldAugmented) }
    def conflicting_params(str_path_parameter, str_query_parameter)

      request = Operations::ConflictingParamsRequest.new(
        str_path_parameter: str_path_parameter,
        str_query_parameter: str_query_parameter,
      )
      
      base_url = @server_url
      url = Utils.generate_url(
        Operations::ConflictingParamsRequest,
        base_url,
        '/anything/flattening/conflictingParams/{str}',
        request, 
        @globals
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::ConflictingParamsRequest, request, @globals)
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ConflictingParamsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::ConflictingParamsRes)
          res.res = out
        end
      end
      res
    end

    sig { params(request_body: Operations::InlineBodyAndParamConflictRequestBody, str_: String).returns(Utils::FieldAugmented) }
    def inline_body_and_param_conflict(request_body, str_)

      request = Operations::InlineBodyAndParamConflictRequest.new(
        request_body: request_body,
        str_: str_,
      )
      
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/flattening/inlineBodyAndParamConflict"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(Operations::InlineBodyAndParamConflictRequest, request, @globals)
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.post(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::InlineBodyAndParamConflictResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::InlineBodyAndParamConflictRes)
          res.res = out
        end
      end
      res
    end

    sig { params(request_body: Operations::InlineBodyAndParamNoConflictRequestBody, param_str: String).returns(Utils::FieldAugmented) }
    def inline_body_and_param_no_conflict(request_body, param_str)

      request = Operations::InlineBodyAndParamNoConflictRequest.new(
        request_body: request_body,
        param_str: param_str,
      )
      
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/flattening/inlineBodyAndParamNoConflict"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(Operations::InlineBodyAndParamNoConflictRequest, request, @globals)
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.post(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::InlineBodyAndParamNoConflictResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::InlineBodyAndParamNoConflictRes)
          res.res = out
        end
      end
      res
    end
  end
end
