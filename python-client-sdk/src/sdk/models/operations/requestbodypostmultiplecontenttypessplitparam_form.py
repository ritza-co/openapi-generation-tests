"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Any, Optional



@dataclasses.dataclass
class RequestBodyPostMultipleContentTypesSplitParamApplicationXWwwFormUrlencoded:
    bool3: bool = dataclasses.field(metadata={'form': { 'field_name': 'bool3' }})
    num3: float = dataclasses.field(metadata={'form': { 'field_name': 'num3' }})
    str3: str = dataclasses.field(metadata={'form': { 'field_name': 'str3' }})
    




@dataclasses.dataclass
class RequestBodyPostMultipleContentTypesSplitParamFormRequest:
    param_str: str = dataclasses.field(metadata={'query_param': { 'field_name': 'paramStr', 'style': 'form', 'explode': True }})
    request_body: RequestBodyPostMultipleContentTypesSplitParamApplicationXWwwFormUrlencoded = dataclasses.field(metadata={'request': { 'media_type': 'application/x-www-form-urlencoded' }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class RequestBodyPostMultipleContentTypesSplitParamFormRes:
    r"""OK"""
    args: Optional[dict[str, str]] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('args'), 'exclude': lambda f: f is None }})
    form: Optional[dict[str, Any]] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('form'), 'exclude': lambda f: f is None }})
    json: Optional[dict[str, Any]] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('json'), 'exclude': lambda f: f is None }})
    




@dataclasses.dataclass
class RequestBodyPostMultipleContentTypesSplitParamFormResponse:
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    res: Optional[RequestBodyPostMultipleContentTypesSplitParamFormRes] = dataclasses.field(default=None)
    r"""OK"""
    

