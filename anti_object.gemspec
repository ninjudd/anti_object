lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "anti_object"
  gem.version       = IO.read('VERSION')
  gem.authors       = ["Justin Balthrop"]
  gem.email         = ["git@justinbalthrop.com"]
  gem.description   = %q{Invert any object}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/ninjudd/anti_object"

  gem.add_development_dependency 'shoulda', '3.0.1'
  gem.add_development_dependency 'mocha'
  gem.add_development_dependency 'rake'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
