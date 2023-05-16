"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from ..shared import validcircularreferenceobject as shared_validcircularreferenceobject
from typing import Optional


@dataclasses.dataclass
class CircularReferenceGetResponse:
    
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    valid_circular_reference_object: Optional[shared_validcircularreferenceobject.ValidCircularReferenceObject] = dataclasses.field(default=None)
    r"""OK"""
    