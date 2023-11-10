"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Any, Dict, Optional


@dataclasses.dataclass
class RequestBodyPostMultipleContentTypesSplitMultipartRequestBody:
    bool2: bool = dataclasses.field(metadata={'multipart_form': { 'field_name': 'bool2' }})
    num2: float = dataclasses.field(metadata={'multipart_form': { 'field_name': 'num2' }})
    str2: str = dataclasses.field(metadata={'multipart_form': { 'field_name': 'str2' }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class RequestBodyPostMultipleContentTypesSplitMultipartRes:
    r"""OK"""
    form: Optional[Dict[str, Any]] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('form'), 'exclude': lambda f: f is None }})
    json: Optional[Dict[str, Any]] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('json'), 'exclude': lambda f: f is None }})
    



@dataclasses.dataclass
class RequestBodyPostMultipleContentTypesSplitMultipartResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    res: Optional[RequestBodyPostMultipleContentTypesSplitMultipartRes] = dataclasses.field(default=None)
    r"""OK"""
    

