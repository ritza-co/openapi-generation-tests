"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional


@dataclasses.dataclass
class IgnoredGenerationGetSingledIgnoredCallbackOperationResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    



@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class IgnoredGenerationGetSingledIgnoredCallbackOperationRequestBody:
    some_prop: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('someProp'), 'exclude': lambda f: f is None }})
    



@dataclasses.dataclass
class IgnoredGenerationGetNotIgnoredCallbackResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    



@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class IgnoredGenerationGetNotIgnoredCallbackRequestBody:
    some_prop: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('someProp'), 'exclude': lambda f: f is None }})
    

