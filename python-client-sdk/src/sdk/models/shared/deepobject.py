"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
from ..shared import simpleobject as shared_simpleobject
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Any, Optional


@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class DeepObject:
    any: Any = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('any') }, 'form': { 'field_name': 'any', 'json': True }, 'multipart_form': { 'field_name': 'any', 'json': True }})
    arr: list[shared_simpleobject.SimpleObject] = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('arr') }, 'form': { 'field_name': 'arr', 'json': True }, 'multipart_form': { 'field_name': 'arr', 'json': True }})
    bool: bool = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('bool') }, 'form': { 'field_name': 'bool' }, 'multipart_form': { 'field_name': 'bool' }})
    int: int = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('int') }, 'form': { 'field_name': 'int' }, 'multipart_form': { 'field_name': 'int' }})
    map: dict[str, shared_simpleobject.SimpleObject] = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('map') }, 'form': { 'field_name': 'map', 'json': True }, 'multipart_form': { 'field_name': 'map', 'json': True }})
    num: float = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('num') }, 'form': { 'field_name': 'num' }, 'multipart_form': { 'field_name': 'num' }})
    obj: shared_simpleobject.SimpleObject = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('obj') }, 'form': { 'field_name': 'obj', 'json': True }, 'multipart_form': { 'field_name': 'obj', 'json': True }})
    r"""A simple object that uses all our supported primitive types and enums and has optional properties.
    https://docs.speakeasyapi.dev - A link to the external docs.
    """
    str_: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('str') }, 'form': { 'field_name': 'str' }, 'multipart_form': { 'field_name': 'str' }})
    type: Optional[str] = dataclasses.field(default=None, metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('type'), 'exclude': lambda f: f is None }, 'form': { 'field_name': 'type' }, 'multipart_form': { 'field_name': 'type' }})
    

