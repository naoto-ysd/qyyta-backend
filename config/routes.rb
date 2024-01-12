Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :articles, only: %i[count create show]
    end
  end
end
