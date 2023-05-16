"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional


@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class RequestBodyPostFormSimpleResForm:
    
    any: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('any') }})
    bool: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('bool') }})
    date_: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('date') }})
    date_time: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('dateTime') }})
    enum: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('enum') }})
    float32: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('float32') }})
    int: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('int') }})
    int32: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('int32') }})
    num: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('num') }})
    str_: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('str') }})
    bool_opt: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('boolOpt'), 'exclude': lambda f: f is None }})
    int_opt_null: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('intOptNull'), 'exclude': lambda f: f is None }})
    num_opt_null: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('numOptNull'), 'exclude': lambda f: f is None }})
    str_opt: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('strOpt'), 'exclude': lambda f: f is None }})
    

@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class RequestBodyPostFormSimpleRes:
    r"""OK"""
    
    form: RequestBodyPostFormSimpleResForm = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('form') }})
    

@dataclasses.dataclass
class RequestBodyPostFormSimpleResponse:
    
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    res: Optional[RequestBodyPostFormSimpleRes] = dataclasses.field(default=None)
    r"""OK"""
    