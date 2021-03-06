# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hqi/version'

Gem::Specification.new do |spec|
  spec.name          = "hqi"
  spec.version       = Hqi::VERSION
  spec.authors       = ["Dr. Hualiang Qi"]
  spec.email         = ["hualiang.qi@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{Write a short summary, because Rubygems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/boostpy/MyFirstRuby.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  
  # use rspec
  spec.add_development_dependency "rspec"
  # rspec-nc for mac?
  #spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  # conflict pry version with pry-nav durching call rake rspec
  #spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "crimp"
  spec.add_development_dependency "coveralls"
end
