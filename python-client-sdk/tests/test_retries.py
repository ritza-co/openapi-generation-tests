"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

import uuid

import pytest
from sdk import SDK
from sdk.models import errors
from sdk.models.operations import *
from sdk.utils import BackoffStrategy, RetryConfig

from .helpers import *


def test_retries_succeeds():
    record_test('retries-succeeds')

    s = SDK()
    assert s is not None

    res = s.retries.retries_get(str(uuid.uuid4()))
    assert res is not None
    assert res.status_code == 200
    assert res.retries.retries == 3


def test_retries_timeout():
    record_test('retries-timeout')

    s = SDK()
    assert s is not None

    with pytest.raises(errors.SDKError, match="API error occurred: Status 503") as exc_info:
        res = s.retries.retries_get(str(uuid.uuid4()), 1000000000, RetryConfig(
            'backoff', BackoffStrategy(1, 50, 1.1, 100), False))

    assert exc_info.value.status_code == 503
