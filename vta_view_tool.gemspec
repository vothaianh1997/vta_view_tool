
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "vta_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "vta_view_tool"
  spec.version       = VtaViewTool::VERSION
  spec.authors       = ["vothaianh1997"]
  spec.email         = ["vothainah715@gmail.com"]

  spec.summary       = %q{Common methods that I use in a view}
  spec.description   = %q{At the momment it can only build a copyright.}
  spec.homepage      = "https://github.com/vothaianh1997/vta_view_tool/"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
