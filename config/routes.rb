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

  get '/register/', to: 'users#register', as: 'register'

  post '/register/', to: 'users#processregister', as: 'processregister'

  get '/mycart/', to: 'users#mycart', as: 'mycart'

  get '/mycart/lowerquantity/:id', to: 'cart#lowerquantity', as: 'lowerquantity'

  get '/mycart/increasequantity/:id', to: 'cart#increasequantity', as: 'increasequantity'

  get '/mycart/removeitem/:id', to: 'cart#removeitem', as: 'removeitem'

  get '/mycart/additem/:id', to: 'cart#additem', as: 'additem'

  get 'mycart/checkout', to: 'cart#checkout', as: 'checkout'

  get '/myprofile', to: 'users#myprofile', as: 'profile'

  get '/adminpanel', to: 'adminpanel#index', as: 'adminindex'

  get '/adminpanel/shiporder/:id', to: 'adminpanel#shiporder', as: 'shiporder'

end
