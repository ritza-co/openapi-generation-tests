"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

import requests as requests_http
from . import utils
from .auth import Auth
from .authnew import AuthNew
from .errors import Errors
from .flattening import Flattening
from .generation import Generation
from .globals import Globals
from .parameters import Parameters
from .requestbodies import RequestBodies
from .responsebodies import ResponseBodies
from .servers import Servers
from .telemetry import Telemetry
from .unions import Unions
from sdk.models import operations, shared
from typing import Any, Optional

SERVERS = [
    "http://localhost:35123",
    r"""The default server."""
    "http://broken",
    r"""A server url to a non-existent server."""
    "http://{hostname}:{port}",
    r"""A server url with templated variables."""
]
"""Contains the list of servers available to the SDK"""

class SDK:
    r"""Test Summary
    Some test description.
    About our test document.
    https://speakeasyapi.dev/docs/home - Speakeasy Docs
    """
    auth: Auth
    r"""Endpoints for testing authentication."""
    auth_new: AuthNew
    r"""Endpoints for testing authentication."""
    errors: Errors
    r"""Endpoints for testing error responses."""
    flattening: Flattening
    r"""Endpoints for testing flattening through request body and parameter combinations."""
    generation: Generation
    r"""Endpoints for purely testing valid generation behavior."""
    globals: Globals
    r"""Endpoints for testing global parameters."""
    parameters: Parameters
    r"""Endpoints for testing parameters."""
    request_bodies: RequestBodies
    r"""Endpoints for testing request bodies."""
    response_bodies: ResponseBodies
    r"""Endpoints for testing response bodies."""
    servers: Servers
    r"""Endpoints for testing servers."""
    telemetry: Telemetry
    r"""Endpoints for testing telemetry."""
    unions: Unions
    r"""Endpoints for testing union types."""

    _client: requests_http.Session
    _security_client: requests_http.Session
    _server_url: str = SERVERS[0]
    _language: str = "python"
    _sdk_version: str = "1.4.0"
    _gen_version: str = "2.34.7"
    _globals: dict[str, dict[str, dict[str, Any]]]

    def __init__(self,
                 security: shared.Security = None,
                 global_path_param: int = None,
                 global_query_param: str = None,
                 server_url: str = None,
                 url_params: dict[str, str] = None,
                 client: requests_http.Session = None
                 ) -> None:
        """Instantiates the SDK configuring it with the provided parameters.
        
        :param security: The security details required for authentication
        :type security: shared.Security
        :param global_path_param: Configures the global_path_param parameter for all supported operations
        :type global_path_param: int
        :param global_query_param: Configures the global_query_param parameter for all supported operations
        :type global_query_param: str
        :param server_url: The server URL to use for all operations
        :type server_url: str
        :param url_params: Parameters to optionally template the server URL with
        :type url_params: dict[str, str]
        :param client: The requests.Session HTTP client to use for all operations
        :type client: requests_http.Session        
        """
        self._client = requests_http.Session()
        
        self._globals = {
            "parameters": {
                "queryParam": {
                    "global_query_param": global_query_param,
                },
                "pathParam": {
                    "global_path_param": global_path_param,
                },
            },
        }
        
        if server_url is not None:
            if url_params is not None:
                self._server_url = utils.template_url(server_url, url_params)
            else:
                self._server_url = server_url

        if client is not None:
            self._client = client
        
        self._security_client = utils.configure_security_client(self._client, security)
        

        self._init_sdks()
    
    def _init_sdks(self):
        self.auth = Auth(
            self._client,
            self._security_client,
            self._server_url,
            self._language,
            self._sdk_version,
            self._gen_version,
            self._globals
        )
        
        self.auth_new = AuthNew(
            self._client,
            self._security_client,
            self._server_url,
            self._language,
            self._sdk_version,
            self._gen_version,
            self._globals
        )
        
        self.errors = Errors(
            self._client,
            self._security_client,
            self._server_url,
            self._language,
            self._sdk_version,
            self._gen_version,
            self._globals
        )
        
        self.flattening = Flattening(
            self._client,
            self._security_client,
            self._server_url,
            self._language,
            self._sdk_version,
            self._gen_version,
            self._globals
        )
        
        self.generation = Generation(
            self._client,
            self._security_client,
            self._server_url,
            self._language,
            self._sdk_version,
            self._gen_version,
            self._globals
        )
        
        self.globals = Globals(
            self._client,
            self._security_client,
            self._server_url,
            self._language,
            self._sdk_version,
            self._gen_version,
            self._globals
        )
        
        self.parameters = Parameters(
            self._client,
            self._security_client,
            self._server_url,
            self._language,
            self._sdk_version,
            self._gen_version,
            self._globals
        )
        
        self.request_bodies = RequestBodies(
            self._client,
            self._security_client,
            self._server_url,
            self._language,
            self._sdk_version,
            self._gen_version,
            self._globals
        )
        
        self.response_bodies = ResponseBodies(
            self._client,
            self._security_client,
            self._server_url,
            self._language,
            self._sdk_version,
            self._gen_version,
            self._globals
        )
        
        self.servers = Servers(
            self._client,
            self._security_client,
            self._server_url,
            self._language,
            self._sdk_version,
            self._gen_version,
            self._globals
        )
        
        self.telemetry = Telemetry(
            self._client,
            self._security_client,
            self._server_url,
            self._language,
            self._sdk_version,
            self._gen_version,
            self._globals
        )
        
        self.unions = Unions(
            self._client,
            self._security_client,
            self._server_url,
            self._language,
            self._sdk_version,
            self._gen_version,
            self._globals
        )
        
    
    def put_anything_ignored_generation(self, request: str) -> operations.PutAnythingIgnoredGenerationResponse:
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/anything/ignoredGeneration'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", 'string')
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self._language} {self._sdk_version} {self._gen_version}'
        
        client = self._security_client
        
        http_res = client.request('PUT', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.PutAnythingIgnoredGenerationResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.PutAnythingIgnoredGeneration200ApplicationJSON])
                res.put_anything_ignored_generation_200_application_json_object = out

        return res

    
    def response_body_json_get(self) -> operations.ResponseBodyJSONGetResponse:
        base_url = self._server_url
        
        url = base_url.removesuffix('/') + '/json'
        headers = {}
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self._language} {self._sdk_version} {self._gen_version}'
        
        client = self._security_client
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.ResponseBodyJSONGetResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[shared.HTTPBinSimpleJSONObject])
                res.http_bin_simple_json_object = out

        return res

    