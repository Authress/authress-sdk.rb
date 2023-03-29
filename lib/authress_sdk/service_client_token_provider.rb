require 'date'
require 'json'
require 'logger'
require 'uri'

module AuthressSdk
  class ServiceClientTokenProvider    
    def initialize(client_access_key)
      @client_access_key = client_access_key
    end

    def get_token()
      # TODO: This should use the JWT creation strategy and not the client api token one
      @client_access_key
    end
  end
end
