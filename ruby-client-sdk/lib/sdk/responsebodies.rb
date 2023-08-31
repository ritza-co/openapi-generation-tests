# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class ResponseBodies
    # Endpoints for testing response bodies.
    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { returns(Utils::FieldAugmented) }
    def response_body_bytes_get

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/bytes/100"
      headers = {}
      headers['Accept'] = 'application/octet-stream'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
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

    sig { params(x_number_header: Float, x_string_header: String).returns(Utils::FieldAugmented) }
    def response_body_empty_with_headers(x_number_header, x_string_header)

      request = Operations::ResponseBodyEmptyWithHeadersRequest.new(
        x_number_header: x_number_header,
        x_string_header: x_string_header
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/response-headers"
      headers = {}
      query_params = Utils.get_query_params(Operations::ResponseBodyEmptyWithHeadersRequest, request, @sdk_configuration.globals)
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ResponseBodyEmptyWithHeadersResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        res.headers = r.headers
      end
      res
    end

    sig { params(server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def response_body_optional_get(server_url = nil)

      base_url = Utils.template_url(Operations::RESPONSE_BODY_OPTIONAL_GET_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/optional"
      headers = {}
      headers['Accept'] = 'application/json;q=1, text/plain;q=0'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ResponseBodyOptionalGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::TypedObject1)
          res.typed_object1 = out
        end
        res.response_body_optional_get_200_text_plain_string = r.env.response_body if Utils.match_content_type(content_type, 'text/plain')
      end
      res
    end

    sig { params(server_url: T.nilable(String)).returns(Utils::FieldAugmented) }
    def response_body_read_only(server_url = nil)

      base_url = Utils.template_url(Operations::RESPONSE_BODY_READ_ONLY_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/readonlyorwriteonly#readOnly"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ResponseBodyReadOnlyResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ReadOnlyObject)
          res.read_only_object = out
        end
      end
      res
    end

    sig { returns(Utils::FieldAugmented) }
    def response_body_string_get

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/html"
      headers = {}
      headers['Accept'] = 'text/html'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
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

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/xml"
      headers = {}
      headers['Accept'] = 'application/xml'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
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
