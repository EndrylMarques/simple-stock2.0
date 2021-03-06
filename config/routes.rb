Rails.application.routes.draw do
  get 'home/index'

  devise_for :users 
  devise_scope :user do
  authenticated :user do
    root 'home#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end
  resources :products
  resources :categories
  
 root :to => "devise/sessions#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
