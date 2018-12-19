
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "superbot/runner/side/version"

Gem::Specification.new do |spec|
  spec.name          = "superbot-runner-side"
  spec.version       = Superbot::Runner::Side::VERSION
  spec.authors       = ["Superbot HQ"]

  spec.summary       = "superbot-runner-side"
  spec.homepage      = "https://github.com/superbothq/superbot-runner-side"
  spec.license       = "MIT"

  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "superbot-runner"
end
