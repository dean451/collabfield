Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'


  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end


end
