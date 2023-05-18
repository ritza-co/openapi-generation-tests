"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

import requests as requests_http
from . import utils
from sdk.models import operations
from typing import Any, Optional

class Telemetry:
    r"""Endpoints for testing telemetry."""
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
        
    
    def telemetry_speakeasy_user_agent_get(self, user_agent: str) -> operations.TelemetrySpeakeasyUserAgentGetResponse:
        request = operations.TelemetrySpeakeasyUserAgentGetRequest(
            user_agent=user_agent,
        )
        
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/telemetry/speakeasy-user-agent'
        headers = utils.get_headers(request)
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self._language} {self._sdk_version} {self._gen_version}'
        
        client = self._security_client
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.TelemetrySpeakeasyUserAgentGetResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.TelemetrySpeakeasyUserAgentGetRes])
                res.res = out

        return res

    
    def telemetry_user_agent_get(self) -> operations.TelemetryUserAgentGetResponse:
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/telemetry/user-agent'
        headers = {}
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self._language} {self._sdk_version} {self._gen_version}'
        
        client = self._security_client
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.TelemetryUserAgentGetResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.TelemetryUserAgentGetRes])
                res.res = out

        return res

    