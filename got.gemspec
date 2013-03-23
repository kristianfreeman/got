require File.join(File.dirname(__FILE__), "lib", "version")

Gem::Specification.new do |s|
  s.name = "got"
  s.version = Got::VERSION
  s.authors = ["Kristian Freeman"]
  s.email = ["kristian@kristianfreeman.com"]
  s.homepage = "http://github.com/imkmf/got"
  s.description = s.summary = "You meant git."

  s.platform = Gem::Platform::RUBY
  s.has_rdoc = false

  s.executables << 'got'
  s.add_dependency("launchy")

  s.require_path = 'lib'
  s.files = %w(LICENSE README.md NOTICE) + Dir.glob("{lib}/**/*")
end
