require 'base64'
require 'uri'
require 'json'

module AuthressSdk
  class TokenValidationError < StandardError
    attr_reader :error_reason
    def initialize(msg)
      @error_reason = msg
      super(msg)
    end
  end
end