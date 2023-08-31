"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
from ..shared import simpleobjectcamelcase as shared_simpleobjectcamelcase
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Any, Optional


@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class DeepObjectCamelCase:
    any_val: Any = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('any_val') }})
    arr_val: list[shared_simpleobjectcamelcase.SimpleObjectCamelCase] = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('arr_val') }})
    bool_val: bool = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('bool_val') }})
    int_val: int = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('int_val') }})
    map_val: dict[str, shared_simpleobjectcamelcase.SimpleObjectCamelCase] = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('map_val') }})
    num_val: float = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('num_val') }})
    obj_val: shared_simpleobjectcamelcase.SimpleObjectCamelCase = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('obj_val') }})
    r"""A simple object that uses all our supported primitive types and enums and has optional properties.
    https://docs.speakeasyapi.dev - A link to the external docs.
    """
    str_val: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('str_val') }})
    type: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('type'), 'exclude': lambda f: f is None }})
    

