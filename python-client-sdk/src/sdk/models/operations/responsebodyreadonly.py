"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from ..shared import readonlyobject as shared_readonlyobject
from typing import Optional

RESPONSE_BODY_READ_ONLY_SERVERS = [
	"http://localhost:35456",
]



@dataclasses.dataclass
class ResponseBodyReadOnlyResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    read_only_object: Optional[shared_readonlyobject.ReadOnlyObject] = dataclasses.field(default=None)
    r"""OK"""
    

