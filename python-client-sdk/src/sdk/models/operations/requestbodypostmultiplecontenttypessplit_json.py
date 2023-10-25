"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Any, Dict, Optional


@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class RequestBodyPostMultipleContentTypesSplitApplicationJSON:
    bool: bool = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('bool') }})
    num: float = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('num') }})
    str_: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('str') }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class RequestBodyPostMultipleContentTypesSplitJSONRes:
    r"""OK"""
    form: Optional[Dict[str, Any]] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('form'), 'exclude': lambda f: f is None }})
    json: Optional[Dict[str, Any]] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('json'), 'exclude': lambda f: f is None }})
    



@dataclasses.dataclass
class RequestBodyPostMultipleContentTypesSplitJSONResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    res: Optional[RequestBodyPostMultipleContentTypesSplitJSONRes] = dataclasses.field(default=None)
    r"""OK"""
    

