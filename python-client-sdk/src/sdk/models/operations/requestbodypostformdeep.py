"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional


@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class RequestBodyPostFormDeepResForm:
    arr: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('arr') }})
    bool: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('bool') }})
    int: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('int') }})
    map: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('map') }})
    num: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('num') }})
    obj: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('obj') }})
    str_: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('str') }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class RequestBodyPostFormDeepRes:
    r"""OK"""
    form: RequestBodyPostFormDeepResForm = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('form') }})
    




@dataclasses.dataclass
class RequestBodyPostFormDeepResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    res: Optional[RequestBodyPostFormDeepRes] = dataclasses.field(default=None)
    r"""OK"""
    

