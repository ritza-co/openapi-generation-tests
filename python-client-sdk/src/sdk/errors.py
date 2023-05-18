"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

import requests as requests_http
from . import utils
from sdk.models import operations, shared
from typing import Any, Optional

class Errors:
    r"""Endpoints for testing error responses."""
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
        
    
    def connection_error_get(self, server_url: Optional[str] = None) -> operations.ConnectionErrorGetResponse:
        base_url = operations.CONNECTION_ERROR_GET_SERVERS[0]
        if server_url is not None:
            base_url = server_url
        
        url = base_url.removesuffix('/') + '/anything/connectionError'
        headers = {}
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self._language} {self._sdk_version} {self._gen_version}'
        
        client = self._security_client
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.ConnectionErrorGetResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        

        return res

    
    def status_get(self, status_code: int) -> operations.StatusGetResponse:
        request = operations.StatusGetRequest(
            status_code=status_code,
        )
        
        base_url = self._server_url
        
        url = utils.generate_url(operations.StatusGetRequest, base_url, '/status/{statusCode}', request, self._globals)
        headers = {}
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self._language} {self._sdk_version} {self._gen_version}'
        
        client = self._security_client
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.StatusGetResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        

        return res

    
    def status_post_retries(self, status_code: int, simple_object: Optional[shared.SimpleObject] = None, retries: Optional[utils.RetryConfig] = None) -> operations.StatusPostRetriesResponse:
        request = operations.StatusPostRetriesRequest(
            status_code=status_code,
            simple_object=simple_object,
        )
        
        base_url = self._server_url
        
        url = utils.generate_url(operations.StatusPostRetriesRequest, base_url, '/status/{statusCode}', request, self._globals)
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "simple_object", 'json')
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self._language} {self._sdk_version} {self._gen_version}'
        
        client = self._security_client
        
        retry_config = retries
        if retry_config is None:
            retry_config = utils.RetryConfig('backoff', True)
            retry_config.backoff = utils.BackoffStrategy(10, 200, 1.5, 1000)
            

        def do_request():
            return client.request('POST', url, data=data, files=form, headers=headers)
        
        http_res = utils.retry(do_request, utils.Retries(retry_config, [
            '204',
            '5XX'
        ]))
        content_type = http_res.headers.get('Content-Type')

        res = operations.StatusPostRetriesResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        

        return res

    