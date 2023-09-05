# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Pagination
    # Endpoints for testing the pagination extension
    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(request: Operations::PaginationCursorBodyRequestBody, server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def pagination_cursor_body(request, server_url = nil)

      base_url = Utils.template_url(Operations::PAGINATION_CURSOR_BODY_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/pagination/cursor"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.put(url) do |req|
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

      res = Operations::PaginationCursorBodyResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::PaginationCursorBodyRes)
          res.res = out
        end
      end
      res
    end

    sig { params(cursor: Integer, server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def pagination_cursor_params(cursor, server_url = nil)

      request = Operations::PaginationCursorParamsRequest.new(
        
        cursor: cursor
      )
      base_url = Utils.template_url(Operations::PAGINATION_CURSOR_PARAMS_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/pagination/cursor"
      headers = {}
      query_params = Utils.get_query_params(Operations::PaginationCursorParamsRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::PaginationCursorParamsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::PaginationCursorParamsRes)
          res.res = out
        end
      end
      res
    end

    sig { params(request: Shared::LimitOffsetConfig, server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def pagination_limit_offset_offset_body(request, server_url = nil)

      base_url = Utils.template_url(Operations::PAGINATION_LIMIT_OFFSET_OFFSET_BODY_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/pagination/limitoffset/offset"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.put(url) do |req|
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

      res = Operations::PaginationLimitOffsetOffsetBodyResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::PaginationLimitOffsetOffsetBodyRes)
          res.res = out
        end
      end
      res
    end

    sig { params(limit: T.nilable(Integer), offset: T.nilable(Integer), server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def pagination_limit_offset_offset_params(limit = nil, offset = nil, server_url = nil)

      request = Operations::PaginationLimitOffsetOffsetParamsRequest.new(
        
        limit: limit,
        offset: offset
      )
      base_url = Utils.template_url(Operations::PAGINATION_LIMIT_OFFSET_OFFSET_PARAMS_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/pagination/limitoffset/offset"
      headers = {}
      query_params = Utils.get_query_params(Operations::PaginationLimitOffsetOffsetParamsRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::PaginationLimitOffsetOffsetParamsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::PaginationLimitOffsetOffsetParamsRes)
          res.res = out
        end
      end
      res
    end

    sig { params(request: Shared::LimitOffsetConfig, server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def pagination_limit_offset_page_body(request, server_url = nil)

      base_url = Utils.template_url(Operations::PAGINATION_LIMIT_OFFSET_PAGE_BODY_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/pagination/limitoffset/page"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.put(url) do |req|
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

      res = Operations::PaginationLimitOffsetPageBodyResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::PaginationLimitOffsetPageBodyRes)
          res.res = out
        end
      end
      res
    end

    sig { params(page: Integer, server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def pagination_limit_offset_page_params(page, server_url = nil)

      request = Operations::PaginationLimitOffsetPageParamsRequest.new(
        
        page: page
      )
      base_url = Utils.template_url(Operations::PAGINATION_LIMIT_OFFSET_PAGE_PARAMS_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/pagination/limitoffset/page"
      headers = {}
      query_params = Utils.get_query_params(Operations::PaginationLimitOffsetPageParamsRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::PaginationLimitOffsetPageParamsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::PaginationLimitOffsetPageParamsRes)
          res.res = out
        end
      end
      res
    end
  end
end
