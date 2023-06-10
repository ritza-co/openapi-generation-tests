"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional



@dataclasses.dataclass
class HeaderParamsPrimitiveRequest:
    x_header_boolean: bool = dataclasses.field(metadata={'header': { 'field_name': 'X-Header-Boolean', 'style': 'simple', 'explode': False }})
    x_header_integer: int = dataclasses.field(metadata={'header': { 'field_name': 'X-Header-Integer', 'style': 'simple', 'explode': False }})
    x_header_number: float = dataclasses.field(metadata={'header': { 'field_name': 'X-Header-Number', 'style': 'simple', 'explode': False }})
    x_header_string: str = dataclasses.field(metadata={'header': { 'field_name': 'X-Header-String', 'style': 'simple', 'explode': False }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class HeaderParamsPrimitiveResHeaders:
    x_header_boolean: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('X-Header-Boolean') }})
    x_header_integer: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('X-Header-Integer') }})
    x_header_number: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('X-Header-Number') }})
    x_header_string: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('X-Header-String') }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class HeaderParamsPrimitiveRes:
    r"""OK"""
    headers: HeaderParamsPrimitiveResHeaders = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('headers') }})
    




@dataclasses.dataclass
class HeaderParamsPrimitiveResponse:
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    res: Optional[HeaderParamsPrimitiveRes] = dataclasses.field(default=None)
    r"""OK"""
    

