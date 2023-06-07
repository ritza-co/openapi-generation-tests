"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

import requests as requests_http
from .auth import Auth
from .authnew import AuthNew
from .errors import Errors
from .flattening import Flattening
from .generation import Generation
from .globals import Globals
from .pagination import Pagination
from .parameters import Parameters
from .requestbodies import RequestBodies
from .responsebodies import ResponseBodies
from .sdkconfiguration import SDKConfiguration, ServerSomething
from .servers import Servers
from .telemetry import Telemetry
from .unions import Unions
from sdk import utils
from sdk.models import operations, shared
from typing import Optional

class SDK:
    r"""Test: Test Summary
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
    pagination: Pagination
    r"""Endpoints for testing the pagination extension"""
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

    sdk_configuration: SDKConfiguration

    def __init__(self,
                 security: shared.Security = None,
                 global_path_param: int = None,
                 global_query_param: str = None,
                 hostname: str = None,
                 port: str = None,
                 something: ServerSomething = None,
                 server_idx: int = None,
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
        :param hostname: Allows setting the hostname variable for url substitution
        :type hostname: str
        :param port: Allows setting the port variable for url substitution
        :type port: str
        :param something: Allows setting the something variable for url substitution
        :type something: sdk.ServerSomething
        :param server_idx: The index of the server to use for all operations
        :type server_idx: int
        :param server_url: The server URL to use for all operations
        :type server_url: str
        :param url_params: Parameters to optionally template the server URL with
        :type url_params: dict[str, str]
        :param client: The requests.Session HTTP client to use for all operations
        :type client: requests_http.Session        
        """
        if client is None:
            client = requests_http.Session()
        
        security_client = utils.configure_security_client(client, security)
        
        if server_url is not None:
            if url_params is not None:
                server_url = utils.template_url(server_url, url_params)
        server_defaults = [
            {
            },
            {
            },
            {
                'hostname': hostname or 'localhost',
                'port': port or '35123',
            },
            {
                'something': something or 'something',
            },
        ]

        self.sdk_configuration = SDKConfiguration(client, security_client, server_url, server_idx, server_defaults, {
            'parameters': {
                'queryParam': {
                    'global_query_param': global_query_param,
                },
                'pathParam': {
                    'global_path_param': global_path_param,
                },
            },
        })
       
        self._init_sdks()
    
    def _init_sdks(self):
        self.auth = Auth(self.sdk_configuration)
        self.auth_new = AuthNew(self.sdk_configuration)
        self.errors = Errors(self.sdk_configuration)
        self.flattening = Flattening(self.sdk_configuration)
        self.generation = Generation(self.sdk_configuration)
        self.globals = Globals(self.sdk_configuration)
        self.pagination = Pagination(self.sdk_configuration)
        self.parameters = Parameters(self.sdk_configuration)
        self.request_bodies = RequestBodies(self.sdk_configuration)
        self.response_bodies = ResponseBodies(self.sdk_configuration)
        self.servers = Servers(self.sdk_configuration)
        self.telemetry = Telemetry(self.sdk_configuration)
        self.unions = Unions(self.sdk_configuration)
    
    def put_anything_ignored_generation(self, request: str) -> operations.PutAnythingIgnoredGenerationResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/ignoredGeneration'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", 'string')
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self.sdk_configuration.language} {self.sdk_configuration.sdk_version} {self.sdk_configuration.gen_version}'
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('PUT', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.PutAnythingIgnoredGenerationResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.PutAnythingIgnoredGeneration200ApplicationJSON])
                res.put_anything_ignored_generation_200_application_json_object = out

        return res

    
    def response_body_json_get(self) -> operations.ResponseBodyJSONGetResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/json'
        headers = {}
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self.sdk_configuration.language} {self.sdk_configuration.sdk_version} {self.sdk_configuration.gen_version}'
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.ResponseBodyJSONGetResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[shared.HTTPBinSimpleJSONObject])
                res.http_bin_simple_json_object = out

        return res

    