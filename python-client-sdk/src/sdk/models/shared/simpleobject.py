"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import dateutil.parser
from ..shared import enum as shared_enum
from dataclasses_json import Undefined, dataclass_json
from datetime import date, datetime
from enum import Enum
from marshmallow import fields
from sdk import utils
from typing import Any, Optional

class SimpleObjectInt32Enum(int, Enum):
    r"""An int32 enum property."""
    FIFTY_FIVE = 55
    SIXTY_NINE = 69
    ONE_HUNDRED_AND_EIGHTY_ONE = 181

class SimpleObjectIntEnum(int, Enum):
    r"""An integer enum property."""
    FIRST = 1
    SECOND = 2
    THIRD = 3


@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class SimpleObject:
    r"""A simple object that uses all our supported primitive types and enums and has optional properties.
    https://docs.speakeasyapi.dev - A link to the external docs.
    """
    any: Any = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('any') }, 'header': { 'field_name': 'any' }, 'path_param': { 'field_name': 'any' }, 'query_param': { 'field_name': 'any' }, 'form': { 'field_name': 'any' }, 'multipart_form': { 'field_name': 'any' }})
    r"""An any property."""
    bool: bool = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('bool') }, 'header': { 'field_name': 'bool' }, 'path_param': { 'field_name': 'bool' }, 'query_param': { 'field_name': 'bool' }, 'form': { 'field_name': 'bool' }, 'multipart_form': { 'field_name': 'bool' }})
    r"""A boolean property."""
    date_: date = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('date'), 'encoder': utils.dateisoformat(False), 'decoder': utils.datefromisoformat, 'mm_field': fields.DateTime(format='iso') }, 'header': { 'field_name': 'date' }, 'path_param': { 'field_name': 'date' }, 'query_param': { 'field_name': 'date' }, 'form': { 'field_name': 'date' }, 'multipart_form': { 'field_name': 'date' }})
    r"""A date property."""
    date_time: datetime = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('dateTime'), 'encoder': utils.datetimeisoformat(False), 'decoder': dateutil.parser.isoparse, 'mm_field': fields.DateTime(format='iso') }, 'header': { 'field_name': 'dateTime' }, 'path_param': { 'field_name': 'dateTime' }, 'query_param': { 'field_name': 'dateTime' }, 'form': { 'field_name': 'dateTime' }, 'multipart_form': { 'field_name': 'dateTime' }})
    r"""A date-time property."""
    enum: shared_enum.EnumT = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('enum') }, 'header': { 'field_name': 'enum' }, 'path_param': { 'field_name': 'enum' }, 'query_param': { 'field_name': 'enum' }, 'form': { 'field_name': 'enum' }, 'multipart_form': { 'field_name': 'enum' }})
    r"""An string based enum"""
    float32: float = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('float32') }, 'header': { 'field_name': 'float32' }, 'path_param': { 'field_name': 'float32' }, 'query_param': { 'field_name': 'float32' }, 'form': { 'field_name': 'float32' }, 'multipart_form': { 'field_name': 'float32' }})
    r"""A float32 property."""
    int: int = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('int') }, 'header': { 'field_name': 'int' }, 'path_param': { 'field_name': 'int' }, 'query_param': { 'field_name': 'int' }, 'form': { 'field_name': 'int' }, 'multipart_form': { 'field_name': 'int' }})
    r"""An integer property."""
    int32: int = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('int32') }, 'header': { 'field_name': 'int32' }, 'path_param': { 'field_name': 'int32' }, 'query_param': { 'field_name': 'int32' }, 'form': { 'field_name': 'int32' }, 'multipart_form': { 'field_name': 'int32' }})
    r"""An int32 property."""
    int32_enum: SimpleObjectInt32Enum = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('int32Enum') }, 'header': { 'field_name': 'int32Enum' }, 'path_param': { 'field_name': 'int32Enum' }, 'query_param': { 'field_name': 'int32Enum' }, 'form': { 'field_name': 'int32Enum' }, 'multipart_form': { 'field_name': 'int32Enum' }})
    r"""An int32 enum property."""
    int_enum: SimpleObjectIntEnum = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('intEnum') }, 'header': { 'field_name': 'intEnum' }, 'path_param': { 'field_name': 'intEnum' }, 'query_param': { 'field_name': 'intEnum' }, 'form': { 'field_name': 'intEnum' }, 'multipart_form': { 'field_name': 'intEnum' }})
    r"""An integer enum property."""
    num: float = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('num') }, 'header': { 'field_name': 'num' }, 'path_param': { 'field_name': 'num' }, 'query_param': { 'field_name': 'num' }, 'form': { 'field_name': 'num' }, 'multipart_form': { 'field_name': 'num' }})
    r"""A number property."""
    str_: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('str') }, 'header': { 'field_name': 'str' }, 'path_param': { 'field_name': 'str' }, 'query_param': { 'field_name': 'str' }, 'form': { 'field_name': 'str' }, 'multipart_form': { 'field_name': 'str' }})
    r"""A string property."""
    bigint: Optional[int] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('bigint'), 'exclude': lambda f: f is None }, 'header': { 'field_name': 'bigint' }, 'path_param': { 'field_name': 'bigint' }, 'query_param': { 'field_name': 'bigint' }, 'form': { 'field_name': 'bigint' }, 'multipart_form': { 'field_name': 'bigint' }})
    bigint_str: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('bigintStr'), 'exclude': lambda f: f is None }, 'header': { 'field_name': 'bigintStr' }, 'path_param': { 'field_name': 'bigintStr' }, 'query_param': { 'field_name': 'bigintStr' }, 'form': { 'field_name': 'bigintStr' }, 'multipart_form': { 'field_name': 'bigintStr' }})
    bool_opt: Optional[bool] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('boolOpt'), 'exclude': lambda f: f is None }, 'header': { 'field_name': 'boolOpt' }, 'path_param': { 'field_name': 'boolOpt' }, 'query_param': { 'field_name': 'boolOpt' }, 'form': { 'field_name': 'boolOpt' }, 'multipart_form': { 'field_name': 'boolOpt' }})
    r"""An optional boolean property."""
    int_opt_null: Optional[int] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('intOptNull'), 'exclude': lambda f: f is None }, 'header': { 'field_name': 'intOptNull' }, 'path_param': { 'field_name': 'intOptNull' }, 'query_param': { 'field_name': 'intOptNull' }, 'form': { 'field_name': 'intOptNull' }, 'multipart_form': { 'field_name': 'intOptNull' }})
    r"""An optional integer property will be null for tests."""
    num_opt_null: Optional[float] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('numOptNull'), 'exclude': lambda f: f is None }, 'header': { 'field_name': 'numOptNull' }, 'path_param': { 'field_name': 'numOptNull' }, 'query_param': { 'field_name': 'numOptNull' }, 'form': { 'field_name': 'numOptNull' }, 'multipart_form': { 'field_name': 'numOptNull' }})
    r"""An optional number property will be null for tests."""
    str_opt: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('strOpt'), 'exclude': lambda f: f is None }, 'header': { 'field_name': 'strOpt' }, 'path_param': { 'field_name': 'strOpt' }, 'query_param': { 'field_name': 'strOpt' }, 'form': { 'field_name': 'strOpt' }, 'multipart_form': { 'field_name': 'strOpt' }})
    r"""An optional string property."""
    

