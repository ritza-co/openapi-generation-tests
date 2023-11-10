"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from ...models.shared import httpbinsimplejsonobject as shared_httpbinsimplejsonobject
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional


@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class IgnoresPostRequestBody:
    callback_url: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('callbackUrl'), 'exclude': lambda f: f is None }})
    test_prop: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('testProp'), 'exclude': lambda f: f is None }})
    



@dataclasses.dataclass
class IgnoresPostRequest:
    request_body: IgnoresPostRequestBody = dataclasses.field(metadata={'request': { 'media_type': 'application/json' }})
    test_param: Optional[str] = dataclasses.field(default=None, metadata={'query_param': { 'field_name': 'testParam', 'style': 'form', 'explode': True }})
    



@dataclasses.dataclass
class IgnoresPostResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    http_bin_simple_json_object: Optional[shared_httpbinsimplejsonobject.HTTPBinSimpleJSONObject] = dataclasses.field(default=None)
    r"""OK"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    

