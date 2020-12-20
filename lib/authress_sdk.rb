=begin

=end

Dir["#{File.expand_path(File.dirname(__FILE__))}/**/*.rb"].each{|f| require f}

module AuthressSdk
  class << self
    # Customize default settings for the SDK using block.
    #   AuthressSdk.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    def configure
      AuthressClient.default
    end
  end
end
