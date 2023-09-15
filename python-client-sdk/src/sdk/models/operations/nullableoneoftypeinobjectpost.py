"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from ..shared import nullableoneoftypeinobject as shared_nullableoneoftypeinobject
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional


@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class NullableOneOfTypeInObjectPostRes:
    r"""OK"""
    json: shared_nullableoneoftypeinobject.NullableOneOfTypeInObject = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('json') }})
    




@dataclasses.dataclass
class NullableOneOfTypeInObjectPostResponse:
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    res: Optional[NullableOneOfTypeInObjectPostRes] = dataclasses.field(default=None)
    r"""OK"""
    

