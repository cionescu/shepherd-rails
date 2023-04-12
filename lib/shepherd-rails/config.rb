module ShepherdRails
  class Config
    cattr_accessor :on_tour_complete, default: ->(context, tour_name) { puts "Completed tour #{tour_name} - context: #{context.inspect}" }
    cattr_accessor :base_controller, default: 'ActionController::Base'
  end
end
