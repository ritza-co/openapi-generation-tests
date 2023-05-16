"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import requests as requests_http
from ..shared import simpleobject as shared_simpleobject
from dataclasses_json import Undefined, dataclass_json
from datetime import date, datetime
from enum import Enum
from sdk import utils
from typing import Optional


@dataclasses.dataclass
class UsageExamplePostSecurity:
    
    password: str = dataclasses.field(metadata={'security': { 'scheme': True, 'type': 'http', 'sub_type': 'basic', 'field_name': 'password' }})
    username: str = dataclasses.field(metadata={'security': { 'scheme': True, 'type': 'http', 'sub_type': 'basic', 'field_name': 'username' }})
    

@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class UsageExamplePostRequestBody:
    r"""A request body that contains fields with different formats for testing example generation"""
    
    email: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('email'), 'exclude': lambda f: f is None }})
    r"""A field called email that will have emails generated as examples"""
    format_email: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('formatEmail'), 'exclude': lambda f: f is None }})
    r"""A field formatted as an email that will have emails generated as examples"""
    format_uri: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('formatUri'), 'exclude': lambda f: f is None }})
    r"""A field formatted as a uri that will have uris generated as examples"""
    format_uuid: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('formatUuid'), 'exclude': lambda f: f is None }})
    r"""A field formatted as a uuid that will have uuids generated as examples"""
    hostname: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('hostname'), 'exclude': lambda f: f is None }})
    r"""A field formatted as a hostname that will have hostnames generated as examples"""
    ipv4: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('ipv4'), 'exclude': lambda f: f is None }})
    r"""A field formatted as an ipv4 that will have ipv4s generated as examples"""
    ipv6: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('ipv6'), 'exclude': lambda f: f is None }})
    r"""A field formatted as an ipv6 that will have ipv6s generated as examples"""
    simple_object: Optional[shared_simpleobject.SimpleObject] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('simpleObject'), 'exclude': lambda f: f is None }})
    r"""A simple object that uses all our supported primitive types and enums and has optional properties.
    https://docs.speakeasyapi.dev - A link to the external docs.
    """
    unknown: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('unknown'), 'exclude': lambda f: f is None }})
    r"""A field formatted as an unknown that will have random strings generated as examples"""
    uri: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('uri'), 'exclude': lambda f: f is None }})
    r"""A field called uri that will have uris generated as examples"""
    uuid: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('uuid'), 'exclude': lambda f: f is None }})
    r"""A field called uuid that will have uuids generated as examples"""
    
class UsageExamplePostEnumParameterEnum(str, Enum):
    r"""An enum type"""
    VALUE1 = 'value1'
    VALUE2 = 'value2'
    VALUE3 = 'value3'

class UsageExamplePostOptEnumParameterEnum(str, Enum):
    r"""An enum type"""
    VALUE1 = 'value1'
    VALUE2 = 'value2'
    VALUE3 = 'value3'


@dataclasses.dataclass
class UsageExamplePostRequest:
    
    bool_parameter: bool = dataclasses.field(metadata={'query_param': { 'field_name': 'boolParameter', 'style': 'form', 'explode': True }})
    r"""A boolean parameter"""
    date_parameter: date = dataclasses.field(metadata={'query_param': { 'field_name': 'dateParameter', 'style': 'form', 'explode': True }})
    r"""A date parameter"""
    date_time_parameter: datetime = dataclasses.field(metadata={'query_param': { 'field_name': 'dateTimeParameter', 'style': 'form', 'explode': True }})
    r"""A date time parameter"""
    double_parameter: float = dataclasses.field(metadata={'query_param': { 'field_name': 'doubleParameter', 'style': 'form', 'explode': True }})
    r"""A double parameter"""
    enum_parameter: UsageExamplePostEnumParameterEnum = dataclasses.field(metadata={'query_param': { 'field_name': 'enumParameter', 'style': 'form', 'explode': True }})
    r"""An enum parameter"""
    float_parameter: float = dataclasses.field(metadata={'query_param': { 'field_name': 'floatParameter', 'style': 'form', 'explode': True }})
    r"""A float parameter"""
    int64_parameter: int = dataclasses.field(metadata={'query_param': { 'field_name': 'int64Parameter', 'style': 'form', 'explode': True }})
    r"""An int64 parameter"""
    int_parameter: int = dataclasses.field(metadata={'query_param': { 'field_name': 'intParameter', 'style': 'form', 'explode': True }})
    r"""An integer parameter"""
    str_parameter: str = dataclasses.field(metadata={'query_param': { 'field_name': 'strParameter', 'style': 'form', 'explode': True }})
    r"""A string parameter"""
    opt_enum_parameter: Optional[UsageExamplePostOptEnumParameterEnum] = dataclasses.field(default=None, metadata={'query_param': { 'field_name': 'optEnumParameter', 'style': 'form', 'explode': True }})
    r"""An enum parameter"""
    request_body: Optional[UsageExamplePostRequestBody] = dataclasses.field(default=None, metadata={'request': { 'media_type': 'application/json' }})
    r"""A request body that contains fields with different formats for testing example generation"""
    

@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class UsageExamplePost200ApplicationJSONJSON:
    
    email: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('email'), 'exclude': lambda f: f is None }})
    r"""A field called email that will have emails generated as examples"""
    format_email: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('formatEmail'), 'exclude': lambda f: f is None }})
    r"""A field formatted as an email that will have emails generated as examples"""
    format_uri: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('formatUri'), 'exclude': lambda f: f is None }})
    r"""A field formatted as a uri that will have uris generated as examples"""
    format_uuid: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('formatUuid'), 'exclude': lambda f: f is None }})
    r"""A field formatted as a uuid that will have uuids generated as examples"""
    hostname: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('hostname'), 'exclude': lambda f: f is None }})
    r"""A field formatted as a hostname that will have hostnames generated as examples"""
    ipv4: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('ipv4'), 'exclude': lambda f: f is None }})
    r"""A field formatted as an ipv4 that will have ipv4s generated as examples"""
    ipv6: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('ipv6'), 'exclude': lambda f: f is None }})
    r"""A field formatted as an ipv6 that will have ipv6s generated as examples"""
    simple_object: Optional[shared_simpleobject.SimpleObject] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('simpleObject'), 'exclude': lambda f: f is None }})
    r"""A simple object that uses all our supported primitive types and enums and has optional properties.
    https://docs.speakeasyapi.dev - A link to the external docs.
    """
    unknown: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('unknown'), 'exclude': lambda f: f is None }})
    r"""A field formatted as an unknown that will have random strings generated as examples"""
    uri: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('uri'), 'exclude': lambda f: f is None }})
    r"""A field called uri that will have uris generated as examples"""
    uuid: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('uuid'), 'exclude': lambda f: f is None }})
    r"""A field called uuid that will have uuids generated as examples"""
    

@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class UsageExamplePost200ApplicationJSON:
    r"""A response body that contains the simpleObject sent in the request body"""
    
    json: UsageExamplePost200ApplicationJSONJSON = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('json') }})
    

@dataclasses.dataclass
class UsageExamplePostResponse:
    
    content_type: str = dataclasses.field()
    status_code: int = dataclasses.field()
    raw_response: Optional[requests_http.Response] = dataclasses.field(default=None)
    usage_example_post_200_application_json_object: Optional[UsageExamplePost200ApplicationJSON] = dataclasses.field(default=None)
    r"""A successful response that contains the simpleObject sent in the request body"""
    