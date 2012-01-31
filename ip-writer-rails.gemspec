Gem::Specification.new do |s|
  s.name = "ip-writer-rails"
  s.version = "0.1"
  s.authors     = ["Jonathan Vingiano"]
  s.email       = ["jgv@jonathanvingiano.com"]
  s.homepage    = "http://github.com/jgv/ip-writer-rails"
  
  s.rubyforge_project = "ip-writer-rails"

  s.summary = "Ruby fork of Kim Asendorf's IP Writer"
  s.description = "Read the IP Address of a visitor to your website and tweet it."
  s.files = Dir["lib/**/*"] + + ["MIT-LICENSE", "Rakefile", "README.textile"]
  
  s.add_dependency('twitter')
  
  s.require_paths = ['lib']
end
