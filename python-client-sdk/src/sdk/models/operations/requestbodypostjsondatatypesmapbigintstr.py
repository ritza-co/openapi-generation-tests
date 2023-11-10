"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Dict, Optional


@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class RequestBodyPostJSONDataTypesMapBigIntStrResponseBody:
    r"""OK"""
    data: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('data') }})
    json: Dict[str, int] = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('json'), 'encoder': utils.map_encoder(False, utils.bigintencoder(False)), 'decoder': utils.map_decoder(utils.bigintdecoder) }})
    



@dataclasses.dataclass
class RequestBodyPostJSONDataTypesMapBigIntStrResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    object: Optional[RequestBodyPostJSONDataTypesMapBigIntStrResponseBody] = dataclasses.field(default=None)
    r"""OK"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    

