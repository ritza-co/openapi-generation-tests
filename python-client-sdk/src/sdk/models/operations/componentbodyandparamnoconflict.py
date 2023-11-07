"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from ...models.shared import simpleobject as shared_simpleobject
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Dict, Optional


@dataclasses.dataclass
class ComponentBodyAndParamNoConflictRequest:
    param_str: str = dataclasses.field(metadata={'query_param': { 'field_name': 'paramStr', 'style': 'form', 'explode': True }})
    simple_object: shared_simpleobject.SimpleObject = dataclasses.field(metadata={'request': { 'media_type': 'application/json' }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class ComponentBodyAndParamNoConflictRes:
    r"""OK"""
    args: Dict[str, str] = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('args') }})
    json: shared_simpleobject.SimpleObject = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('json') }})
    r"""A simple object that uses all our supported primitive types and enums and has optional properties.
    https://docs.speakeasyapi.dev - A link to the external docs.
    """
    



@dataclasses.dataclass
class ComponentBodyAndParamNoConflictResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    res: Optional[ComponentBodyAndParamNoConflictRes] = dataclasses.field(default=None)
    r"""OK"""
    

