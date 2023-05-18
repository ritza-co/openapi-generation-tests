# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Generation
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
    def anchor_types_get

      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/anchorTypes"
      headers = {}
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::AnchorTypesGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::TypeFromAnchor)
          res.type_from_anchor = out
        end
      end
      res
    end

    sig { returns(Utils::FieldAugmented) }
    def circular_reference_get

      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/circularReference"
      headers = {}
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::CircularReferenceGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ValidCircularReferenceObject)
          res.valid_circular_reference_object = out
        end
      end
      res
    end

    sig { params(deprecated_parameter: T.nilable(String)).returns(Utils::FieldAugmented) }
    def deprecated_no_comments_get(deprecated_parameter = nil)
      # deprecated_no_comments_get
      # 
      # @deprecated this null will be removed in a future release, please migrate away from it as soon as possible
      request = Operations::DeprecatedNoCommentsGetRequest.new(
        deprecated_parameter: deprecated_parameter,
      )
      
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/deprecatedNoComments"
      headers = {}
      query_params = Utils.get_query_params(Operations::DeprecatedNoCommentsGetRequest, request, @globals)
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::DeprecatedNoCommentsGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      end
      res
    end

    sig { params(deprecated_parameter: T.nilable(String)).returns(Utils::FieldAugmented) }
    def deprecated_with_comments_get(deprecated_parameter = nil)
      # deprecated_with_comments_get - This is an endpoint setup to test deprecation with comments
      # 
      # @deprecated this null will be removed in a future release, please migrate away from it as soon as possible
      request = Operations::DeprecatedWithCommentsGetRequest.new(
        deprecated_parameter: deprecated_parameter,
      )
      
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/deprecatedWithComments"
      headers = {}
      query_params = Utils.get_query_params(Operations::DeprecatedWithCommentsGetRequest, request, @globals)
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::DeprecatedWithCommentsGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      end
      res
    end

    sig { returns(Utils::FieldAugmented) }
    def global_name_overridden

      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/globalNameOverride"
      headers = {}
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetGlobalNameOverrideResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::GetGlobalNameOverride200ApplicationJSON)
          res.get_global_name_override_200_application_json_object = out
        end
      end
      res
    end

    sig { returns(Utils::FieldAugmented) }
    def ignored_generation_get

      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/ignoredGeneration"
      headers = {}
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::IgnoredGenerationGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::IgnoredGenerationGet200ApplicationJSON)
          res.ignored_generation_get_200_application_json_object = out
        end
      end
      res
    end

    sig { params(request_body: T.nilable(Operations::IgnoresPostApplicationJSON), test_param: T.nilable(String)).returns(Utils::FieldAugmented) }
    def ignores_post(request_body = nil, test_param = nil)

      request = Operations::IgnoresPostRequest.new(
        request_body: request_body,
        test_param: test_param,
      )
      
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/ignores"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(Operations::IgnoresPostRequest, request, @globals)
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

      res = Operations::IgnoresPostResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::HttpBinSimpleJsonObject)
          res.http_bin_simple_json_object = out
        end
      end
      res
    end

    sig { params(test_query_param: String).returns(Utils::FieldAugmented) }
    def name_override(test_query_param)

      request = Operations::NameOverrideGetRequest.new(
        test_query_param: test_query_param,
      )
      
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/nameOverride"
      headers = {}
      query_params = Utils.get_query_params(Operations::NameOverrideGetRequest, request, @globals)
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::NameOverrideGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::OverridenResponse)
          res.overriden_response = out
        end
      end
      res
    end

    sig { params(request: Operations::UsageExamplePostRequest, security: Operations::UsageExamplePostSecurity).returns(Utils::FieldAugmented) }
    def usage_example_post(request, security)
      # usage_example_post - An operation used for testing usage examples
      # An operation used for testing usage examples that includes a large array of parameters and input types to ensure that all are handled correctly
      # https://docs.example.com - Usage example docs
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/usageExample"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(Operations::UsageExamplePostRequest, request, @globals)
      headers['user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version}"

      r = @client.post(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, security) if !security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::UsageExamplePostResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::UsageExamplePost200ApplicationJSON)
          res.usage_example_post_200_application_json_object = out
        end
      end
      res
    end
  end
end
