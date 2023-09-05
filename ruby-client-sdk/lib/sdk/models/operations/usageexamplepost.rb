# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/simpleobject'

module OpenApiSDK
  module Operations

    class UsageExamplePostSecurity < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :password, String, { 'security': { 'scheme': true, 'type': 'http', 'sub_type': 'basic', 'field_name': 'password' } }

      field :username, String, { 'security': { 'scheme': true, 'type': 'http', 'sub_type': 'basic', 'field_name': 'username' } }


      sig { params(password: String, username: String).void }
      def initialize(password: nil, username: nil)
        @password = password
        @username = username
      end
    end

    # A request body that contains fields with different formats for testing example generation
    class UsageExamplePostRequestBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # A field called email that will have emails generated as examples
      field :email, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('email') } }
      # A field formatted as an email that will have emails generated as examples
      field :format_email, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('formatEmail') } }
      # A field formatted as a uri that will have uris generated as examples
      field :format_uri, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('formatUri') } }
      # A field formatted as a uuid that will have uuids generated as examples
      field :format_uuid, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('formatUuid') } }
      # A field formatted as a hostname that will have hostnames generated as examples
      field :hostname, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('hostname') } }
      # A field formatted as an ipv4 that will have ipv4s generated as examples
      field :ipv4, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('ipv4') } }
      # A field formatted as an ipv6 that will have ipv6s generated as examples
      field :ipv6, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('ipv6') } }
      # A simple object that uses all our supported primitive types and enums and has optional properties.
      # https://docs.speakeasyapi.dev - A link to the external docs.
      field :simple_object, T.nilable(Shared::SimpleObject), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('simpleObject') } }
      # A field formatted as an unknown that will have random strings generated as examples
      field :unknown, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('unknown') } }
      # A field called uri that will have uris generated as examples
      field :uri, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('uri') } }
      # A field called uuid that will have uuids generated as examples
      field :uuid, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('uuid') } }


      sig { params(email: T.nilable(String), format_email: T.nilable(String), format_uri: T.nilable(String), format_uuid: T.nilable(String), hostname: T.nilable(String), ipv4: T.nilable(String), ipv6: T.nilable(String), simple_object: T.nilable(Shared::SimpleObject), unknown: T.nilable(String), uri: T.nilable(String), uuid: T.nilable(String)).void }
      def initialize(email: nil, format_email: nil, format_uri: nil, format_uuid: nil, hostname: nil, ipv4: nil, ipv6: nil, simple_object: nil, unknown: nil, uri: nil, uuid: nil)
        @email = email
        @format_email = format_email
        @format_uri = format_uri
        @format_uuid = format_uuid
        @hostname = hostname
        @ipv4 = ipv4
        @ipv6 = ipv6
        @simple_object = simple_object
        @unknown = unknown
        @uri = uri
        @uuid = uuid
      end
    end

    # UsageExamplePostEnumParameter - An enum type
    class UsageExamplePostEnumParameter < T::Enum
      enums do
        VALUE1 = new('value1')
        VALUE2 = new('value2')
        VALUE3 = new('value3')
      end
    end


    # UsageExamplePostOptEnumParameter - An enum type
    class UsageExamplePostOptEnumParameter < T::Enum
      enums do
        VALUE1 = new('value1')
        VALUE2 = new('value2')
        VALUE3 = new('value3')
      end
    end



    class UsageExamplePostRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # An bigint parameter
      field :bigint_parameter, Integer, { 'query_param': { 'field_name': 'bigintParameter', 'style': 'form', 'explode': true } }
      # A boolean parameter
      field :bool_parameter, T::Boolean, { 'query_param': { 'field_name': 'boolParameter', 'style': 'form', 'explode': true } }
      # A date parameter
      field :date_parameter, Date, { 'query_param': { 'field_name': 'dateParameter', 'style': 'form', 'explode': true } }
      # A date time parameter
      field :date_time_parameter, DateTime, { 'query_param': { 'field_name': 'dateTimeParameter', 'style': 'form', 'explode': true } }
      # A decimal parameter
      field :decimal_parameter, Float, { 'query_param': { 'field_name': 'decimalParameter', 'style': 'form', 'explode': true } }
      # A double parameter
      field :double_parameter, Float, { 'query_param': { 'field_name': 'doubleParameter', 'style': 'form', 'explode': true } }
      # An enum parameter
      field :enum_parameter, Operations::UsageExamplePostEnumParameter, { 'query_param': { 'field_name': 'enumParameter', 'style': 'form', 'explode': true } }
      # A number parameter that contains a falsey example value
      field :falsey_number_parameter, Float, { 'query_param': { 'field_name': 'falseyNumberParameter', 'style': 'form', 'explode': true } }
      # A float32 parameter
      field :float32_parameter, Float, { 'query_param': { 'field_name': 'float32Parameter', 'style': 'form', 'explode': true } }
      # A float parameter
      field :float_parameter, Float, { 'query_param': { 'field_name': 'floatParameter', 'style': 'form', 'explode': true } }
      # An int64 parameter
      field :int64_parameter, Integer, { 'query_param': { 'field_name': 'int64Parameter', 'style': 'form', 'explode': true } }
      # An integer parameter
      field :int_parameter, Integer, { 'query_param': { 'field_name': 'intParameter', 'style': 'form', 'explode': true } }
      # A string parameter
      field :str_parameter, String, { 'query_param': { 'field_name': 'strParameter', 'style': 'form', 'explode': true } }
      # An enum parameter
      field :opt_enum_parameter, T.nilable(Operations::UsageExamplePostOptEnumParameter), { 'query_param': { 'field_name': 'optEnumParameter', 'style': 'form', 'explode': true } }
      # A request body that contains fields with different formats for testing example generation
      field :request_body, T.nilable(Operations::UsageExamplePostRequestBody), { 'request': { 'media_type': 'application/json' } }


      sig { params(bigint_parameter: Integer, bool_parameter: T::Boolean, date_parameter: Date, date_time_parameter: DateTime, decimal_parameter: Float, double_parameter: Float, enum_parameter: Operations::UsageExamplePostEnumParameter, falsey_number_parameter: Float, float32_parameter: Float, float_parameter: Float, int64_parameter: Integer, int_parameter: Integer, str_parameter: String, opt_enum_parameter: T.nilable(Operations::UsageExamplePostOptEnumParameter), request_body: T.nilable(Operations::UsageExamplePostRequestBody)).void }
      def initialize(bigint_parameter: nil, bool_parameter: nil, date_parameter: nil, date_time_parameter: nil, decimal_parameter: nil, double_parameter: nil, enum_parameter: nil, falsey_number_parameter: nil, float32_parameter: nil, float_parameter: nil, int64_parameter: nil, int_parameter: nil, str_parameter: nil, opt_enum_parameter: nil, request_body: nil)
        @bigint_parameter = bigint_parameter
        @bool_parameter = bool_parameter
        @date_parameter = date_parameter
        @date_time_parameter = date_time_parameter
        @decimal_parameter = decimal_parameter
        @double_parameter = double_parameter
        @enum_parameter = enum_parameter
        @falsey_number_parameter = falsey_number_parameter
        @float32_parameter = float32_parameter
        @float_parameter = float_parameter
        @int64_parameter = int64_parameter
        @int_parameter = int_parameter
        @str_parameter = str_parameter
        @opt_enum_parameter = opt_enum_parameter
        @request_body = request_body
      end
    end


    class UsageExamplePost200ApplicationJSONJSON < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # A field called email that will have emails generated as examples
      field :email, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('email') } }
      # A field formatted as an email that will have emails generated as examples
      field :format_email, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('formatEmail') } }
      # A field formatted as a uri that will have uris generated as examples
      field :format_uri, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('formatUri') } }
      # A field formatted as a uuid that will have uuids generated as examples
      field :format_uuid, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('formatUuid') } }
      # A field formatted as a hostname that will have hostnames generated as examples
      field :hostname, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('hostname') } }
      # A field formatted as an ipv4 that will have ipv4s generated as examples
      field :ipv4, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('ipv4') } }
      # A field formatted as an ipv6 that will have ipv6s generated as examples
      field :ipv6, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('ipv6') } }
      # A simple object that uses all our supported primitive types and enums and has optional properties.
      # https://docs.speakeasyapi.dev - A link to the external docs.
      field :simple_object, T.nilable(Shared::SimpleObject), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('simpleObject') } }
      # A field formatted as an unknown that will have random strings generated as examples
      field :unknown, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('unknown') } }
      # A field called uri that will have uris generated as examples
      field :uri, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('uri') } }
      # A field called uuid that will have uuids generated as examples
      field :uuid, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('uuid') } }


      sig { params(email: T.nilable(String), format_email: T.nilable(String), format_uri: T.nilable(String), format_uuid: T.nilable(String), hostname: T.nilable(String), ipv4: T.nilable(String), ipv6: T.nilable(String), simple_object: T.nilable(Shared::SimpleObject), unknown: T.nilable(String), uri: T.nilable(String), uuid: T.nilable(String)).void }
      def initialize(email: nil, format_email: nil, format_uri: nil, format_uuid: nil, hostname: nil, ipv4: nil, ipv6: nil, simple_object: nil, unknown: nil, uri: nil, uuid: nil)
        @email = email
        @format_email = format_email
        @format_uri = format_uri
        @format_uuid = format_uuid
        @hostname = hostname
        @ipv4 = ipv4
        @ipv6 = ipv6
        @simple_object = simple_object
        @unknown = unknown
        @uri = uri
        @uuid = uuid
      end
    end

    # A response body that contains the simpleObject sent in the request body
    class UsageExamplePost200ApplicationJSON < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :json, Operations::UsageExamplePost200ApplicationJSONJSON, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('json') } }


      sig { params(json: Operations::UsageExamplePost200ApplicationJSONJSON).void }
      def initialize(json: nil)
        @json = json
      end
    end


    class UsageExamplePostResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :content_type, String

      field :status_code, Integer

      field :raw_response, T.nilable(Faraday::Response)
      # A successful response that contains the simpleObject sent in the request body
      field :usage_example_post_200_application_json_object, T.nilable(Operations::UsageExamplePost200ApplicationJSON)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), usage_example_post_200_application_json_object: T.nilable(Operations::UsageExamplePost200ApplicationJSON)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, usage_example_post_200_application_json_object: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @usage_example_post_200_application_json_object = usage_example_post_200_application_json_object
      end
    end
  end
end
