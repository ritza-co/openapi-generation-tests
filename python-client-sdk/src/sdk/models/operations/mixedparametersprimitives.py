"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional



@dataclasses.dataclass
class MixedParametersPrimitivesRequest:
    header_param: str = dataclasses.field(metadata={'header': { 'field_name': 'headerParam', 'style': 'simple', 'explode': False }})
    path_param: str = dataclasses.field(metadata={'path_param': { 'field_name': 'pathParam', 'style': 'simple', 'explode': False }})
    query_string_param: str = dataclasses.field(metadata={'query_param': { 'field_name': 'queryStringParam', 'style': 'form', 'explode': True }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class MixedParametersPrimitivesResArgs:
    query_string_param: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('queryStringParam') }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class MixedParametersPrimitivesResHeaders:
    headerparam: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('Headerparam') }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class MixedParametersPrimitivesRes:
    r"""OK"""
    args: MixedParametersPrimitivesResArgs = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('args') }})
    headers: MixedParametersPrimitivesResHeaders = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('headers') }})
    url: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('url') }})
    




@dataclasses.dataclass
class MixedParametersPrimitivesResponse:
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    res: Optional[MixedParametersPrimitivesRes] = dataclasses.field(default=None)
    r"""OK"""
    

