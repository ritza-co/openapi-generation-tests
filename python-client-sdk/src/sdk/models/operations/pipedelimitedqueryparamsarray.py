"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from ..shared import simpleobject as shared_simpleobject
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional


@dataclasses.dataclass
class PipeDelimitedQueryParamsArrayRequest:
    
    arr_param: Optional[list[str]] = dataclasses.field(default=None, metadata={'query_param': { 'field_name': 'arrParam', 'style': 'pipeDelimited', 'explode': False }})
    arr_param_exploded: Optional[list[int]] = dataclasses.field(default=None, metadata={'query_param': { 'field_name': 'arrParamExploded', 'style': 'pipeDelimited', 'explode': True }})
    map_param: Optional[dict[str, str]] = dataclasses.field(default=None, metadata={'query_param': { 'field_name': 'mapParam', 'style': 'pipeDelimited', 'explode': False }})
    obj_param: Optional[shared_simpleobject.SimpleObject] = dataclasses.field(default=None, metadata={'query_param': { 'field_name': 'objParam', 'style': 'pipeDelimited', 'explode': False }})
    r"""A simple object that uses all our supported primitive types and enums and has optional properties."""
    

@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class PipeDelimitedQueryParamsArrayResArgs:
    
    arr_param: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('arrParam') }})
    arr_param_exploded: list[str] = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('arrParamExploded') }})
    

@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class PipeDelimitedQueryParamsArrayRes:
    r"""OK"""
    
    args: PipeDelimitedQueryParamsArrayResArgs = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('args') }})
    url: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('url') }})
    

@dataclasses.dataclass
class PipeDelimitedQueryParamsArrayResponse:
    
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    res: Optional[PipeDelimitedQueryParamsArrayRes] = dataclasses.field(default=None)
    r"""OK"""
    