# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'textsnatcher/version'

Gem::Specification.new do |spec|
  spec.name          = "textsnatcher"
  spec.version       = Textsnatcher::VERSION
  spec.authors       = ["kenta-s"]
  spec.email         = ["knt01222@gmail.com"]

  spec.summary       = %q{Textsnatcher is to take texts from another website.}
  spec.description   = %q{Textsnatcher lets you take texts from another website with simple settings.}
  spec.homepage      = "https://github.com/kenta-s/textsnatcher"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
