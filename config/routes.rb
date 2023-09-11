# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#index'

  post 'auth/:provider/callback', to: 'api/v1/users#create'
end
