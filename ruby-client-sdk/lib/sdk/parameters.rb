# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Parameters
    # Endpoints for testing parameters.
    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(map_param: T::Hash[Symbol, String], map_arr_param: T.nilable(T::Hash[Symbol, T::Array[String]])).returns(Utils::FieldAugmented) }
    def deep_object_query_params_map(map_param, map_arr_param = nil)

      request = Operations::DeepObjectQueryParamsMapRequest.new(
        map_param: map_param,
        map_arr_param: map_arr_param
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/queryParams/deepObject/map"
      headers = {}
      query_params = Utils.get_query_params(Operations::DeepObjectQueryParamsMapRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::DeepObjectQueryParamsMapResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::DeepObjectQueryParamsMapRes)
          res.res = out
        end
      end
      res
    end

    sig { params(obj_param: Shared::SimpleObject, obj_arr_param: T.nilable(Operations::DeepObjectQueryParamsObjectObjArrParam)).returns(Utils::FieldAugmented) }
    def deep_object_query_params_object(obj_param, obj_arr_param = nil)

      request = Operations::DeepObjectQueryParamsObjectRequest.new(
        obj_param: obj_param,
        obj_arr_param: obj_arr_param
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/queryParams/deepObject/obj"
      headers = {}
      query_params = Utils.get_query_params(Operations::DeepObjectQueryParamsObjectRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::DeepObjectQueryParamsObjectResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::DeepObjectQueryParamsObjectRes)
          res.res = out
        end
      end
      res
    end

    sig { params(arr_param: T.nilable(T::Array[String]), arr_param_exploded: T.nilable(T::Array[Integer])).returns(Utils::FieldAugmented) }
    def form_query_params_array(arr_param = nil, arr_param_exploded = nil)

      request = Operations::FormQueryParamsArrayRequest.new(
        arr_param: arr_param,
        arr_param_exploded: arr_param_exploded
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/queryParams/form/array"
      headers = {}
      query_params = Utils.get_query_params(Operations::FormQueryParamsArrayRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::FormQueryParamsArrayResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::FormQueryParamsArrayRes)
          res.res = out
        end
      end
      res
    end

    sig { params(map_param: T.nilable(T::Hash[Symbol, String]), map_param_exploded: T.nilable(T::Hash[Symbol, Integer])).returns(Utils::FieldAugmented) }
    def form_query_params_map(map_param = nil, map_param_exploded = nil)

      request = Operations::FormQueryParamsMapRequest.new(
        map_param: map_param,
        map_param_exploded: map_param_exploded
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/queryParams/form/map"
      headers = {}
      query_params = Utils.get_query_params(Operations::FormQueryParamsMapRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::FormQueryParamsMapResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::FormQueryParamsMapRes)
          res.res = out
        end
      end
      res
    end

    sig { params(obj_param_exploded: Shared::SimpleObject, obj_param: T.nilable(Shared::SimpleObject)).returns(Utils::FieldAugmented) }
    def form_query_params_object(obj_param_exploded, obj_param = nil)

      request = Operations::FormQueryParamsObjectRequest.new(
        obj_param_exploded: obj_param_exploded,
        obj_param: obj_param
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/queryParams/form/obj"
      headers = {}
      query_params = Utils.get_query_params(Operations::FormQueryParamsObjectRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::FormQueryParamsObjectResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::FormQueryParamsObjectRes)
          res.res = out
        end
      end
      res
    end

    sig { params(bool_param: T::Boolean, int_param: Integer, num_param: Float, str_param: String).returns(Utils::FieldAugmented) }
    def form_query_params_primitive(bool_param, int_param, num_param, str_param)

      request = Operations::FormQueryParamsPrimitiveRequest.new(
        bool_param: bool_param,
        int_param: int_param,
        num_param: num_param,
        str_param: str_param
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/queryParams/form/primitive"
      headers = {}
      query_params = Utils.get_query_params(Operations::FormQueryParamsPrimitiveRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::FormQueryParamsPrimitiveResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::FormQueryParamsPrimitiveRes)
          res.res = out
        end
      end
      res
    end

    sig { params(ref_obj_param: T.nilable(Shared::RefQueryParamObj), ref_obj_param_exploded: T.nilable(Shared::RefQueryParamObjExploded)).returns(Utils::FieldAugmented) }
    def form_query_params_ref_param_object(ref_obj_param = nil, ref_obj_param_exploded = nil)

      request = Operations::FormQueryParamsRefParamObjectRequest.new(
        ref_obj_param: ref_obj_param,
        ref_obj_param_exploded: ref_obj_param_exploded
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/queryParams/form/refParamObject"
      headers = {}
      query_params = Utils.get_query_params(Operations::FormQueryParamsRefParamObjectRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::FormQueryParamsRefParamObjectResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::FormQueryParamsRefParamObjectRes)
          res.res = out
        end
      end
      res
    end

    sig { params(x_header_array: T::Array[String]).returns(Utils::FieldAugmented) }
    def header_params_array(x_header_array)

      request = Operations::HeaderParamsArrayRequest.new(
        x_header_array: x_header_array
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/headers/array"
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::HeaderParamsArrayResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::HeaderParamsArrayRes)
          res.res = out
        end
      end
      res
    end

    sig { params(x_header_map: T::Hash[Symbol, String], x_header_map_explode: T::Hash[Symbol, String]).returns(Utils::FieldAugmented) }
    def header_params_map(x_header_map, x_header_map_explode)

      request = Operations::HeaderParamsMapRequest.new(
        x_header_map: x_header_map,
        x_header_map_explode: x_header_map_explode
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/headers/map"
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::HeaderParamsMapResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::HeaderParamsMapRes)
          res.res = out
        end
      end
      res
    end

    sig { params(x_header_obj: Shared::SimpleObject, x_header_obj_explode: Shared::SimpleObject).returns(Utils::FieldAugmented) }
    def header_params_object(x_header_obj, x_header_obj_explode)

      request = Operations::HeaderParamsObjectRequest.new(
        x_header_obj: x_header_obj,
        x_header_obj_explode: x_header_obj_explode
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/headers/obj"
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::HeaderParamsObjectResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::HeaderParamsObjectRes)
          res.res = out
        end
      end
      res
    end

    sig { params(x_header_boolean: T::Boolean, x_header_integer: Integer, x_header_number: Float, x_header_string: String).returns(Utils::FieldAugmented) }
    def header_params_primitive(x_header_boolean, x_header_integer, x_header_number, x_header_string)

      request = Operations::HeaderParamsPrimitiveRequest.new(
        x_header_boolean: x_header_boolean,
        x_header_integer: x_header_integer,
        x_header_number: x_header_number,
        x_header_string: x_header_string
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/headers/primitive"
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::HeaderParamsPrimitiveResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::HeaderParamsPrimitiveRes)
          res.res = out
        end
      end
      res
    end

    sig { params(deep_obj_param: Shared::DeepObject, simple_obj_param: Shared::SimpleObject).returns(Utils::FieldAugmented) }
    def json_query_params_object(deep_obj_param, simple_obj_param)

      request = Operations::JsonQueryParamsObjectRequest.new(
        deep_obj_param: deep_obj_param,
        simple_obj_param: simple_obj_param
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/queryParams/json/obj"
      headers = {}
      query_params = Utils.get_query_params(Operations::JsonQueryParamsObjectRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::JsonQueryParamsObjectResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::JsonQueryParamsObjectRes)
          res.res = out
        end
      end
      res
    end

    sig { params(deep_object_param: Shared::SimpleObject, form_param: Shared::SimpleObject, json_param: Shared::SimpleObject).returns(Utils::FieldAugmented) }
    def mixed_query_params(deep_object_param, form_param, json_param)

      request = Operations::MixedQueryParamsRequest.new(
        deep_object_param: deep_object_param,
        form_param: form_param,
        json_param: json_param
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/queryParams/mixed"
      headers = {}
      query_params = Utils.get_query_params(Operations::MixedQueryParamsRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::MixedQueryParamsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::MixedQueryParamsRes)
          res.res = out
        end
      end
      res
    end

    sig { params(json_obj: Shared::SimpleObject).returns(Utils::FieldAugmented) }
    def path_parameter_json(json_obj)

      request = Operations::PathParameterJsonRequest.new(
        json_obj: json_obj
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::PathParameterJsonRequest,
        base_url,
        '/anything/pathParams/json/{jsonObj}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::PathParameterJsonResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::PathParameterJsonRes)
          res.res = out
        end
      end
      res
    end

    sig { params(arr_param: T.nilable(T::Array[String]), arr_param_exploded: T.nilable(T::Array[Integer]), map_param: T.nilable(T::Hash[Symbol, String]), obj_param: T.nilable(Shared::SimpleObject)).returns(Utils::FieldAugmented) }
    def pipe_delimited_query_params_array(arr_param = nil, arr_param_exploded = nil, map_param = nil, obj_param = nil)

      request = Operations::PipeDelimitedQueryParamsArrayRequest.new(
        arr_param: arr_param,
        arr_param_exploded: arr_param_exploded,
        map_param: map_param,
        obj_param: obj_param
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/anything/queryParams/pipe/array"
      headers = {}
      query_params = Utils.get_query_params(Operations::PipeDelimitedQueryParamsArrayRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::PipeDelimitedQueryParamsArrayResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::PipeDelimitedQueryParamsArrayRes)
          res.res = out
        end
      end
      res
    end

    sig { params(arr_param: T::Array[String]).returns(Utils::FieldAugmented) }
    def simple_path_parameter_arrays(arr_param)

      request = Operations::SimplePathParameterArraysRequest.new(
        arr_param: arr_param
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::SimplePathParameterArraysRequest,
        base_url,
        '/anything/pathParams/arr/{arrParam}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::SimplePathParameterArraysResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::SimplePathParameterArraysRes)
          res.res = out
        end
      end
      res
    end

    sig { params(map_param: T::Hash[Symbol, String], map_param_exploded: T::Hash[Symbol, Integer]).returns(Utils::FieldAugmented) }
    def simple_path_parameter_maps(map_param, map_param_exploded)

      request = Operations::SimplePathParameterMapsRequest.new(
        map_param: map_param,
        map_param_exploded: map_param_exploded
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::SimplePathParameterMapsRequest,
        base_url,
        '/anything/pathParams/map/{mapParam}/mapExploded/{mapParamExploded}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::SimplePathParameterMapsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::SimplePathParameterMapsRes)
          res.res = out
        end
      end
      res
    end

    sig { params(obj_param: Shared::SimpleObject, obj_param_exploded: Shared::SimpleObject).returns(Utils::FieldAugmented) }
    def simple_path_parameter_objects(obj_param, obj_param_exploded)

      request = Operations::SimplePathParameterObjectsRequest.new(
        obj_param: obj_param,
        obj_param_exploded: obj_param_exploded
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::SimplePathParameterObjectsRequest,
        base_url,
        '/anything/pathParams/obj/{objParam}/objExploded/{objParamExploded}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::SimplePathParameterObjectsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::SimplePathParameterObjectsRes)
          res.res = out
        end
      end
      res
    end

    sig { params(bool_param: T::Boolean, int_param: Integer, num_param: Float, str_param: String).returns(Utils::FieldAugmented) }
    def simple_path_parameter_primitives(bool_param, int_param, num_param, str_param)

      request = Operations::SimplePathParameterPrimitivesRequest.new(
        bool_param: bool_param,
        int_param: int_param,
        num_param: num_param,
        str_param: str_param
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::SimplePathParameterPrimitivesRequest,
        base_url,
        '/anything/pathParams/str/{strParam}/bool/{boolParam}/int/{intParam}/num/{numParam}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['x-speakeasy-user-agent'] = "speakeasy-sdk/#{@sdk_configuration.language} #{@sdk_configuration.sdk_version} #{@sdk_configuration.gen_version} #{@sdk_configuration.openapi_doc_version}"

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::SimplePathParameterPrimitivesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::SimplePathParameterPrimitivesRes)
          res.res = out
        end
      end
      res
    end
  end
end
