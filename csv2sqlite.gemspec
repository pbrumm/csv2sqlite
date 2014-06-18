# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'csv2sqlite/version'

Gem::Specification.new do |spec|
  spec.name          = "csv2sqlite"
  spec.version       = Csv2sqlite::VERSION
  spec.authors       = ["Pete Brumm"]
  spec.email         = ["pete@petebrumm.com"]
  spec.summary       = %q{Provides a simple command line tool for converting directory of csv's to sqlite tables}
  spec.description   = %q{if ssconvert from gnumeric is installed it can convert xls and xlsx as well (single sheet)}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_dependency "activesupport"
  spec.add_dependency "activerecord"
  spec.add_dependency "sqlite3"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
