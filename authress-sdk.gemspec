# -*- encoding: utf-8 -*-

=begin
#Authress

Client SDK for Authress authorization as a service. Provides managed authorization api to secure service resources including user data.

OpenAPI spec version: v1
Contact: support@authress.io
=end

PULL_REQUEST = nil
BRANCH = ENV['GITHUB_REF']
BUILD_NUMBER = ENV['GITHUB_RUN_NUMBER']

RELEASE_VERSION = case
  #Builds of pull requests
  when !PULL_REQUEST.nil? then "0.#{PULL_REQUEST}"
  #Builds of branches that aren't master or release
  when (BRANCH.nil? || !BRANCH.match(/^(refs\/heads\/)?release[\/-]/i)) then '0.0'
  #Builds of release branches (or locally or on server)
  else BRAND.match(/^(?:refs\/heads\/)?release[\/-](\d+(?:\.\d+){0,3})$/i)[1]
end
VERSION = Gem::Version.new("#{RELEASE_VERSION}.#{BUILD_NUMBER || '0'}.0")

Gem::Specification.new do |s|
  s.name        = "authress-sdk"
  s.version     = VERSION.to_s
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Rhosys", "Authress"]
  s.email       = ["support@authress.io"]
  s.homepage    = "https://authress.io"
  s.summary     = "Authress SDK"
  s.description = File.read(File.expand_path("./README.md"))
  s.license     = "Apache-2.0"
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = Dir.glob("{bin,lib}/{**}/{*}", File::FNM_DOTMATCH).select{|f| !(File.basename(f)).match(/^\.+$/)}
  # s.test_files  = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
