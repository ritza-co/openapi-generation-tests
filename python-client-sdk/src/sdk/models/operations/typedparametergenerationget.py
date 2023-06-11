"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from datetime import date
from typing import Optional



@dataclasses.dataclass
class TypedParameterGenerationGetObj:
    bool: bool = dataclasses.field(metadata={'query_param': { 'field_name': 'bool' }})
    num: float = dataclasses.field(metadata={'query_param': { 'field_name': 'num' }})
    str_: str = dataclasses.field(metadata={'query_param': { 'field_name': 'str' }})
    




@dataclasses.dataclass
class TypedParameterGenerationGetRequest:
    bigint: Optional[int] = dataclasses.field(default=None, metadata={'query_param': { 'field_name': 'bigint', 'style': 'form', 'explode': True }})
    date_: Optional[date] = dataclasses.field(default=None, metadata={'query_param': { 'field_name': 'date', 'style': 'form', 'explode': True }})
    obj: Optional[TypedParameterGenerationGetObj] = dataclasses.field(default=None, metadata={'query_param': { 'field_name': 'obj', 'style': 'form', 'explode': True }})
    




@dataclasses.dataclass
class TypedParameterGenerationGetResponse:
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    

