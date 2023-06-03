"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from .sdkconfiguration import SDKConfiguration
from sdk import utils
from sdk.models import operations
from typing import Optional

class Telemetry:
    r"""Endpoints for testing telemetry."""
    sdk_configuration: SDKConfiguration

    def __init__(self, sdk_config: SDKConfiguration) -> None:
        self.sdk_configuration = sdk_config
        
    
    def telemetry_speakeasy_user_agent_get(self, user_agent: str) -> operations.TelemetrySpeakeasyUserAgentGetResponse:
        request = operations.TelemetrySpeakeasyUserAgentGetRequest(
            user_agent=user_agent,
        )
        
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/telemetry/speakeasy-user-agent'
        headers = utils.get_headers(request)
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self.sdk_configuration.language} {self.sdk_configuration.sdk_version} {self.sdk_configuration.gen_version}'
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.TelemetrySpeakeasyUserAgentGetResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.TelemetrySpeakeasyUserAgentGetRes])
                res.res = out

        return res

    
    def telemetry_user_agent_get(self) -> operations.TelemetryUserAgentGetResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/telemetry/user-agent'
        headers = {}
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self.sdk_configuration.language} {self.sdk_configuration.sdk_version} {self.sdk_configuration.gen_version}'
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.TelemetryUserAgentGetResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.TelemetryUserAgentGetRes])
                res.res = out

        return res

    