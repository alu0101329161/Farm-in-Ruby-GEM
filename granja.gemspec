require_relative 'lib/granja/version'

Gem::Specification.new do |spec|
  spec.name          = "granja"
  spec.version       = Granja::VERSION
  spec.authors       = ["alu0101329161"]
  spec.email         = ["alu0101329161@ull.edu.es"]

  spec.summary       = %q{Ruby necesita este simulador de granja .}
  spec.description   = %q{Esta gema emplea funciones y datos de la granja.}
  spec.homepage      = "https://github.com/ULL-ESIT-LPP-2122/granja-alu0101329161"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

 # spec.metadata["homepage_uri"] = spec.homepage
 # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
 # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
