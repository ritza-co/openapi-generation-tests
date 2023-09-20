# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class AuthNew
    # Endpoints for testing authentication.
    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(request: Shared::AuthServiceRequestBody, server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def api_key_auth_global_new(request, server_url = nil)

      base_url = Utils.template_url(Operations::API_KEY_AUTH_GLOBAL_NEW_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/auth#apiKeyAuthGlobal"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ApiKeyAuthGlobalNewResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 401].include?(r.status)
      end
      res
    end

    sig { params(request: Shared::AuthServiceRequestBody, server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def auth_global(request, server_url = nil)

      base_url = Utils.template_url(Operations::AUTH_GLOBAL_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/auth#authGlobal"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::AuthGlobalResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 401].include?(r.status)
      end
      res
    end

    sig { params(request: Shared::AuthServiceRequestBody, security: Operations::BasicAuthNewSecurity, server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def basic_auth_new(request, security, server_url = nil)

      base_url = Utils.template_url(Operations::BASIC_AUTH_NEW_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/auth#basicAuth"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
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

      res = Operations::BasicAuthNewResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 401].include?(r.status)
      end
      res
    end

    sig { params(request: Shared::AuthServiceRequestBody, security: Operations::MultipleMixedOptionsAuthSecurity, server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def multiple_mixed_options_auth(request, security, server_url = nil)

      base_url = Utils.template_url(Operations::MULTIPLE_MIXED_OPTIONS_AUTH_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/auth#multipleMixedOptionsAuth"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
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

      res = Operations::MultipleMixedOptionsAuthResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 401].include?(r.status)
      end
      res
    end

    sig { params(request: Shared::AuthServiceRequestBody, security: Operations::MultipleMixedSchemeAuthSecurity, server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def multiple_mixed_scheme_auth(request, security, server_url = nil)

      base_url = Utils.template_url(Operations::MULTIPLE_MIXED_SCHEME_AUTH_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/auth#multipleMixedSchemeAuth"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
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

      res = Operations::MultipleMixedSchemeAuthResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 401].include?(r.status)
      end
      res
    end

    sig { params(request: Shared::AuthServiceRequestBody, security: Operations::MultipleOptionsWithMixedSchemesAuthSecurity, server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def multiple_options_with_mixed_schemes_auth(request, security, server_url = nil)

      base_url = Utils.template_url(Operations::MULTIPLE_OPTIONS_WITH_MIXED_SCHEMES_AUTH_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/auth#multipleOptionsWithMixedSchemesAuth"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
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

      res = Operations::MultipleOptionsWithMixedSchemesAuthResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 401].include?(r.status)
      end
      res
    end

    sig { params(request: Shared::AuthServiceRequestBody, security: Operations::MultipleOptionsWithSimpleSchemesAuthSecurity, server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def multiple_options_with_simple_schemes_auth(request, security, server_url = nil)

      base_url = Utils.template_url(Operations::MULTIPLE_OPTIONS_WITH_SIMPLE_SCHEMES_AUTH_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/auth#multipleOptionsWithSimpleSchemesAuth"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
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

      res = Operations::MultipleOptionsWithSimpleSchemesAuthResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 401].include?(r.status)
      end
      res
    end

    sig { params(request: Shared::AuthServiceRequestBody, security: Operations::MultipleSimpleOptionsAuthSecurity, server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def multiple_simple_options_auth(request, security, server_url = nil)

      base_url = Utils.template_url(Operations::MULTIPLE_SIMPLE_OPTIONS_AUTH_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/auth#multipleSimpleOptionsAuth"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
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

      res = Operations::MultipleSimpleOptionsAuthResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 401].include?(r.status)
      end
      res
    end

    sig { params(request: Shared::AuthServiceRequestBody, security: Operations::MultipleSimpleSchemeAuthSecurity, server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def multiple_simple_scheme_auth(request, security, server_url = nil)

      base_url = Utils.template_url(Operations::MULTIPLE_SIMPLE_SCHEME_AUTH_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/auth#multipleSimpleSchemeAuth"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
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

      res = Operations::MultipleSimpleSchemeAuthResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 401].include?(r.status)
      end
      res
    end

    sig { params(request: Shared::AuthServiceRequestBody, security: Operations::Oauth2AuthNewSecurity, server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def oauth2_auth_new(request, security, server_url = nil)

      base_url = Utils.template_url(Operations::OAUTH2_AUTH_NEW_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/auth#oauth2Auth"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
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

      res = Operations::Oauth2AuthNewResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 401].include?(r.status)
      end
      res
    end

    sig { params(request: Shared::AuthServiceRequestBody, security: Operations::OpenIdConnectAuthNewSecurity, server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def open_id_connect_auth_new(request, security, server_url = nil)

      base_url = Utils.template_url(Operations::OPEN_ID_CONNECT_AUTH_NEW_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/auth#openIdConnectAuth"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
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

      res = Operations::OpenIdConnectAuthNewResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 401].include?(r.status)
      end
      res
    end
  end
end
