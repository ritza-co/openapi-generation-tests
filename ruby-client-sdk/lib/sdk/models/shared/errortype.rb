# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared

    class ErrorType < T::Enum
      enums do
        NOT_FOUND = new('not_found')
        INVALID = new('invalid')
        INTERNAL = new('internal')
      end
    end

  end
end
