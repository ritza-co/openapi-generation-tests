"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from ..shared import simpleobject as shared_simpleobject
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional


@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class RequestBodyPostApplicationJSONSimpleRes:
    r"""OK"""
    json: shared_simpleobject.SimpleObject = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('json') }})
    r"""A simple object that uses all our supported primitive types and enums and has optional properties.
    https://docs.speakeasyapi.dev - A link to the external docs.
    """
    




@dataclasses.dataclass
class RequestBodyPostApplicationJSONSimpleResponse:
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    res: Optional[RequestBodyPostApplicationJSONSimpleRes] = dataclasses.field(default=None)
    r"""OK"""
    

