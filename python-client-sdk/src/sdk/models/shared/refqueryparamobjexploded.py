"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from __future__ import annotations
import dataclasses



@dataclasses.dataclass
class RefQueryParamObjExploded:
    bool: bool = dataclasses.field(metadata={'query_param': { 'field_name': 'bool' }})
    int: int = dataclasses.field(metadata={'query_param': { 'field_name': 'int' }})
    num: float = dataclasses.field(metadata={'query_param': { 'field_name': 'num' }})
    str_: str = dataclasses.field(metadata={'query_param': { 'field_name': 'str' }})
    

