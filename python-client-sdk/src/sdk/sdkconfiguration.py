"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

import requests
from dataclasses import dataclass, field
from typing import Any, Dict, List, Tuple
from enum import Enum
from .utils.retries import RetryConfig
from .utils import utils


SERVERS = [
    'http://localhost:35123',
    # The default server.
    'http://broken',
    # A server url to a non-existent server.
    'http://{hostname}:{port}',
    # A server url with templated variables.
    'http://localhost:35123/anything/{something}',
    # A server url with templated variables.
    '{protocol}://{hostname}:{port}',
    # A server url with templated variables (including the protocol).
]
"""Contains the list of servers available to the SDK"""

class ServerSomething(str, Enum):
    r"""Something is a variable for changing the root path"""
    SOMETHING = 'something'
    SOMETHING_ELSE = 'somethingElse'
    SOMETHING_ELSE_AGAIN = 'somethingElseAgain'


@dataclass
class SDKConfiguration:
    client: requests.Session
    security_client: requests.Session
    server_url: str = ''
    server_idx: int = 0
    server_defaults: List[Dict[str, str]] = field(default_factory=List)
    globals: Dict[str, Dict[str, Dict[str, Any]]] = field(default_factory=Dict)
    language: str = 'python'
    openapi_doc_version: str = '0.1.0'
    sdk_version: str = '2.0.1'
    gen_version: str = '2.172.4'
    user_agent: str = 'speakeasy-sdk/python 2.0.1 2.172.4 0.1.0 openapi'
    retry_config: RetryConfig = None

    def get_server_details(self) -> Tuple[str, Dict[str, str]]:
        if self.server_url:
            return utils.remove_suffix(self.server_url, '/'), {}
        if self.server_idx is None:
            self.server_idx = 0

        return SERVERS[self.server_idx], self.server_defaults[self.server_idx]
