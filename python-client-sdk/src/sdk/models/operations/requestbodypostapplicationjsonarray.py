"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from ..shared import simpleobject as shared_simpleobject
from typing import Optional

REQUEST_BODY_POST_APPLICATION_JSON_ARRAY_SERVERS = [
	"http://localhost:35456",
]


@dataclasses.dataclass
class RequestBodyPostApplicationJSONArrayResponse:
    
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    simple_objects: Optional[list[shared_simpleobject.SimpleObject]] = dataclasses.field(default=None)
    r"""OK"""
    