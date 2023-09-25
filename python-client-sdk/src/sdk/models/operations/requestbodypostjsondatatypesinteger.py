"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional


@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class RequestBodyPostJSONDataTypesInteger200ApplicationJSON:
    r"""OK"""
    json: int = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('json') }})
    




@dataclasses.dataclass
class RequestBodyPostJSONDataTypesIntegerResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    request_body_post_json_data_types_integer_200_application_json_object: Optional[RequestBodyPostJSONDataTypesInteger200ApplicationJSON] = dataclasses.field(default=None)
    r"""OK"""
    

