$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "et_gds_design_system/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "et_gds_design_system"
  spec.version     = EtGdsDesignSystem::VERSION
  spec.authors     = ["Gary Taylor"]
  spec.email       = ["gary.taylor@hismessages.com"]
  spec.homepage    = "http://www.google.com"
  spec.summary     = "Summary of EtGdsDesignSystem."
  spec.description = "Description of EtGdsDesignSystem."
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", ">= 6.0"
  spec.add_dependency 'govuk_design_system_formbuilder', '~> 2.1'
  spec.add_dependency 'webpacker', '~> 5.0'
  spec.add_development_dependency "rspec-rails", "~> 4.0"
  spec.add_development_dependency "capybara", "~> 3"
  spec.add_development_dependency "selenium-webdriver", "~> 3.142"
  spec.add_development_dependency "webdrivers", "~> 4.3"
  spec.add_development_dependency "capybara-screenshot", "~> 1.0"
  spec.add_development_dependency "site_prism", "~> 3.5"
  spec.add_development_dependency 'activerecord-nulldb-adapter', '~> 0.4'
end
