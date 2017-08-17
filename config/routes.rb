Rails.application.routes.draw do
  resources :nodes, only: %i(index create update destroy)
  root "nodes#index"
end
