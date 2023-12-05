Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  namespace :api do
    scope 'users', defaults: { format: :json } do
      devise_for :users do
        post '/login', as: :user_session
        delete '/logout', as: :destroy_user_session
        post '/signup', as: :user_registration
      end
    end
  end
end
