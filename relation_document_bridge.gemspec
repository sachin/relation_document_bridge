require_relative 'lib/relation_document_bridge/version'

Gem::Specification.new do |spec|
  spec.name          = "relation_document_bridge"
  spec.version       = RelationDocumentBridge::VERSION
  spec.authors       = ["Sachin Choudhary", "Vikas Verma", "Anshul Sharma", "Uday Gupta"]
  spec.email         = ["sachin238@gmail.com", "vikasvr23@gmail.com", "anshulksharma12@gmail.com", "udaygupta708@gmail.com"]

  spec.summary       = %q{Bridge between ActiveRecord(relational) and MongoId(document)}
  spec.description   = %q{Bridge between ActiveRecord and MongoId}
  spec.homepage      = "https://github.com/sachin/relation_document_bridge"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sachin/relation_document_bridge"
  spec.metadata["changelog_uri"] = "https://github.com/sachin/relation_document_bridge/HISTORY.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Development dependencies

  spec.add_development_dependency 'bundler',        '~> 2.0'
  spec.add_development_dependency 'rake',           '~> 13.0'
  spec.add_development_dependency 'rspec',          '~> 3.0'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'activerecord'
  spec.add_development_dependency 'mongoid'

  # Runtime dependencies

end
