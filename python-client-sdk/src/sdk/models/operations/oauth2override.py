"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional



@dataclasses.dataclass
class Oauth2OverrideSecurity:
    oauth2: str = dataclasses.field(metadata={'security': { 'scheme': True, 'type': 'oauth2', 'field_name': 'Authorization' }})
    




@dataclasses.dataclass
class Oauth2OverrideRequest:
    pass


@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class Oauth2OverrideToken:
    r"""Successful authentication."""
    authenticated: bool = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('authenticated') }})
    token: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('token') }})
    




@dataclasses.dataclass
class Oauth2OverrideResponse:
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    token: Optional[Oauth2OverrideToken] = dataclasses.field(default=None)
    r"""Successful authentication."""
    

