require 'date'
require 'json'
require 'logger'
require 'tempfile'
require 'typhoeus'
require 'uri'

module AuthressSdk
  class ServiceClientTokenProvider    
    def initialize(client_access_key)
      @client_access_key = client_access_key
    end

    def get_token()
      @client_access_key
    end
  end
end
