"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from typing import List, Optional

REQUEST_BODY_POST_APPLICATION_JSON_ARRAY_OF_ARRAY_OF_PRIMITIVE_SERVERS = [
	"http://localhost:35456",
]


@dataclasses.dataclass
class RequestBodyPostApplicationJSONArrayOfArrayOfPrimitiveResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    arrs: Optional[List[List[str]]] = dataclasses.field(default=None)
    r"""OK"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    

