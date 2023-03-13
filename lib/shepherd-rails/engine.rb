# frozen_string_literal: true

module ShepherdRails
  class Engine < ::Rails::Engine
    isolate_namespace ShepherdRails

    config.generators do |g|
      g.test_framework :rspec
      g.assets false
      g.helper false
    end

    initializer 'shepherd_rails.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper ShepherdRails::ApplicationHelper
      end
    end
  end
end
