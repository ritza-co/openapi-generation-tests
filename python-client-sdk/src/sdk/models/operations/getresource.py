"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from ..shared import exampleresource as shared_exampleresource
from typing import Optional



@dataclasses.dataclass
class GetResourceRequest:
    resource_id: str = dataclasses.field(metadata={'path_param': { 'field_name': 'resourceId', 'style': 'simple', 'explode': False }})
    




@dataclasses.dataclass
class GetResourceResponse:
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    example_resource: Optional[shared_exampleresource.ExampleResource] = dataclasses.field(default=None)
    r"""OK"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    

