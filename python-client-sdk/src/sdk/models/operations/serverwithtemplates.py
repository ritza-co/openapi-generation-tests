"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from typing import Optional

SERVER_WITH_TEMPLATES_SERVERS = [
	"http://{hostname}:{port}",
]


@dataclasses.dataclass
class ServerWithTemplatesResponse:
    
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    