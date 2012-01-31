# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ip-writer-rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name = "ip-writer-rails"
  s.version = IPWriter::VERSION
  s.authors     = ["Jonathan Vingiano"]
  s.email       = ["jgv@jonathanvingiano.com"]
  s.homepage    = "http://github.com/jgv/ip-writer-rails"
  
  s.rubyforge_project = "ip-writer-rails"

  s.summary = "Ruby fork of Kim Asendorf's IP Writer"
  s.description = "Read the IP Address of a visitor to your website and tweet it."
  s.files = Dir["lib/*"] + ["MIT-LICENSE", "Rakefile", "README.textile"]
  
  s.add_dependency "rails", "~> 3.0"
  s.add_dependency "twitter"
  
  s.require_paths = ['lib']
end
