# -*- encoding: utf-8 -*-
require File.expand_path('../lib/session-share/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Atsuya Takagi"]
  gem.email         = ["asoftonight@gmail.com"]
  gem.description   = %q{session-share}
  gem.summary       = %q{session-share}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "session-share"
  gem.require_paths = ["lib"]
  gem.version       = Session::Share::VERSION
end
