Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :posts, only: [:index, :update, :create, :show]
        resources :users, only: [:index, :show, :create, :show]
        post '/login', to: 'auth#create'
        get '/auto_login', to: 'auth#auto_login'
      end
    end
  end
end
