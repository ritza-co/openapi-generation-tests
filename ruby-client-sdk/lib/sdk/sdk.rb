# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'
module OpenApiSDK
  extend T::Sig
  SERVERS = [
    'http://localhost:35123',
    'http://broken',
    'http://{hostname}:{port}',
    'http://localhost:35123/anything/{something}'
  ].freeze
  class SDK
    extend T::Sig

    attr_accessor :auth, :auth_new, :errors, :flattening, :generation, :globals, :pagination, :parameters, :request_bodies, :resource, :response_bodies, :servers, :telemetry, :unions

    attr_accessor :security, :language, :sdk_version, :gen_version

    sig do
      params(security: Shared::Security,
             global_path_param: Integer,
             global_query_param: String,
             server_url: String,
             url_params: T::Hash[Symbol, String],
             client: Faraday::Request).void
    end
    def initialize(security: nil,
                   global_path_param: nil,
                   global_query_param: nil,
                   server_url: nil,
                   url_params: nil,
                   client: nil)

      ## Instantiates the SDK configuring it with the provided parameters.
      # @param [Shared::Security] security The security details required for authentication
      # @param [Integer] global_path_param Configures the global_path_param parameter for all supported operations
      # @param [String] global_query_param Configures the global_query_param parameter for all supported operations
      # @param [String] server_url The server URL to use for all operations
      # @param [Hash<Symbol, String>] url_params Parameters to optionally template the server URL with
      # @param [Faraday::Request] client The faraday HTTP client to use for all operations

      @client = Faraday.new(request: {
                              params_encoder: Faraday::FlatParamsEncoder
                            }) do |f|
        f.request :multipart, {}
        # f.response :logger
      end

      
      @_globals = {
        'parameters': {
          'queryParam': {
            'global_query_param': global_query_param
          },
          'pathParam': {
            'global_path_param': global_path_param
          }
        }
      }


      @security = nil
      @server_url = SERVERS[0]
      @language = 'ruby'
      @sdk_version = '1.8.1'
      @gen_version = '2.39.8'
      @openapi_doc_version = '0.1.0'
      init_sdks
    end

    sig { params(server_url: String, params: T.nilable(T::Hash[Symbol, String])).void }
    def config_server_url(server_url, params)
      if params.nil?
        @server_url = server_url
      else
        @server_url = Utils.template_url(server_url, params)
      end
      init_sdks
    end

    sig { params(security: Shared::Security).void }
    def config_security(security)
      @security = security
    end

    sig { void }
    def init_sdks
      @auth = Auth.new(
        self,
        @client,
        @server_url,
        @language,
        @sdk_version,
        @gen_version,
        @openapi_doc_version,
        @_globals
      )
      @auth_new = AuthNew.new(
        self,
        @client,
        @server_url,
        @language,
        @sdk_version,
        @gen_version,
        @openapi_doc_version,
        @_globals
      )
      @errors = Errors.new(
        self,
        @client,
        @server_url,
        @language,
        @sdk_version,
        @gen_version,
        @openapi_doc_version,
        @_globals
      )
      @flattening = Flattening.new(
        self,
        @client,
        @server_url,
        @language,
        @sdk_version,
        @gen_version,
        @openapi_doc_version,
        @_globals
      )
      @generation = Generation.new(
        self,
        @client,
        @server_url,
        @language,
        @sdk_version,
        @gen_version,
        @openapi_doc_version,
        @_globals
      )
      @globals = Globals.new(
        self,
        @client,
        @server_url,
        @language,
        @sdk_version,
        @gen_version,
        @openapi_doc_version,
        @_globals
      )
      @pagination = Pagination.new(
        self,
        @client,
        @server_url,
        @language,
        @sdk_version,
        @gen_version,
        @openapi_doc_version,
        @_globals
      )
      @parameters = Parameters.new(
        self,
        @client,
        @server_url,
        @language,
        @sdk_version,
        @gen_version,
        @openapi_doc_version,
        @_globals
      )
      @request_bodies = RequestBodies.new(
        self,
        @client,
        @server_url,
        @language,
        @sdk_version,
        @gen_version,
        @openapi_doc_version,
        @_globals
      )
      @resource = Resource.new(
        self,
        @client,
        @server_url,
        @language,
        @sdk_version,
        @gen_version,
        @openapi_doc_version,
        @_globals
      )
      @response_bodies = ResponseBodies.new(
        self,
        @client,
        @server_url,
        @language,
        @sdk_version,
        @gen_version,
        @openapi_doc_version,
        @_globals
      )
      @servers = Servers.new(
        self,
        @client,
        @server_url,
        @language,
        @sdk_version,
        @gen_version,
        @openapi_doc_version,
        @_globals
      )
      @telemetry = Telemetry.new(
        self,
        @client,
        @server_url,
        @language,
        @sdk_version,
        @gen_version,
        @openapi_doc_version,
        @_globals
      )
      @unions = Unions.new(
        self,
        @client,
        @server_url,
        @language,
        @sdk_version,
        @gen_version,
        @openapi_doc_version,
        @_globals
      )
    end

    
    sig { params(request: String).returns(Utils::FieldAugmented) }
    def put_anything_ignored_generation(request)

      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/anything/ignoredGeneration"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :string)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version} #{@openapi_doc_version}"

      r = @client.put(url) do |req|
        req.headers = headers
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

      res = Operations::PutAnythingIgnoredGenerationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::PutAnythingIgnoredGeneration200ApplicationJSON)
          res.put_anything_ignored_generation_200_application_json_object = out
        end
      end
      res
    end

    
    sig { returns(Utils::FieldAugmented) }
    def response_body_json_get

      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/json"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@language} #{@sdk_version} #{@gen_version} #{@openapi_doc_version}"

      r = @client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ResponseBodyJsonGetResponse.new(
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
  end
end
