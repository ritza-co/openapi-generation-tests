"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

import requests as requests_http
from . import utils
from sdk.models import operations
from typing import Any, Optional

class Auth:
    r"""Endpoints for testing authentication."""
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
        
    
    def api_key_auth(self, security: operations.APIKeyAuthSecurity) -> operations.APIKeyAuthResponse:
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/bearer#operation'
        headers = {}
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self._language} {self._sdk_version} {self._gen_version}'
        
        client = utils.configure_security_client(self._client, security)
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.APIKeyAuthResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.APIKeyAuthToken])
                res.token = out
        elif http_res.status_code == 401:
            pass

        return res

    
    def api_key_auth_global(self) -> operations.APIKeyAuthGlobalResponse:
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/bearer'
        headers = {}
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self._language} {self._sdk_version} {self._gen_version}'
        
        client = self._security_client
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.APIKeyAuthGlobalResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.APIKeyAuthGlobalToken])
                res.token = out
        elif http_res.status_code == 401:
            pass

        return res

    
    def basic_auth(self, security: operations.BasicAuthSecurity, passwd: str, user: str) -> operations.BasicAuthResponse:
        request = operations.BasicAuthRequest(
            passwd=passwd,
            user=user,
        )
        
        base_url = self._server_url
        
        url = utils.generate_url(operations.BasicAuthRequest, base_url, '/basic-auth/{user}/{passwd}', request, self._globals)
        headers = {}
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self._language} {self._sdk_version} {self._gen_version}'
        
        client = utils.configure_security_client(self._client, security)
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.BasicAuthResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.BasicAuthUser])
                res.user = out
        elif http_res.status_code == 401:
            pass

        return res

    
    def bearer_auth(self, security: operations.BearerAuthSecurity) -> operations.BearerAuthResponse:
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/bearer#bearer'
        headers = {}
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self._language} {self._sdk_version} {self._gen_version}'
        
        client = utils.configure_security_client(self._client, security)
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.BearerAuthResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.BearerAuthToken])
                res.token = out
        elif http_res.status_code == 401:
            pass

        return res

    
    def oauth2_auth(self, security: operations.Oauth2AuthSecurity) -> operations.Oauth2AuthResponse:
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/bearer#oauth2'
        headers = {}
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self._language} {self._sdk_version} {self._gen_version}'
        
        client = utils.configure_security_client(self._client, security)
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.Oauth2AuthResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.Oauth2AuthToken])
                res.token = out
        elif http_res.status_code == 401:
            pass

        return res

    
    def open_id_connect_auth(self, security: operations.OpenIDConnectAuthSecurity) -> operations.OpenIDConnectAuthResponse:
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/bearer#openIdConnect'
        headers = {}
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self._language} {self._sdk_version} {self._gen_version}'
        
        client = utils.configure_security_client(self._client, security)
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.OpenIDConnectAuthResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.OpenIDConnectAuthToken])
                res.token = out
        elif http_res.status_code == 401:
            pass

        return res

    