"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional


@dataclasses.dataclass
class FormQueryParamsPrimitiveRequest:
    bool_param: bool = dataclasses.field(metadata={'query_param': { 'field_name': 'boolParam', 'style': 'form', 'explode': True }})
    int_param: int = dataclasses.field(metadata={'query_param': { 'field_name': 'intParam', 'style': 'form', 'explode': True }})
    num_param: float = dataclasses.field(metadata={'query_param': { 'field_name': 'numParam', 'style': 'form', 'explode': True }})
    str_param: str = dataclasses.field(metadata={'query_param': { 'field_name': 'strParam', 'style': 'form', 'explode': True }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class FormQueryParamsPrimitiveArgs:
    bool_param: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('boolParam') }})
    int_param: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('intParam') }})
    num_param: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('numParam') }})
    str_param: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('strParam') }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class FormQueryParamsPrimitiveRes:
    r"""OK"""
    args: FormQueryParamsPrimitiveArgs = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('args') }})
    url: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('url') }})
    



@dataclasses.dataclass
class FormQueryParamsPrimitiveResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    res: Optional[FormQueryParamsPrimitiveRes] = dataclasses.field(default=None)
    r"""OK"""
    

