require 'date'
require 'json'
require 'logger'
require 'tempfile'
require 'typhoeus'
require 'uri'

module AuthressSdk
  class ConstantTokenProvider
   
    def initialize(access_token)
      @access_token = access_token
    end

    def get_token
      @access_token
    end
  end
end
