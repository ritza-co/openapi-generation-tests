# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Generation
    # Endpoints for purely testing valid generation behavior.
    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { returns(Utils::FieldAugmented) }
    def anchor_types_get

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/anchorTypes"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
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

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/circularReference"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
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

    sig { params(request: Shared::DeprecatedFieldInObject).returns(Utils::FieldAugmented) }
    def deprecated_field_in_schema_post(request)

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/deprecatedFieldInSchema"
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

      res = Operations::DeprecatedFieldInSchemaPostResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      end
      res
    end

    sig { returns(Utils::FieldAugmented) }
    def deprecated_object_in_schema_get

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/deprecatedObjectInSchema"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::DeprecatedObjectInSchemaGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::DeprecatedObjectInSchemaGet200ApplicationJSON)
          res.deprecated_object_in_schema_get_200_application_json_object = out
        end
      end
      res
    end

    sig { params(deprecated_parameter: T.nilable(String)).returns(Utils::FieldAugmented) }
    def deprecated_operation_no_comments_get(deprecated_parameter = nil)
      # deprecated_operation_no_comments_get
      # 
      # @deprecated  method: This will be removed in a future release, please migrate away from it as soon as possible.
      request = Operations::DeprecatedOperationNoCommentsGetRequest.new(
        
        deprecated_parameter: deprecated_parameter
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/deprecatedOperationNoComments"
      headers = {}
      query_params = Utils.get_query_params(Operations::DeprecatedOperationNoCommentsGetRequest, request, @sdk_configuration.globals)
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::DeprecatedOperationNoCommentsGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      end
      res
    end

    sig { params(deprecated_parameter: T.nilable(String), new_parameter: T.nilable(String)).returns(Utils::FieldAugmented) }
    def deprecated_operation_with_comments_get(deprecated_parameter = nil, new_parameter = nil)
      # deprecated_operation_with_comments_get - This is an endpoint setup to test deprecation with comments
      # 
      # @deprecated  method: This operation is deprecated. Use simple_path_parameter_objects instead.
      request = Operations::DeprecatedOperationWithCommentsGetRequest.new(
        
        deprecated_parameter: deprecated_parameter,
        new_parameter: new_parameter
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/deprecatedOperationWithComments"
      headers = {}
      query_params = Utils.get_query_params(Operations::DeprecatedOperationWithCommentsGetRequest, request, @sdk_configuration.globals)
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::DeprecatedOperationWithCommentsGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      end
      res
    end

    sig { params(empty_object: Shared::EmptyObjectParam).returns(Utils::FieldAugmented) }
    def empty_object_get(empty_object)

      request = Operations::EmptyObjectGetRequest.new(
        
        empty_object: empty_object
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::EmptyObjectGetRequest,
        base_url,
        '/anything/{emptyObject}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::EmptyObjectGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      end
      res
    end

    sig { returns(Utils::FieldAugmented) }
    def empty_response_object_with_comment_get

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/emptyResponseObjectWithComment"
      headers = {}
      headers['Accept'] = 'application/octet-stream'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::EmptyResponseObjectWithCommentGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        res.body = r.env.response_body if Utils.match_content_type(content_type, 'application/octet-stream')
      end
      res
    end

    sig { returns(Utils::FieldAugmented) }
    def global_name_overridden

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/globalNameOverride"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
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

      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/ignoredGeneration"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
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
        test_param: test_param
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/ignores"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(Operations::IgnoresPostRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        req.params = query_params
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

    sig { params(test_enum_query_param: Operations::NameOverrideGetEnumNameOverride, test_query_param: String).returns(Utils::FieldAugmented) }
    def name_override(test_enum_query_param, test_query_param)

      request = Operations::NameOverrideGetRequest.new(
        
        test_enum_query_param: test_enum_query_param,
        test_query_param: test_query_param
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/nameOverride"
      headers = {}
      query_params = Utils.get_query_params(Operations::NameOverrideGetRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::NameOverrideGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::OverriddenResponse)
          res.overridden_response = out
        end
      end
      res
    end

    sig { params(bigint: T.nilable(Integer), date: T.nilable(Date), decimal: T.nilable(Float), obj: T.nilable(Operations::TypedParameterGenerationGetObj)).returns(Utils::FieldAugmented) }
    def typed_parameter_generation_get(bigint = nil, date = nil, decimal = nil, obj = nil)

      request = Operations::TypedParameterGenerationGetRequest.new(
        
        bigint: bigint,
        date: date,
        decimal: decimal,
        obj: obj
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/typedParameterGeneration"
      headers = {}
      query_params = Utils.get_query_params(Operations::TypedParameterGenerationGetRequest, request, @sdk_configuration.globals)
      headers['Accept'] = '*/*'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::TypedParameterGenerationGetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      end
      res
    end

    sig { params(request: Operations::UsageExamplePostRequest, security: Operations::UsageExamplePostSecurity).returns(Utils::FieldAugmented) }
    def usage_example_post(request, security)
      # usage_example_post - An operation used for testing usage examples
      # An operation used for testing usage examples that includes a large array of parameters and input types to ensure that all are handled correctly
      # https://docs.example.com - Usage example docs
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/usageExample"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(Operations::UsageExamplePostRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.post(url) do |req|
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
