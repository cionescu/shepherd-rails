ShepherdRails::Engine.routes.draw do
  resources :tour_statuses, only: [:create]
end
