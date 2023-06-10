"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional


@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class RequestBodyPutMultipartDeepResForm:
    arr: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('arr') }})
    bool: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('bool') }})
    int: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('int') }})
    map: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('map') }})
    num: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('num') }})
    obj: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('obj') }})
    str_: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('str') }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class RequestBodyPutMultipartDeepRes:
    r"""OK"""
    form: RequestBodyPutMultipartDeepResForm = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('form') }})
    




@dataclasses.dataclass
class RequestBodyPutMultipartDeepResponse:
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    res: Optional[RequestBodyPutMultipartDeepRes] = dataclasses.field(default=None)
    r"""OK"""
    

