Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/madmin', as: 'rails_admin'
  
  root 'home#index'
end
