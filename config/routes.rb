Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  devise_for :admin_users, ActiveAdmin::Devise.config

  get 'home/index'
  # defition of the home page
  root :to => 'home#index'
 

  ActiveAdmin.routes(self)
end
