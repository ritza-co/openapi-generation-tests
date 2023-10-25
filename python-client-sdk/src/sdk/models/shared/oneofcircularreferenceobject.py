"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses
from ..shared import simpleobject as shared_simpleobject
from dataclasses_json import Undefined, dataclass_json
from sdk import utils
from typing import Union


@dataclasses.dataclass
class OneOfCircularReferenceObjectChild:
    pass


@dataclass_json(undefined=Undefined.EXCLUDE)
@dataclasses.dataclass
class OneOfCircularReferenceObject:
    child: Union[OneOfCircularReferenceObject, shared_simpleobject.SimpleObject] = dataclasses.field(metadata={'dataclasses_json': { 'letter_case': utils.get_field_name('child') }})
    

