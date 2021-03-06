
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "exchange_rate/version"

Gem::Specification.new do |spec|
  spec.name          = "exchange_rate"
  spec.version       = ExchangeRate::VERSION
  spec.authors       = ["Marta Beveridge"]
  spec.email         = ["marta@beveridge.uk"]

  spec.summary       = %q{A Ruby gem for currency conversion. Accepts input of date and two currencies and returns the exchange rate. Gem made as part of a coding test.}
  spec.description   = %q{This gem works with the European Central Bank up to date foreign exchange reference rates. It takes an input of the date, i.e. today and two currencies in the typical three-character abbreviations i.e. USD, GBP. This project was built as a coding test.}
  spec.homepage      = "https://github.com/martabeveridge/exchange-rate"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rubocop", "~> 0.49.0"
  spec.add_development_dependency "pry", "~> 0.10.4"

  spec.add_dependency "xml-simple", "~> 1.1.5"
end
