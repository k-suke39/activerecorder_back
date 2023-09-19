# frozen_string_literal: true

Rails.application.routes.draw do
  root 'api/v1/executions#index'
  namespace :api, format: 'json' do
    namespace :v1 do
      resources :executions, only: [:index] do
        collection do
          get :check
        end
      end
      resources :practices, only: [:index]
      resources :chapters, only: [:index]
    end
  end
  post 'auth/:provider/callback', to: 'api/v1/authentications#create'
end
