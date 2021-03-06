# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'github_authorized_keys/version'

Gem::Specification.new do |spec|
  spec.name          = "github_authorized_keys"
  spec.version       = GithubAuthorizedKeys::VERSION
  spec.authors       = ["Michael D'Auria"]
  spec.email         = ["michael.dauria@gmail.com"]
  spec.description   = %q{Pulls all of the keys for all members of an organization from GitHub}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/crowdtap/github_authorized_keys"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "json", "~> 1.3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
