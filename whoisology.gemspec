# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'whoisology/version'

Gem::Specification.new do |spec|
  spec.name          = "whoisology"
  spec.version       = Whoisology::VERSION
  spec.authors       = ["jcran"]
  spec.email         = ["jcran@pentestify.com"]

  spec.summary       = %q{API client for the whoisology API.}
  spec.description   = %q{API client for the whoisology API. whoisology is a search engine that allows computer scientists to ask questions about the devices and networks that compose the Internet. Driven by Internet-wide scanning, whoisology lets researchers find specific hosts and create aggregate reports on how devices, websites, and certificates are configured and deployed.}
  spec.homepage      = "https://whoisology.io"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rest-client", "~> 1.8.0"
end
