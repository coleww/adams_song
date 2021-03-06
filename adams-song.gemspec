# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'adams_song/version'

Gem::Specification.new do |spec|
  spec.name          = "adams_song"
  spec.version       = AdamsSong::VERSION
  spec.authors       = ["Cole Willsea"]
  spec.email         = ["coleww@gmail.com"]
  spec.summary       = %q{Patches String class to know whether or not it is a lyric from Adams Song by Blink 182}
  spec.homepage      = "https://github.com/coleww/adams_song"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test)/})
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'test_construct'
  spec.add_development_dependency 'minitest'
end
