"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

import requests as requests_http
from . import utils
from sdk.models import operations, shared
from typing import Any, Optional

class Parameters:
    r"""Endpoints for testing parameters."""
    _client: requests_http.Session
    _security_client: requests_http.Session
    _server_url: str
    _language: str
    _sdk_version: str
    _gen_version: str
    _globals: dict[str, dict[str, dict[str, Any]]]

    def __init__(self, client: requests_http.Session, security_client: requests_http.Session, server_url: str, language: str, sdk_version: str, gen_version: str, gbls: dict[str, dict[str, dict[str, Any]]]) -> None:
        self._client = client
        self._security_client = security_client
        self._server_url = server_url
        self._language = language
        self._sdk_version = sdk_version
        self._gen_version = gen_version
        self._globals = gbls
        
    
    def deep_object_query_params_map(self, map_param: dict[str, str], map_arr_param: Optional[dict[str, list[str]]] = None) -> operations.DeepObjectQueryParamsMapResponse:
        request = operations.DeepObjectQueryParamsMapRequest(
            map_param=map_param,
            map_arr_param=map_arr_param,
        )
        
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/queryParams/deepObject/map'
        
        query_params = utils.get_query_params(operations.DeepObjectQueryParamsMapRequest, request, self._globals)
        
        client = self._security_client
        
        http_res = client.request('GET', url, params=query_params)
        content_type = http_res.headers.get('Content-Type')

        res = operations.DeepObjectQueryParamsMapResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.DeepObjectQueryParamsMapRes])
                res.res = out

        return res

    
    def deep_object_query_params_object(self, obj_param: shared.SimpleObject, obj_arr_param: Optional[operations.DeepObjectQueryParamsObjectObjArrParam] = None) -> operations.DeepObjectQueryParamsObjectResponse:
        request = operations.DeepObjectQueryParamsObjectRequest(
            obj_param=obj_param,
            obj_arr_param=obj_arr_param,
        )
        
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/queryParams/deepObject/obj'
        
        query_params = utils.get_query_params(operations.DeepObjectQueryParamsObjectRequest, request, self._globals)
        
        client = self._security_client
        
        http_res = client.request('GET', url, params=query_params)
        content_type = http_res.headers.get('Content-Type')

        res = operations.DeepObjectQueryParamsObjectResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.DeepObjectQueryParamsObjectRes])
                res.res = out

        return res

    
    def form_query_params_array(self, arr_param: Optional[list[str]] = None, arr_param_exploded: Optional[list[int]] = None) -> operations.FormQueryParamsArrayResponse:
        request = operations.FormQueryParamsArrayRequest(
            arr_param=arr_param,
            arr_param_exploded=arr_param_exploded,
        )
        
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/queryParams/form/array'
        
        query_params = utils.get_query_params(operations.FormQueryParamsArrayRequest, request, self._globals)
        
        client = self._security_client
        
        http_res = client.request('GET', url, params=query_params)
        content_type = http_res.headers.get('Content-Type')

        res = operations.FormQueryParamsArrayResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.FormQueryParamsArrayRes])
                res.res = out

        return res

    
    def form_query_params_map(self, map_param: Optional[dict[str, str]] = None, map_param_exploded: Optional[dict[str, int]] = None) -> operations.FormQueryParamsMapResponse:
        request = operations.FormQueryParamsMapRequest(
            map_param=map_param,
            map_param_exploded=map_param_exploded,
        )
        
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/queryParams/form/map'
        
        query_params = utils.get_query_params(operations.FormQueryParamsMapRequest, request, self._globals)
        
        client = self._security_client
        
        http_res = client.request('GET', url, params=query_params)
        content_type = http_res.headers.get('Content-Type')

        res = operations.FormQueryParamsMapResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.FormQueryParamsMapRes])
                res.res = out

        return res

    
    def form_query_params_object(self, obj_param_exploded: shared.SimpleObject, obj_param: Optional[shared.SimpleObject] = None) -> operations.FormQueryParamsObjectResponse:
        request = operations.FormQueryParamsObjectRequest(
            obj_param_exploded=obj_param_exploded,
            obj_param=obj_param,
        )
        
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/queryParams/form/obj'
        
        query_params = utils.get_query_params(operations.FormQueryParamsObjectRequest, request, self._globals)
        
        client = self._security_client
        
        http_res = client.request('GET', url, params=query_params)
        content_type = http_res.headers.get('Content-Type')

        res = operations.FormQueryParamsObjectResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.FormQueryParamsObjectRes])
                res.res = out

        return res

    
    def form_query_params_primitive(self, bool_param: bool, int_param: int, num_param: float, str_param: str) -> operations.FormQueryParamsPrimitiveResponse:
        request = operations.FormQueryParamsPrimitiveRequest(
            bool_param=bool_param,
            int_param=int_param,
            num_param=num_param,
            str_param=str_param,
        )
        
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/queryParams/form/primitive'
        
        query_params = utils.get_query_params(operations.FormQueryParamsPrimitiveRequest, request, self._globals)
        
        client = self._security_client
        
        http_res = client.request('GET', url, params=query_params)
        content_type = http_res.headers.get('Content-Type')

        res = operations.FormQueryParamsPrimitiveResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.FormQueryParamsPrimitiveRes])
                res.res = out

        return res

    
    def form_query_params_ref_param_object(self, ref_obj_param: Optional[shared.RefQueryParamObj] = None, ref_obj_param_exploded: Optional[shared.RefQueryParamObjExploded] = None) -> operations.FormQueryParamsRefParamObjectResponse:
        request = operations.FormQueryParamsRefParamObjectRequest(
            ref_obj_param=ref_obj_param,
            ref_obj_param_exploded=ref_obj_param_exploded,
        )
        
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/queryParams/form/refParamObject'
        
        query_params = utils.get_query_params(operations.FormQueryParamsRefParamObjectRequest, request, self._globals)
        
        client = self._security_client
        
        http_res = client.request('GET', url, params=query_params)
        content_type = http_res.headers.get('Content-Type')

        res = operations.FormQueryParamsRefParamObjectResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.FormQueryParamsRefParamObjectRes])
                res.res = out

        return res

    
    def header_params_array(self, x_header_array: list[str]) -> operations.HeaderParamsArrayResponse:
        request = operations.HeaderParamsArrayRequest(
            x_header_array=x_header_array,
        )
        
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/headers/array'
        
        headers = utils.get_headers(request)
        
        client = self._security_client
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.HeaderParamsArrayResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.HeaderParamsArrayRes])
                res.res = out

        return res

    
    def header_params_map(self, x_header_map: dict[str, str], x_header_map_explode: dict[str, str]) -> operations.HeaderParamsMapResponse:
        request = operations.HeaderParamsMapRequest(
            x_header_map=x_header_map,
            x_header_map_explode=x_header_map_explode,
        )
        
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/headers/map'
        
        headers = utils.get_headers(request)
        
        client = self._security_client
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.HeaderParamsMapResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.HeaderParamsMapRes])
                res.res = out

        return res

    
    def header_params_object(self, x_header_obj: shared.SimpleObject, x_header_obj_explode: shared.SimpleObject) -> operations.HeaderParamsObjectResponse:
        request = operations.HeaderParamsObjectRequest(
            x_header_obj=x_header_obj,
            x_header_obj_explode=x_header_obj_explode,
        )
        
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/headers/obj'
        
        headers = utils.get_headers(request)
        
        client = self._security_client
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.HeaderParamsObjectResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.HeaderParamsObjectRes])
                res.res = out

        return res

    
    def header_params_primitive(self, x_header_boolean: bool, x_header_integer: int, x_header_number: float, x_header_string: str) -> operations.HeaderParamsPrimitiveResponse:
        request = operations.HeaderParamsPrimitiveRequest(
            x_header_boolean=x_header_boolean,
            x_header_integer=x_header_integer,
            x_header_number=x_header_number,
            x_header_string=x_header_string,
        )
        
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/headers/primitive'
        
        headers = utils.get_headers(request)
        
        client = self._security_client
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.HeaderParamsPrimitiveResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.HeaderParamsPrimitiveRes])
                res.res = out

        return res

    
    def json_query_params_object(self, deep_obj_param: shared.DeepObject, simple_obj_param: shared.SimpleObject) -> operations.JSONQueryParamsObjectResponse:
        request = operations.JSONQueryParamsObjectRequest(
            deep_obj_param=deep_obj_param,
            simple_obj_param=simple_obj_param,
        )
        
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/queryParams/json/obj'
        
        query_params = utils.get_query_params(operations.JSONQueryParamsObjectRequest, request, self._globals)
        
        client = self._security_client
        
        http_res = client.request('GET', url, params=query_params)
        content_type = http_res.headers.get('Content-Type')

        res = operations.JSONQueryParamsObjectResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.JSONQueryParamsObjectRes])
                res.res = out

        return res

    
    def mixed_query_params(self, deep_object_param: shared.SimpleObject, form_param: shared.SimpleObject, json_param: shared.SimpleObject) -> operations.MixedQueryParamsResponse:
        request = operations.MixedQueryParamsRequest(
            deep_object_param=deep_object_param,
            form_param=form_param,
            json_param=json_param,
        )
        
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/queryParams/mixed'
        
        query_params = utils.get_query_params(operations.MixedQueryParamsRequest, request, self._globals)
        
        client = self._security_client
        
        http_res = client.request('GET', url, params=query_params)
        content_type = http_res.headers.get('Content-Type')

        res = operations.MixedQueryParamsResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.MixedQueryParamsRes])
                res.res = out

        return res

    
    def path_parameter_json(self, json_obj: shared.SimpleObject) -> operations.PathParameterJSONResponse:
        request = operations.PathParameterJSONRequest(
            json_obj=json_obj,
        )
        
        base_url = self._server_url
        
        url = utils.generate_url(operations.PathParameterJSONRequest, base_url, '/anything/pathParams/json/{jsonObj}', request, self._globals)
        
        
        client = self._security_client
        
        http_res = client.request('GET', url)
        content_type = http_res.headers.get('Content-Type')

        res = operations.PathParameterJSONResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.PathParameterJSONRes])
                res.res = out

        return res

    
    def pipe_delimited_query_params_array(self, arr_param: Optional[list[str]] = None, arr_param_exploded: Optional[list[int]] = None, map_param: Optional[dict[str, str]] = None, obj_param: Optional[shared.SimpleObject] = None) -> operations.PipeDelimitedQueryParamsArrayResponse:
        request = operations.PipeDelimitedQueryParamsArrayRequest(
            arr_param=arr_param,
            arr_param_exploded=arr_param_exploded,
            map_param=map_param,
            obj_param=obj_param,
        )
        
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/queryParams/pipe/array'
        
        query_params = utils.get_query_params(operations.PipeDelimitedQueryParamsArrayRequest, request, self._globals)
        
        client = self._security_client
        
        http_res = client.request('GET', url, params=query_params)
        content_type = http_res.headers.get('Content-Type')

        res = operations.PipeDelimitedQueryParamsArrayResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.PipeDelimitedQueryParamsArrayRes])
                res.res = out

        return res

    
    def simple_path_parameter_arrays(self, arr_param: list[str]) -> operations.SimplePathParameterArraysResponse:
        request = operations.SimplePathParameterArraysRequest(
            arr_param=arr_param,
        )
        
        base_url = self._server_url
        
        url = utils.generate_url(operations.SimplePathParameterArraysRequest, base_url, '/anything/pathParams/arr/{arrParam}', request, self._globals)
        
        
        client = self._security_client
        
        http_res = client.request('GET', url)
        content_type = http_res.headers.get('Content-Type')

        res = operations.SimplePathParameterArraysResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.SimplePathParameterArraysRes])
                res.res = out

        return res

    
    def simple_path_parameter_maps(self, map_param: dict[str, str], map_param_exploded: dict[str, int]) -> operations.SimplePathParameterMapsResponse:
        request = operations.SimplePathParameterMapsRequest(
            map_param=map_param,
            map_param_exploded=map_param_exploded,
        )
        
        base_url = self._server_url
        
        url = utils.generate_url(operations.SimplePathParameterMapsRequest, base_url, '/anything/pathParams/map/{mapParam}/mapExploded/{mapParamExploded}', request, self._globals)
        
        
        client = self._security_client
        
        http_res = client.request('GET', url)
        content_type = http_res.headers.get('Content-Type')

        res = operations.SimplePathParameterMapsResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.SimplePathParameterMapsRes])
                res.res = out

        return res

    
    def simple_path_parameter_objects(self, obj_param: shared.SimpleObject, obj_param_exploded: shared.SimpleObject) -> operations.SimplePathParameterObjectsResponse:
        request = operations.SimplePathParameterObjectsRequest(
            obj_param=obj_param,
            obj_param_exploded=obj_param_exploded,
        )
        
        base_url = self._server_url
        
        url = utils.generate_url(operations.SimplePathParameterObjectsRequest, base_url, '/anything/pathParams/obj/{objParam}/objExploded/{objParamExploded}', request, self._globals)
        
        
        client = self._security_client
        
        http_res = client.request('GET', url)
        content_type = http_res.headers.get('Content-Type')

        res = operations.SimplePathParameterObjectsResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.SimplePathParameterObjectsRes])
                res.res = out

        return res

    
    def simple_path_parameter_primitives(self, bool_param: bool, int_param: int, num_param: float, str_param: str) -> operations.SimplePathParameterPrimitivesResponse:
        request = operations.SimplePathParameterPrimitivesRequest(
            bool_param=bool_param,
            int_param=int_param,
            num_param=num_param,
            str_param=str_param,
        )
        
        base_url = self._server_url
        
        url = utils.generate_url(operations.SimplePathParameterPrimitivesRequest, base_url, '/anything/pathParams/str/{strParam}/bool/{boolParam}/int/{intParam}/num/{numParam}', request, self._globals)
        
        
        client = self._security_client
        
        http_res = client.request('GET', url)
        content_type = http_res.headers.get('Content-Type')

        res = operations.SimplePathParameterPrimitivesResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.SimplePathParameterPrimitivesRes])
                res.res = out

        return res

    