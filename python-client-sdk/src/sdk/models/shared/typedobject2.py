"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
from dataclasses_json import Undefined, dataclass_json
from enum import Enum
from sdk import utils

class TypedObject2TypeEnum(str, Enum):
    OBJ2 = 'obj2'


@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class TypedObject2:
    
    type: TypedObject2TypeEnum = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('type') }})
    value: str = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('value') }})
    