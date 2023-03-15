module ShepherdRails
  class Config
    cattr_accessor :on_tour_complete, default: ->(_ctx) { puts 'Here' }
    cattr_accessor :base_controller, default: 'ActionController::Base'
  end
end
