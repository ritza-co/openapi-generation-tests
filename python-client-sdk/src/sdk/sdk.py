"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

import requests as requests_http
from .auth import Auth
from .authnew import AuthNew
from .documentation import Documentation
from .errors import Errors
from .first import First
from .flattening import Flattening
from .generation import Generation
from .globals import Globals
from .nest import Nest
from .nested import Nested
from .pagination import Pagination
from .parameters import Parameters
from .requestbodies import RequestBodies
from .resource import Resource
from .responsebodies import ResponseBodies
from .retries import Retries
from .sdkconfiguration import SDKConfiguration, ServerSomething
from .second import Second
from .servers import Servers
from .telemetry import Telemetry
from .unions import Unions
from sdk import utils
from sdk.models import errors, operations, shared
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
    documentation: Documentation
    r"""Testing for documentation extensions in Python."""
    errors: Errors
    r"""Endpoints for testing error responses."""
    first: First
    flattening: Flattening
    r"""Endpoints for testing flattening through request body and parameter combinations."""
    generation: Generation
    r"""Endpoints for purely testing valid generation behavior."""
    globals: Globals
    r"""Endpoints for testing global parameters."""
    nest: Nest
    nested: Nested
    pagination: Pagination
    r"""Endpoints for testing the pagination extension"""
    parameters: Parameters
    r"""Endpoints for testing parameters."""
    request_bodies: RequestBodies
    r"""Endpoints for testing request bodies."""
    resource: Resource
    response_bodies: ResponseBodies
    r"""Endpoints for testing response bodies."""
    retries: Retries
    r"""Endpoints for testing retries."""
    second: Second
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
                 protocol: str = None,
                 something: ServerSomething = None,
                 server_idx: int = None,
                 server_url: str = None,
                 url_params: dict[str, str] = None,
                 client: requests_http.Session = None,
                 retry_config: utils.RetryConfig = None
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
        :param protocol: Allows setting the protocol variable for url substitution
        :type protocol: str
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
        :param retry_config: The utils.RetryConfig to use globally
        :type retry_config: utils.RetryConfig
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
            {
                'hostname': hostname or 'localhost',
                'port': port or '35123',
                'protocol': protocol or 'http',
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
        }, retry_config=retry_config)
       
        self._init_sdks()
    
    def _init_sdks(self):
        self.auth = Auth(self.sdk_configuration)
        self.auth_new = AuthNew(self.sdk_configuration)
        self.documentation = Documentation(self.sdk_configuration)
        self.errors = Errors(self.sdk_configuration)
        self.first = First(self.sdk_configuration)
        self.flattening = Flattening(self.sdk_configuration)
        self.generation = Generation(self.sdk_configuration)
        self.globals = Globals(self.sdk_configuration)
        self.nest = Nest(self.sdk_configuration)
        self.nested = Nested(self.sdk_configuration)
        self.pagination = Pagination(self.sdk_configuration)
        self.parameters = Parameters(self.sdk_configuration)
        self.request_bodies = RequestBodies(self.sdk_configuration)
        self.resource = Resource(self.sdk_configuration)
        self.response_bodies = ResponseBodies(self.sdk_configuration)
        self.retries = Retries(self.sdk_configuration)
        self.second = Second(self.sdk_configuration)
        self.servers = Servers(self.sdk_configuration)
        self.telemetry = Telemetry(self.sdk_configuration)
        self.unions = Unions(self.sdk_configuration)
    
    def put_anything_ignored_generation(self, request: str) -> operations.PutAnythingIgnoredGenerationResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/ignoredGeneration'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", False, False, 'json')
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        if data is None and form is None:
            raise Exception('request body is required')
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('PUT', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.PutAnythingIgnoredGenerationResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.PutAnythingIgnoredGeneration200ApplicationJSON])
                res.put_anything_ignored_generation_200_application_json_object = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    
    def response_body_json_get(self) -> operations.ResponseBodyJSONGetResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/json'
        headers = {}
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.ResponseBodyJSONGetResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[shared.HTTPBinSimpleJSONObject])
                res.http_bin_simple_json_object = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    