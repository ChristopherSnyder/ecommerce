Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'welcome/index'

  root 'welcome#index'

  get '/products/', to: 'products#index', as: 'product'

  get '/products/bycategory', to: 'products#bycategory', as: 'category'

end
