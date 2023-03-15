class ShepherdRailsGenerator < Rails::Generators::Base
  source_root File.expand_path('../..', __dir__)

  desc 'Generate an initializer'
  def create_initializer_file
    copy_file 'config/shepherd_rails_initializer.rb', 'config/initializers/shepherd_rails.rb'
  end
end
