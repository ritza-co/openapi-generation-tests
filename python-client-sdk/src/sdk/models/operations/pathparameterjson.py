"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from ..shared import simpleobject as shared_simpleobject
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional



@dataclasses.dataclass
class PathParameterJSONRequest:
    json_obj: shared_simpleobject.SimpleObject = dataclasses.field(metadata={'path_param': { 'field_name': 'jsonObj', 'serialization': 'json' }})
    r"""A simple object that uses all our supported primitive types and enums and has optional properties."""
    



@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class PathParameterJSONRes:
    r"""OK"""
    url: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('url') }})
    




@dataclasses.dataclass
class PathParameterJSONResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    res: Optional[PathParameterJSONRes] = dataclasses.field(default=None)
    r"""OK"""
    

