"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from .sdkconfiguration import SDKConfiguration
from sdk import utils
from sdk.models import errors, operations, shared
from typing import Optional

class Resource:
    sdk_configuration: SDKConfiguration

    def __init__(self, sdk_config: SDKConfiguration) -> None:
        self.sdk_configuration = sdk_config
        
    
    def create_resource(self, request: shared.ExampleResource) -> operations.CreateResourceResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/resource'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", 'json')
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self.sdk_configuration.language} {self.sdk_configuration.sdk_version} {self.sdk_configuration.gen_version} {self.sdk_configuration.openapi_doc_version}'
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.CreateResourceResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[shared.ExampleResource])
                res.example_resource = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)

        return res

    
    def delete_resource(self, resource_id: str) -> operations.DeleteResourceResponse:
        request = operations.DeleteResourceRequest(
            resource_id=resource_id,
        )
        
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = utils.generate_url(operations.DeleteResourceRequest, base_url, '/resource/{resourceId}', request, self.sdk_configuration.globals)
        headers = {}
        headers['Accept'] = '*/*'
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self.sdk_configuration.language} {self.sdk_configuration.sdk_version} {self.sdk_configuration.gen_version} {self.sdk_configuration.openapi_doc_version}'
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('DELETE', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.DeleteResourceResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        

        return res

    
    def get_resource(self, resource_id: str) -> operations.GetResourceResponse:
        request = operations.GetResourceRequest(
            resource_id=resource_id,
        )
        
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = utils.generate_url(operations.GetResourceRequest, base_url, '/resource/{resourceId}', request, self.sdk_configuration.globals)
        headers = {}
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self.sdk_configuration.language} {self.sdk_configuration.sdk_version} {self.sdk_configuration.gen_version} {self.sdk_configuration.openapi_doc_version}'
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('GET', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.GetResourceResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[shared.ExampleResource])
                res.example_resource = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)

        return res

    
    def update_resource(self, resource_id: str) -> operations.UpdateResourceResponse:
        request = operations.UpdateResourceRequest(
            resource_id=resource_id,
        )
        
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = utils.generate_url(operations.UpdateResourceRequest, base_url, '/resource/{resourceId}', request, self.sdk_configuration.globals)
        headers = {}
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = f'speakeasy-sdk/{self.sdk_configuration.language} {self.sdk_configuration.sdk_version} {self.sdk_configuration.gen_version} {self.sdk_configuration.openapi_doc_version}'
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.UpdateResourceResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[shared.ExampleResource])
                res.example_resource = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)

        return res

    