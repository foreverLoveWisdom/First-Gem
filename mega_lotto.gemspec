require_relative 'lib/mega_lotto/version'

Gem::Specification.new do |spec|
  spec.name                          = "first_gem_mega_lotto"
  spec.version                       = MegaLotto::VERSION
  spec.authors                       = ["Tien Do"]
  spec.email                         = ["forever.love.wisdom@gmail.com"]

  spec.summary                       = "Experiment with my first gem"
  spec.description                   = "Experiment with my first gem"
  spec.homepage                      = "https://github.com/foreverLoveWisdom/First-Gem"
  spec.license                       = "MIT"
  spec.required_ruby_version         = Gem::Requirement.new(">= 2.3.0")


  spec.metadata["homepage_uri"]      = spec.homepage
  spec.metadata["source_code_uri"]   = "https://github.com/foreverLoveWisdom/First-Gem"
  spec.metadata["changelog_uri"]     = "https://github.com/foreverLoveWisdom/First-Gem"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files                         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables << 'mega_lotto'
  spec.require_paths = ["lib"]
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rubocop-rspec"
  spec.add_development_dependency "rubocop-rake"
end
