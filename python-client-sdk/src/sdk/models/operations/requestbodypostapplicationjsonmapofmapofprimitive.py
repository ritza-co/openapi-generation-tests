"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from typing import Optional

REQUEST_BODY_POST_APPLICATION_JSON_MAP_OF_MAP_OF_PRIMITIVE_SERVERS = [
	"http://localhost:35456",
]



@dataclasses.dataclass
class RequestBodyPostApplicationJSONMapOfMapOfPrimitiveResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    res: Optional[dict[str, dict[str, str]]] = dataclasses.field(default=None)
    r"""OK"""
    

