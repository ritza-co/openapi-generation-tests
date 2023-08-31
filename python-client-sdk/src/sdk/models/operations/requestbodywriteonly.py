"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from ..shared import readonlyobject as shared_readonlyobject
from typing import Optional

REQUEST_BODY_WRITE_ONLY_SERVERS = [
	"http://localhost:35456",
]



@dataclasses.dataclass
class RequestBodyWriteOnlyResponse:
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    read_only_object: Optional[shared_readonlyobject.ReadOnlyObject] = dataclasses.field(default=None)
    r"""OK"""
    

