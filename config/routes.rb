# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#index'

  post 'auth/:provider/callback', to: 'api/v1/users#create'
  delete 'users/:email', to: 'api/v1/users#destroy', constraints: { email: %r{[^/]+} }
end
