# -*- encoding: utf-8 -*-

=begin
#Authress

Client SDK for Authress authorization as a service. Provides managed authorization api to secure service resources including user data.

OpenAPI spec version: v1
Contact: support@authress.io
=end

require 'rdoc'

PULL_REQUEST = nil
BRANCH = ENV['GITHUB_REF']
BUILD_NUMBER = ENV['GITHUB_RUN_NUMBER']

RELEASE_VERSION = case
  #Builds of pull requests
  when !PULL_REQUEST.nil? then "0.#{PULL_REQUEST}"
  #Builds of branches that aren't master or release
  when (BRANCH.nil? || !BRANCH.match(/^(refs\/heads\/)?release[\/-]/i)) then '0.0'
  #Builds of release branches (or locally or on server)
  else BRANCH.match(/^(?:refs\/heads\/)?release[\/-](\d+(?:\.\d+){0,3})$/i)[1]
end
VERSION = Gem::Version.new("#{RELEASE_VERSION}.#{BUILD_NUMBER || '0'}.0")

Gem::Specification.new do |s|
  s.name        = "authress-sdk"
  s.version     = VERSION.to_s
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Rhosys", "Authress"]
  s.email       = ["support@authress.io"]
  s.homepage    = "https://github.com/Authress/authress-sdk.rb"
  s.summary     = "The Authress SDK for Ruby provides authorization as a service with fully compatible REST apis."

  formatter     = RDoc::Markup::ToRdoc.new
  s.description = <<-EOF
    This is the Authress SDK used to integrate with the authorization as a service provider Authress at https://authress.io. The full documentation is available in the Github repo Readme: https://github.com/Authress/authress-sdk.rb.
  EOF
  s.license     = "Apache-2.0"
  s.required_ruby_version = ">= 2.0"

  s.add_runtime_dependency 'typhoeus', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = Dir.glob("{bin,lib}/{**}/{*}", File::FNM_DOTMATCH).select{|f| !(File.basename(f)).match(/^\.+$/)}
  s.extra_rdoc_files = ['README.md']
  # s.test_files  = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
  s.metadata = {
    "bug_tracker_uri"   => "https://github.com/Authress/authress-sdk.rb/issues",
    "changelog_uri"     => "https://github.com/Authress/authress-sdk.rb/CHANGELOG.md",
    "documentation_uri" => "https://github.com/Authress/authress-sdk.rb",
    "homepage_uri"      => "https://github.com/Authress/authress-sdk.rb",
    "source_code_uri"   => "https://github.com/Authress/authress-sdk.rb",
    "wiki_uri"          => "https://github.com/Authress/authress-sdk.rb/wiki"
  }
end
