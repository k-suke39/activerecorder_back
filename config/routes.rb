Rails.application.routes.draw do
  namespace :api, format: 'json' do
    namespace :v1 do
      resources :statics, only: [:index]
      resources :executions, only: [] do
        collection do
          get :execute
        end
      end
      resources :answers, only: [] do
        collection do
          get :check
          get :confirm
        end
      end
      resources :practices, only: [:index] 
    end
  end
  post 'auth/:provider/callback', to: 'api/v1/authentications#create'
end
