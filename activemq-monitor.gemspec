# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "activemq-monitor/version"

Gem::Specification.new do |s|
  s.name        = "activemq-monitor"
  s.version     = Activemq::Monitor::VERSION
  s.authors     = ["Anup Narkhede"]
  s.email       = ["anupnarkhede@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Nothing fancy here}
  s.description = %q{}

  s.rubyforge_project = "activemq-monitor"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = ['activemq-monitor']
  s.require_paths = ["lib"]

  s.add_dependency "stomp", "1.2.0"
  s.add_dependency "json"
end
