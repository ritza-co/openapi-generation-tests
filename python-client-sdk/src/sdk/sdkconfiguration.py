"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

import requests
from dataclasses import dataclass, field
from typing import Any
from enum import Enum

SERVERS = [
    'http://localhost:35123',
    # The default server.
    'http://broken',
    # A server url to a non-existent server.
    'http://{hostname}:{port}',
    # A server url with templated variables.
    'http://localhost:35123/anything/{something}',
    # A server url with templated variables.
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
    server_defaults: list[dict[str, str]] = field(default_factory=list)
    globals: dict[str, dict[str, dict[str, Any]]] = field(default_factory=dict)
    language: str = 'python'
    openapi_doc_version: str = '0.1.0'
    sdk_version: str = '1.10.0'
    gen_version: str = '2.41.1'

    def get_server_details(self) -> tuple[str, dict[str, str]]:
        if self.server_url:
            return self.server_url.removesuffix('/'), {}
        if self.server_idx is None:
            self.server_idx = 0

        return SERVERS[self.server_idx], self.server_defaults[self.server_idx]
