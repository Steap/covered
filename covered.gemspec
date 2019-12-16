
require_relative "lib/covered/version"

Gem::Specification.new do |spec|
	spec.name          = "covered"
	spec.version       = Covered::VERSION
	spec.licenses      = ["MIT"]
	spec.authors       = ["Samuel Williams"]
	spec.email         = ["samuel.williams@oriontransfer.co.nz"]

	spec.summary       = "A modern approach to code coverage."
	spec.homepage      = "https://github.com/ioquatix/covered"

	# Specify which files should be added to the gem when it is released.
	spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
		`git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
	end

	spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
	spec.require_paths = ["lib"]
	
	spec.add_dependency "console", "~> 1.0"
	spec.add_dependency "parser"
	spec.add_dependency "msgpack"
	
	spec.add_dependency "async-rest"
	
	spec.add_development_dependency "trenni", "~> 3.6"
	
	spec.add_development_dependency "bundler"
	spec.add_development_dependency "rake", "~> 10.0"
	spec.add_development_dependency "rspec", "~> 3.6"
	spec.add_development_dependency "minitest"
end
