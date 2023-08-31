"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

import sdk.models.shared as shared
from sdk import SDK
from sdk.models.operations import *

from .helpers import *


def test_telemetry_user_agent_get():
    record_test('telemetry-user-agent-get')

    s = SDK()
    assert s is not None

    res = s.telemetry.telemetry_user_agent_get()
    assert res is not None
    assert res.status_code == 200
    assert res.res is not None
    assert res.res.headers['X-Speakeasy-User-Agent'] == 'speakeasy-sdk/python 1.29.0 2.89.1 0.1.0'


def test_telemetry_speakeasy_user_agent_get():
    record_test('telemetry-speakeasy-user-agent-get')

    s = SDK()
    assert s is not None

    user_agent = 'test user agent'

    res = s.telemetry.telemetry_speakeasy_user_agent_get(user_agent)
    assert res is not None
    assert res.status_code == 200
    assert res.res is not None
    assert res.res.headers['User-Agent'] == user_agent
    assert res.res.headers['X-Speakeasy-User-Agent'] == 'speakeasy-sdk/python 1.29.0 2.89.1 0.1.0'