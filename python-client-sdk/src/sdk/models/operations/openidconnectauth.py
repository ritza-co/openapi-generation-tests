"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional



@dataclasses.dataclass
class OpenIDConnectAuthSecurity:
    open_id_connect: str = dataclasses.field(metadata={'security': { 'scheme': True, 'type': 'openIdConnect', 'field_name': 'Authorization' }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class OpenIDConnectAuthToken:
    r"""Successful authentication."""
    authenticated: bool = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('authenticated') }})
    token: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('token') }})
    




@dataclasses.dataclass
class OpenIDConnectAuthResponse:
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    token: Optional[OpenIDConnectAuthToken] = dataclasses.field(default=None)
    r"""Successful authentication."""
    

