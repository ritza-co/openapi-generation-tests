"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

from .sdkconfiguration import SDKConfiguration
from datetime import date, datetime
from decimal import Decimal
from sdk import utils
from sdk.models import errors, operations, shared
from typing import Optional, Union

class Unions:
    r"""Endpoints for testing union types."""
    sdk_configuration: SDKConfiguration

    def __init__(self, sdk_config: SDKConfiguration) -> None:
        self.sdk_configuration = sdk_config
        
    
    def flattened_typed_object_post(self, request: Union[shared.TypedObject1]) -> operations.FlattenedTypedObjectPostResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/flattenedTypedObject'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", False, False, 'json')
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        if data is None and form is None:
            raise Exception('request body is required')
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.FlattenedTypedObjectPostResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.FlattenedTypedObjectPostRes])
                res.res = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    
    def mixed_type_one_of_post(self, request: Union[str, int, shared.SimpleObject]) -> operations.MixedTypeOneOfPostResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/mixedTypeOneOf'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", False, False, 'json')
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        if data is None and form is None:
            raise Exception('request body is required')
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.MixedTypeOneOfPostResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.MixedTypeOneOfPostRes])
                res.res = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    
    def nullable_one_of_ref_in_object_post(self, request: shared.NullableOneOfRefInObject) -> operations.NullableOneOfRefInObjectPostResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/nullableOneOfRefInObject'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", False, False, 'json')
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        if data is None and form is None:
            raise Exception('request body is required')
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.NullableOneOfRefInObjectPostResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.NullableOneOfRefInObjectPostRes])
                res.res = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    
    def nullable_one_of_schema_post(self, request: Union[shared.TypedObject1, shared.TypedObject2]) -> operations.NullableOneOfSchemaPostResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/nullableOneOfSchema'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", True, False, 'json')
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        if data is None and form is None:
            raise Exception('request body is required')
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.NullableOneOfSchemaPostResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.NullableOneOfSchemaPostRes])
                res.res = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    
    def nullable_one_of_type_in_object_post(self, request: shared.NullableOneOfTypeInObject) -> operations.NullableOneOfTypeInObjectPostResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/nullableOneOfInObject'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", False, False, 'json')
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        if data is None and form is None:
            raise Exception('request body is required')
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.NullableOneOfTypeInObjectPostResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.NullableOneOfTypeInObjectPostRes])
                res.res = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    
    def nullable_typed_object_post(self, request: shared.TypedObject1) -> operations.NullableTypedObjectPostResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/nullableTypedObject'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", True, False, 'json')
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        if data is None and form is None:
            raise Exception('request body is required')
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.NullableTypedObjectPostResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.NullableTypedObjectPostRes])
                res.res = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    
    def primitive_type_one_of_post(self, request: Union[str, int, float, bool]) -> operations.PrimitiveTypeOneOfPostResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/primitiveTypeOneOf'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", False, False, 'json')
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        if data is None and form is None:
            raise Exception('request body is required')
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.PrimitiveTypeOneOfPostResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.PrimitiveTypeOneOfPostRes])
                res.res = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    
    def strongly_typed_one_of_post(self, request: Union[shared.SimpleObjectWithType, shared.DeepObjectWithType]) -> operations.StronglyTypedOneOfPostResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/stronglyTypedOneOf'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", False, False, 'json')
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        if data is None and form is None:
            raise Exception('request body is required')
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.StronglyTypedOneOfPostResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.StronglyTypedOneOfPostRes])
                res.res = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    
    def typed_object_nullable_one_of_post(self, request: Union[shared.TypedObject1, shared.TypedObject2]) -> operations.TypedObjectNullableOneOfPostResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/typedObjectNullableOneOf'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", True, False, 'json')
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        if data is None and form is None:
            raise Exception('request body is required')
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.TypedObjectNullableOneOfPostResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.TypedObjectNullableOneOfPostRes])
                res.res = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    
    def typed_object_one_of_post(self, request: Union[shared.TypedObject1, shared.TypedObject2, shared.TypedObject3]) -> operations.TypedObjectOneOfPostResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/typedObjectOneOf'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", False, False, 'json')
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        if data is None and form is None:
            raise Exception('request body is required')
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.TypedObjectOneOfPostResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.TypedObjectOneOfPostRes])
                res.res = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    
    def union_big_int_decimal(self, request: Union[int, Decimal]) -> operations.UnionBigIntDecimalResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/unionBigIntDecimal'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", False, False, 'json', utils.union_encoder({int: utils.bigintencoder(True), Decimal: utils.decimalencoder(True, False)}))
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        if data is None and form is None:
            raise Exception('request body is required')
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.UnionBigIntDecimalResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.UnionBigIntDecimalRes])
                res.res = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    
    def union_date_null(self, request: date) -> operations.UnionDateNullResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/unionDateNull'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", True, False, 'json', utils.dateisoformat(False))
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        if data is None and form is None:
            raise Exception('request body is required')
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.UnionDateNullResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.UnionDateNullRes])
                res.res = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    
    def union_date_time_big_int(self, request: Union[datetime, int]) -> operations.UnionDateTimeBigIntResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/unionDateTimeBigInt'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", False, False, 'json', utils.union_encoder({datetime: utils.datetimeisoformat(True)}))
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        if data is None and form is None:
            raise Exception('request body is required')
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.UnionDateTimeBigIntResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.UnionDateTimeBigIntRes])
                res.res = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    
    def union_date_time_null(self, request: datetime) -> operations.UnionDateTimeNullResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/unionDateTimeNull'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", True, False, 'json', utils.datetimeisoformat(False))
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        if data is None and form is None:
            raise Exception('request body is required')
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.UnionDateTimeNullResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.UnionDateTimeNullRes])
                res.res = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    
    def weakly_typed_one_of_post(self, request: Union[shared.SimpleObject, shared.DeepObject]) -> operations.WeaklyTypedOneOfPostResponse:
        base_url = utils.template_url(*self.sdk_configuration.get_server_details())
        
        url = base_url + '/anything/weaklyTypedOneOf'
        headers = {}
        req_content_type, data, form = utils.serialize_request_body(request, "request", False, False, 'json')
        if req_content_type not in ('multipart/form-data', 'multipart/mixed'):
            headers['content-type'] = req_content_type
        if data is None and form is None:
            raise Exception('request body is required')
        headers['Accept'] = 'application/json'
        headers['x-speakeasy-user-agent'] = self.sdk_configuration.user_agent
        
        client = self.sdk_configuration.security_client
        
        http_res = client.request('POST', url, data=data, files=form, headers=headers)
        content_type = http_res.headers.get('Content-Type')

        res = operations.WeaklyTypedOneOfPostResponse(status_code=http_res.status_code, content_type=content_type, raw_response=http_res)
        
        if http_res.status_code == 200:
            if utils.match_content_type(content_type, 'application/json'):
                out = utils.unmarshal_json(http_res.text, Optional[operations.WeaklyTypedOneOfPostRes])
                res.res = out
            else:
                raise errors.SDKError(f'unknown content-type received: {content_type}', http_res.status_code, http_res.text, http_res)
        elif http_res.status_code >= 400 and http_res.status_code < 500 or http_res.status_code >= 500 and http_res.status_code < 600:
            raise errors.SDKError('API error occurred', http_res.status_code, http_res.text, http_res)

        return res

    