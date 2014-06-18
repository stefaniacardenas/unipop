Rails.application.routes.draw do
  resources :chatrooms, only: [:index]

  resources :listings do
    resource :map
    resources :buyers do
      resource :chat
    end
    resource :chatroom do
      resources :comments
    end
    resources :image_containers
  end

  get 'dashboards/show'

  get 'dashboard/show'


  root 'listings#index'

  resource :dashboard #, :only => [:index]

  devise_for :users, :controllers => { :registrations => "registrations" }
  get 'user/pops' => 'users#show'
  resources :users, :only => [:show]

end

