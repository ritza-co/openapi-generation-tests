"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from typing import Optional



@dataclasses.dataclass
class DeprecatedNoCommentsGetRequest:
    deprecated_parameter: Optional[str] = dataclasses.field(default=None, metadata={'query_param': { 'field_name': 'deprecatedParameter', 'style': 'form', 'explode': True }})
    r"""Deprecated field: This will be removed in a future release, please migrate away from it as soon as possible."""
    




@dataclasses.dataclass
class DeprecatedNoCommentsGetResponse:
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    

