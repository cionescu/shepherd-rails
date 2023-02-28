require_relative 'lib/shepherd-rails/version'

Gem::Specification.new do |spec|
  spec.name        = 'shepherd-rails'
  spec.version     = ShepherdRails::VERSION
  spec.authors     = ['Catalin Ionescu']
  spec.email       = ['catalin.ionescu282@gmail.com']
  spec.homepage    = 'https://github.com/cionescu/shepherd-rails'
  spec.summary     = 'A modern wrapper for using Shepherd.js with Ruby on Rails'
  spec.description = 'A modern wrapper for using Shepherd.js with Ruby on Rails'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = "https://github.com/cionescu/shepherd-rails"
  spec.metadata['changelog_uri'] = "https://github.com/cionescu/shepherd-rails"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  end

  spec.add_dependency 'rails', '>= 7.0.4'
end
