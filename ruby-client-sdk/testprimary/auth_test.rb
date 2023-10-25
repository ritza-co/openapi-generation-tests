# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# frozen_string_literal: true

require_relative '../lib/openapi'
require 'rack'
module OpenApiSDK
  class TestAuth < Minitest::Test
    def setup
      @sdk = OpenApiSDK::SDK.new
    end


    def test_basic_auth
      record_test('auth-basic-auth')

      res = @sdk.auth_new.basic_auth_new(
        Shared::AuthServiceRequestBody.new(
          basic_auth: Shared::AuthServiceRequestBodyBasicAuth.new(
            username: 'testUser',
            password: 'testPass'
          )
        ),
        Operations::BasicAuthNewSecurity.new(
          username: 'testUser',
          password: 'testPass'
        )
      )

      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)

    end

    def test_api_key_auth_global
      record_test('auth-api-key-auth-global')

      @sdk.config_security(
        Shared::Security.new(
          api_key_auth_new: 'test_api_key'
        )
      )
  
      res = @sdk.auth_new.api_key_auth_global_new(
        Shared::AuthServiceRequestBody.new(
          header_auth: [
            Shared::AuthServiceRequestBodyHeaderAuth.new(
              header_name: 'x-api-key',
              expected_value: 'test_api_key'
            )
          ]
        )
      )

      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
    end

    def test_api_key_auth_operation
      record_test('auth-api-key-auth-operation')

      res = @sdk.auth.api_key_auth(
        Operations::ApiKeyAuthSecurity.new(
          api_key_auth: 'Bearer testToken'
        )
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      assert_equal(res.token.authenticated, true)
      assert_equal('testToken', res.token.token)
    end

    def test_bearer_auth_operation_with_prefix
      record_test('auth-bearer-auth-operation-with-prefix')

      res = @sdk.auth.bearer_auth(
        Operations::BearerAuthSecurity.new(
          bearer_auth: 'Bearer testToken'
        )
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      assert_equal(res.token.authenticated, true)
      assert_equal('testToken', res.token.token)
    end

    def test_bearer_auth_operation_without_prefix
      record_test('auth-bearer-auth-operation-without-prefix')

      res = @sdk.auth.bearer_auth(
        Operations::BearerAuthSecurity.new(
          bearer_auth: 'testToken'
        )
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      assert_equal(res.token.authenticated, true)
      assert_equal('testToken', res.token.token)
    end

    def test_oauth_2_auth
      record_test('auth-oauth2-auth')

      res = @sdk.auth_new.oauth2_auth_new(
        Shared::AuthServiceRequestBody.new(
          header_auth: [
            Shared::AuthServiceRequestBodyHeaderAuth.new(
              header_name: 'Authorization',
              expected_value: 'Bearer testToken'
            )
          ]
        ),
        Operations::Oauth2AuthNewSecurity.new(
          oauth2: 'Bearer testToken'
        )
      )

      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)

    end

    def test_open_id_connect_auth
      record_test('auth-open-id-connect-auth')

      res = @sdk.auth_new.open_id_connect_auth_new(
        Shared::AuthServiceRequestBody.new(
          header_auth: [
            Shared::AuthServiceRequestBodyHeaderAuth.new(
              header_name: 'Authorization',
              expected_value: 'Bearer testToken'
            )
          ]
        ),
        Operations::OpenIdConnectAuthNewSecurity.new(
          open_id_connect: 'Bearer testToken'
        )
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)

    end

    def test_multiple_simple_scheme_auth
      record_test('auth-multiple-simple-scheme-auth')

      res = @sdk.auth_new.multiple_simple_scheme_auth(
        Shared::AuthServiceRequestBody.new(
          header_auth: [
            Shared::AuthServiceRequestBodyHeaderAuth.new(
              header_name: 'x-api-key',
              expected_value: 'test_api_key'
            ),
            Shared::AuthServiceRequestBodyHeaderAuth.new(
              header_name: 'Authorization',
              expected_value: 'Bearer testToken'
            )
          ]
        ),
        Operations::MultipleSimpleSchemeAuthSecurity.new(
          api_key_auth_new: 'test_api_key',
          oauth2: 'Bearer testToken'
        )
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
    end


    def test_multiple_mixed_scheme_auth
      record_test('auth-multiple-mixed-scheme-auth')

      res = @sdk.auth_new.multiple_mixed_scheme_auth(
        Shared::AuthServiceRequestBody.new(
          header_auth: [
            Shared::AuthServiceRequestBodyHeaderAuth.new(
              header_name: 'x-api-key',
              expected_value: 'test_api_key'
            )
          ],
          basic_auth: Shared::AuthServiceRequestBodyBasicAuth.new(
            username: 'testUser',
            password: 'testPass'
          )
        ),
        Operations::MultipleMixedSchemeAuthSecurity.new(
          api_key_auth_new: 'test_api_key',
          basic_auth: Shared::SchemeBasicAuth.new(
            username: 'testUser',
            password: 'testPass'
          )
        )
      )

      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
    end

    def test_multiple_simple_options_auth_first_option
      record_test('auth-multiple-simple-options-auth-first-option')

      res = @sdk.auth_new.multiple_simple_options_auth(
        Shared::AuthServiceRequestBody.new(
          header_auth: [
            Shared::AuthServiceRequestBodyHeaderAuth.new(
              header_name: 'x-api-key',
              expected_value: 'test_api_key'
            )
          ]
        ),
        Operations::MultipleSimpleOptionsAuthSecurity.new(
          api_key_auth_new: 'test_api_key'
        )
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
    end

    def test_multiple_simple_options_auth_second_option
      record_test('auth-multiple-simple-options-auth-second-option')

      res = @sdk.auth_new.multiple_simple_options_auth(
        Shared::AuthServiceRequestBody.new(
          header_auth: [
            Shared::AuthServiceRequestBodyHeaderAuth.new(
              header_name: 'Authorization',
              expected_value: 'Bearer testToken'
            )
          ]
        ),
        Operations::MultipleSimpleOptionsAuthSecurity.new(
          oauth2: 'Bearer testToken'
        )
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
    end

    def test_multiple_mixed_options_auth_first_option
      record_test('auth-multiple-mixed-options-auth-first-option')

      res = @sdk.auth_new.multiple_mixed_options_auth(
        Shared::AuthServiceRequestBody.new(
          header_auth: [
            Shared::AuthServiceRequestBodyHeaderAuth.new(
              header_name: 'x-api-key',
              expected_value: 'test_api_key'
            )
          ]
        ), 
        Operations::MultipleMixedOptionsAuthSecurity.new(
          api_key_auth_new: 'test_api_key'
        )
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
    end

    def test_multiple_mixed_options_auth_second_option
      record_test('auth-multiple-mixed-options-auth-second-option')

      res = @sdk.auth_new.multiple_mixed_options_auth(
        Shared::AuthServiceRequestBody.new(
          basic_auth: Shared::AuthServiceRequestBodyBasicAuth.new(
            username: 'testUser',
            password: 'testPass'
          )
        ),
        Operations::MultipleMixedOptionsAuthSecurity.new(
          basic_auth: Shared::SchemeBasicAuth.new(
            username: 'testUser',
            password: 'testPass'
          )
        )
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
    end

    def test_multiple_mixed_options_with_simple_schemes_auth_first_option
      record_test('auth-multiple-options-with-simple-schemes-auth-first-option')

      res = @sdk.auth_new.multiple_options_with_simple_schemes_auth(
        Shared::AuthServiceRequestBody.new(
          header_auth: [
            Shared::AuthServiceRequestBodyHeaderAuth.new(
              header_name: 'x-api-key',
              expected_value: 'test_api_key'
            ),
            Shared::AuthServiceRequestBodyHeaderAuth.new(
              header_name: 'Authorization',
              expected_value: 'Bearer testToken'
            )
          ]
        ),
        Operations::MultipleOptionsWithSimpleSchemesAuthSecurity.new(
          option1: Operations::MultipleOptionsWithSimpleSchemesAuthSecurityOption1.new(
            api_key_auth_new: 'test_api_key',
            oauth2: 'Bearer testToken'
          )
        )
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
    end

    def test_multiple_mixed_options_with_simple_schemes_auth_second_option
      record_test('auth-multiple-options-with-simple-schemes-auth-second-option')

      res = @sdk.auth_new.multiple_options_with_simple_schemes_auth(
        Shared::AuthServiceRequestBody.new(
          header_auth: [
            Shared::AuthServiceRequestBodyHeaderAuth.new(
              header_name: 'x-api-key',
              expected_value: 'test_api_key'
            ),
            Shared::AuthServiceRequestBodyHeaderAuth.new(
              header_name: 'Authorization',
              expected_value: 'Bearer testToken'
            )
          ]
        ), 
        Operations::MultipleOptionsWithSimpleSchemesAuthSecurity.new(
          option2: Operations::MultipleOptionsWithSimpleSchemesAuthSecurityOption2.new(
            api_key_auth_new: 'test_api_key',
            open_id_connect: 'Bearer testToken'
          )
        )
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
    end

    def test_multiple_mixed_options_with_mixed_schemes_auth_first_option
      record_test('auth-multiple-options-with-mixed-schemes-auth-first-option')

      res = @sdk.auth_new.multiple_options_with_mixed_schemes_auth(
        Shared::AuthServiceRequestBody.new(
          header_auth: [
            Shared::AuthServiceRequestBodyHeaderAuth.new(
              header_name: 'x-api-key',
              expected_value: 'test_api_key'
            ),
            Shared::AuthServiceRequestBodyHeaderAuth.new(
              header_name: 'Authorization',
              expected_value: 'Bearer testToken'
            )
          ]
        ),
        Operations::MultipleOptionsWithMixedSchemesAuthSecurity.new(
          option1: Operations::MultipleOptionsWithMixedSchemesAuthSecurityOption1.new(
            api_key_auth_new: 'test_api_key',
            oauth2: 'Bearer testToken'
          )
        )
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
    end

    def test_multiple_mixed_options_with_mixed_schemes_auth_second_option
      record_test('auth-multiple-options-with-mixed-schemes-auth-second-option')

      res = @sdk.auth_new.multiple_options_with_mixed_schemes_auth(
        Shared::AuthServiceRequestBody.new(
          header_auth: [
            Shared::AuthServiceRequestBodyHeaderAuth.new(
              header_name: 'x-api-key',
              expected_value: 'test_api_key'
            )
          ],
          basic_auth: Shared::AuthServiceRequestBodyBasicAuth.new(
            username: 'testUser',
            password: 'testPass'
          )
        ),
        Operations::MultipleOptionsWithMixedSchemesAuthSecurity.new(
          option2: Operations::MultipleOptionsWithMixedSchemesAuthSecurityOption2.new(
            api_key_auth_new: 'test_api_key',
            basic_auth: Shared::SchemeBasicAuth.new(
              username: 'testUser',
              password: 'testPass'
            )
          )
        )
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
    end
  end
end
