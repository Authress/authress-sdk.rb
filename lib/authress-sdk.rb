=begin

=end

Dir["#{File.expand_path(File.dirname(__FILE__))}/**/*.rb"].each{|f| require f}

module AuthressSdk
  class << self
    # Customize default settings for the SDK using block.
    #   AuthressSdk.configure do |config|
    #     config.base_url = "xxx"
    #   end
    def configure
      yield AuthressClient.default
    end
  end
end
