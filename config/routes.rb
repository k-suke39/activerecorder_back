Rails.application.routes.draw do
  root 'api/v1/executions#index'
  namespace :api, format: 'json' do
    namespace :v1 do
      resources :statics, only: [:index]
      resources :executions, only: [:index] do
        collection do
          get :execute
          get :check
        end
      end
      resources :practices, only: [:index] 
      resources :chapters, only: [:index] 
    end
  end
  post 'auth/:provider/callback', to: 'api/v1/authentications#create'
end
