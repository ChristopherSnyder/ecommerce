Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :pages
  get 'welcome/index'

  root 'welcome#index'

  get '/products/', to: 'products#index', as: 'product'

  get '/products/bycategory/:id', to: 'products#bycategory', as: 'category'

  get '/products/show/:id', to: 'products#show', as: 'show'

  get '/login/', to: 'users#login', as: 'login'

  post '/login/', to: 'users#processlogin', as: 'processlogin'

  get '/logout/', to: 'users#logout', as: 'logout'

end
