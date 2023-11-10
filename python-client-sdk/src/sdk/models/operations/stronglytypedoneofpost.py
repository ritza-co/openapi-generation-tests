"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from ...models.shared import deepobjectwithtype as shared_deepobjectwithtype
from ...models.shared import simpleobjectwithtype as shared_simpleobjectwithtype
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Optional, Union


@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class StronglyTypedOneOfPostRes:
    r"""OK"""
    json: Union[shared_simpleobjectwithtype.SimpleObjectWithType, shared_deepobjectwithtype.DeepObjectWithType] = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('json') }})
    



@dataclasses.dataclass
class StronglyTypedOneOfPostResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    res: Optional[StronglyTypedOneOfPostRes] = dataclasses.field(default=None)
    r"""OK"""
    

