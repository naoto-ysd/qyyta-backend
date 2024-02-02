Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :articles, only: %i[count create show destroy] do
        collection do
          get 'articles_count_by_month'
        end
      end

      # mount_devise_token_auth_for 'User', at: 'auth'
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }
    end
  end

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

end
