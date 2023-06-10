"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional



@dataclasses.dataclass
class GlobalsQueryParameterGetRequest:
    global_query_param: Optional[str] = dataclasses.field(default=None, metadata={'query_param': { 'field_name': 'globalQueryParam', 'style': 'form', 'explode': True }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class GlobalsQueryParameterGetResArgs:
    global_query_param: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('globalQueryParam') }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class GlobalsQueryParameterGetRes:
    r"""OK"""
    args: GlobalsQueryParameterGetResArgs = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('args') }})
    




@dataclasses.dataclass
class GlobalsQueryParameterGetResponse:
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    res: Optional[GlobalsQueryParameterGetRes] = dataclasses.field(default=None)
    r"""OK"""
    

