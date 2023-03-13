ShepherdRails::Engine.routes.draw do
  resources :tour_statuses, only: [:create], module: :shepherd_rails
end
