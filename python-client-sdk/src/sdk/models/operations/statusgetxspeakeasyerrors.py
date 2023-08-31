"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from typing import Optional

STATUS_GET_X_SPEAKEASY_ERRORS_SERVERS = [
	"http://localhost:35456",
]



@dataclasses.dataclass
class StatusGetXSpeakeasyErrorsRequest:
    status_code: int = dataclasses.field(metadata={'path_param': { 'field_name': 'statusCode', 'style': 'simple', 'explode': False }})
    




@dataclasses.dataclass
class StatusGetXSpeakeasyErrorsResponse:
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    

