"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import dateutil.parser
import requests as requests_http
from dataclasses_json import Undefined, dataclass_json
from datetime import datetime
from sdk import utils
from typing import Optional, Union


@dataclasses.dataclass
class UnionDateTimeBigIntRequestBody:
    pass


@dataclasses.dataclass
class UnionDateTimeBigIntJSON:
    pass


@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class UnionDateTimeBigIntRes:
    r"""OK"""
    json: Union[datetime, int] = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('json'), 'encoder': utils.union_encoder({datetime: utils.datetimeisoformat(False)}), 'decoder': utils.union_decoder([dateutil.parser.isoparse]) }})
    



@dataclasses.dataclass
class UnionDateTimeBigIntResponse:
    content_type: str = dataclasses.field()
    r"""HTTP response content type for this operation"""
    status_code: int = dataclasses.field()
    r"""HTTP response status code for this operation"""
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    r"""Raw HTTP response; suitable for custom response parsing"""
    res: Optional[UnionDateTimeBigIntRes] = dataclasses.field(default=None)
    r"""OK"""
    

