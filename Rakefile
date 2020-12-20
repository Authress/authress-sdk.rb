#!/usr/bin/ruby -e

require 'bundler/setup'
require 'bundler/gem_tasks'
require 'fileutils'
require 'rake'
require 'rake/clean'
require 'rubygems'
require 'rubygems/package_task'
require 'rspec/core/rake_task'
require 'tmpdir'

#Environment variables: http://docs.travis-ci.com/user/environment-variables/
PWD = File.dirname(__FILE__)
PKG_DIR = File.join(PWD, 'pkg')
NAME = 'authress-sdk'

begin
  RSpec::Core::RakeTask.new(:spec)

  task :default => [:spec]

  desc "Install new version of #{NAME} locally"
  task :redeploy => [:uninstall, :repackage, :deploy]

  task :after_build => [:display_repository, :publish_git_tag, :merge_downstream]

  task :full_release => [:release, :publish_git_tag]

  GEMSPEC = Gem::Specification.load(Dir['*.gemspec'].first)
  Gem::PackageTask.new(GEMSPEC) {|pkg|}

  task :set_owner do
    system("gem owner #{NAME} -a developers@rhosys.ch")
  end
  
  task :uninstall do
    Bundler.with_clean_env do
      puts %x[gem uninstall -x #{NAME} -a]
    end
  end

  task :deploy do
    Bundler.with_unbundled_env do
      #Create local gem repository for testing
      Dir.chdir(PKG_DIR) do
        FileUtils.rm_rf('gems')
        gem = Dir["*.gem"].first
        FileUtils.mkdir_p('gems')
        FileUtils.cp(gem, 'gems')
        %x[gem generate_index]
      end
      puts %x[gem install pkg/*.gem --no-ri --no-rdoc -u]
    end
  end

  task :publish_git_tag do
    %x[git tag #{GEMSPEC.version}]
    %x[git push origin #{GEMSPEC.version}]
  end
rescue LoadError
  # no rspec available
end
