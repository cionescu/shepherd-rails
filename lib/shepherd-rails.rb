require 'shepherd-rails/version'
require 'shepherd-rails/engine'
require 'shepherd-rails/config'

module ShepherdRails
  class << self
    attr_accessor :configuration

    def configure
      self.configuration ||= Config.new
      yield(configuration)
    end
  end
end
