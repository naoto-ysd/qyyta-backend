Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # devise_for :users
  namespace :api do
    namespace :v1 do

      resources :articles, only: %i[count create show destroy] do
        collection do
          get 'articles_count_by_month'
        end
      end

      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }

      namespace :auth do
        resources :sessions, only: %i[index]
      end

    end
  end
end
