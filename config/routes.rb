Rails.application.routes.draw do
  
  devise_for :users, :controllers => {:registrations => "registrations"}

  devise_scope :user do
      get 'login', to: 'devise/sessions#new'
      get 'signup', to: 'devise/registrations#new'
    end  

  get 'pages/home'


  get 'pages/about'

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
