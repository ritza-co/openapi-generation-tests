"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from ..shared import arrobjvaluecamelcase as shared_arrobjvaluecamelcase
from typing import Optional



@dataclasses.dataclass
class RequestBodyPostApplicationJSONArrayObjCamelCaseResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    arr_obj_value_camel_case: Optional[shared_arrobjvaluecamelcase.ArrObjValueCamelCase] = dataclasses.field(default=None)
    r"""OK"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    

