"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from enum import Enum
from sdk import utils
from typing import Optional

class NullableRequiredPropertyPostRequestBodyNullableRequiredEnum(str, Enum):
    FIRST = 'first'
    SECOND = 'second'


@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class NullableRequiredPropertyPostRequestBody:
    nullable_required_array: Optional[list[float]] = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('NullableRequiredArray') }})
    nullable_required_enum: Optional[NullableRequiredPropertyPostRequestBodyNullableRequiredEnum] = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('NullableRequiredEnum') }})
    nullable_required_int: Optional[int] = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('NullableRequiredInt') }})
    nullable_optional_int: Optional[int] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('NullableOptionalInt') }})
    




@dataclasses.dataclass
class NullableRequiredPropertyPostResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    nullable_required_property_post_200_application_json_string: Optional[str] = dataclasses.field(default=None)
    r"""OK"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    

