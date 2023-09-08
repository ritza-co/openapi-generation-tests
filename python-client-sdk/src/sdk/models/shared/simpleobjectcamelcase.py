"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
import dateutil.parser
from ..shared import enum as shared_enum
from dataclasses_json import Undefined, dataclass_json
from datetime import date, datetime
from decimal import Decimal
from enum import Enum
from sdk import utils
from typing import Any, Optional

class SimpleObjectCamelCaseInt32EnumVal(int, Enum):
    r"""An int32 enum property."""
    FIFTY_FIVE = 55
    SIXTY_NINE = 69
    ONE_HUNDRED_AND_EIGHTY_ONE = 181

class SimpleObjectCamelCaseIntEnumVal(int, Enum):
    r"""An integer enum property."""
    FIRST = 1
    SECOND = 2
    THIRD = 3


@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class SimpleObjectCamelCase:
    r"""A simple object that uses all our supported primitive types and enums and has optional properties.
    https://docs.speakeasyapi.dev - A link to the external docs.
    """
    any_val: Any = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('any_val') }})
    r"""An any property."""
    bool_val: bool = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('bool_val') }})
    r"""A boolean property."""
    date_time_val: datetime = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('date_time_val'), 'encoder': utils.datetimeisoformat(False), 'decoder': dateutil.parser.isoparse }})
    r"""A date-time property."""
    date_val: date = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('date_val'), 'encoder': utils.dateisoformat(False), 'decoder': utils.datefromisoformat }})
    r"""A date property."""
    enum_val: shared_enum.EnumT = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('enum_val') }})
    r"""A string based enum"""
    float32_val: float = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('float32_val') }})
    r"""A float32 property."""
    int_enum_val: SimpleObjectCamelCaseIntEnumVal = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('int_enum_val') }})
    r"""An integer enum property."""
    int_val: int = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('int_val') }})
    r"""An integer property."""
    int32_enum_val: SimpleObjectCamelCaseInt32EnumVal = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('int32_enum_val') }})
    r"""An int32 enum property."""
    int32_val: int = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('int32_val') }})
    r"""An int32 property."""
    num_val: float = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('num_val') }})
    r"""A number property."""
    str_val: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('str_val') }})
    r"""A string property."""
    bigint_str_val: Optional[int] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('bigint_str_val'), 'encoder': utils.bigintencoder(True), 'decoder': utils.bigintdecoder, 'exclude': lambda f: f is None }})
    bigint_val: Optional[int] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('bigint_val'), 'exclude': lambda f: f is None }})
    bool_opt_val: Optional[bool] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('bool_opt_val'), 'exclude': lambda f: f is None }})
    r"""An optional boolean property."""
    decimal_val: Optional[Decimal] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('decimal_val'), 'encoder': utils.decimalencoder(True, False), 'decoder': utils.decimaldecoder, 'exclude': lambda f: f is None }})
    int_opt_null_val: Optional[int] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('int_opt_null_val'), 'exclude': lambda f: f is None }})
    r"""An optional integer property will be null for tests."""
    num_opt_null_val: Optional[float] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('num_opt_null_val'), 'exclude': lambda f: f is None }})
    r"""An optional number property will be null for tests."""
    str_opt_val: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('str_opt_val'), 'exclude': lambda f: f is None }})
    r"""An optional string property."""
    

