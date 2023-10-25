"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from ..shared import simpleobjectcamelcase as shared_simpleobjectcamelcase
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional


@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class RequestBodyPostApplicationJSONSimpleCamelCaseRes:
    r"""OK"""
    json: shared_simpleobjectcamelcase.SimpleObjectCamelCase = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('json') }})
    r"""A simple object that uses all our supported primitive types and enums and has optional properties.
    https://docs.speakeasyapi.dev - A link to the external docs.
    """
    



@dataclasses.dataclass
class RequestBodyPostApplicationJSONSimpleCamelCaseResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    res: Optional[RequestBodyPostApplicationJSONSimpleCamelCaseRes] = dataclasses.field(default=None)
    r"""OK"""
    

