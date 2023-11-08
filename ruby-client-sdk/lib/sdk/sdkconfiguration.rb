# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig


  SERVERS = [
    'http://localhost:35123', # 1 - The default server.
    'http://broken', # 1 - A server url to a non-existent server.
    'http://{hostname}:{port}', # 1 - A server url with templated variables.
    'http://localhost:35123/anything/{something}', # 1 - A server url with templated variables.
    '{protocol}://{hostname}:{port}', # 1 - A server url with templated variables (including the protocol).
  ].freeze
  # Contains the list of servers available to the SDK
  # ServerSomething - Something is a variable for changing the root path
  class ServerSomething < T::Enum
    enums do
      SOMETHING = new('something')
      SOMETHING_ELSE = new('somethingElse')
      SOMETHING_ELSE_AGAIN = new('somethingElseAgain')
    end
  end


  class SDKConfiguration < OpenApiSDK::Utils::FieldAugmented
    extend T::Sig

    field :client, T.nilable(Faraday::Connection)
    field :security, Shared::Security
    field :server_url, T.nilable(String)
    field :server, T.nilable(String)
    field :server_defaults, Array[Hash[Symbol, String]], { 'default_factory': Array}
    field :globals, Hash[Symbol, Hash[Symbol, Hash[Symbol, Object]]]
    field :language, String
    field :openapi_doc_version, String
    field :sdk_version, String
    field :gen_version, String
    field :user_agent, String
  
    
    sig { params(client: Faraday::Connection, security: T.nilable(Shared::Security), server_url: T.nilable(String), server_idx: T.nilable(Integer), server_defaults: T::Array[String], globals: T::Hash[Symbol, T::Hash[Symbol, T::Hash[Symbol, Object]]]).void }
    def initialize(client, security, server_url, server_idx, server_defaults, globals)
      @client = client
      @server_idx = server_idx.nil? ? 0 : server_idx
      @server_defaults = server_defaults.nil? ? [] : server_defaults
      @security = security
      @globals = globals.nil? ? {} : globals
      @language = 'ruby'
      @openapi_doc_version = '0.1.0'
      @sdk_version = '2.1.0'
      @gen_version = '2.185.0'
      @user_agent = 'speakeasy-sdk/ruby 2.1.0 2.185.0 0.1.0 openapi'
    end

    sig { returns([String, T::Hash[Symbol, String]]) }
    def get_server_details
      return [@server_url.delete_suffix('/'), {}] if !@server_url.nil?
      @server_idx = 0 if @server_idx.nil?
          

      [SERVERS[@server_idx], @server_defaults[@server_idx]]
    end
  end
end
