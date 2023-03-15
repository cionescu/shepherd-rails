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

  spec.required_ruby_version = '>= 2.7.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/cionescu/shepherd-rails'
  spec.metadata['changelog_uri'] = 'https://github.com/cionescu/shepherd-rails'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  end

  spec.add_dependency 'rails', '>= 7.0.0'
end
