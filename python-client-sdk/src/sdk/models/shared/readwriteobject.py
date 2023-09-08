"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
from dataclasses_json import Undefined, dataclass_json
from sdk import utils


@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class ReadWriteObjectInput:
    num1: int = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('num1') }})
    num2: int = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('num2') }})
    num3: int = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('num3') }})
    



@dataclass_json(undefined=Undefined.EXCLUDE)

@dataclasses.dataclass
class ReadWriteObjectOutput:
    num3: int = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('num3') }})
    sum: int = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('sum') }})
    

