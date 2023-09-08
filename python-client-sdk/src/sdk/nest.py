"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from .nest_first import NestFirst
from .sdkconfiguration import SDKConfiguration

class Nest:
    first: NestFirst
    sdk_configuration: SDKConfiguration

    def __init__(self, sdk_config: SDKConfiguration) -> None:
        self.sdk_configuration = sdk_config
        self._init_sdks()
    
    def _init_sdks(self):
        self.first = NestFirst(self.sdk_configuration)
        
    