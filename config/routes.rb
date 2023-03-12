Rails.application.routes.draw do
  namespace :admin do
    resources :order_details, only: [:update]
  end
  
  namespace :admin do
    resources :orders, only: [:show, :update]
  end
  
  namespace :admin do
    resources :customers, only: [:index, :show, :edit, :update]
  end
  
  namespace :admin do
    resources :genres, only: [:index, :create, :edit, :update]
  end
  
  namespace :admin do
    resources :items, except: [:destroy]
  end
  
  namespace :admin do
    root to: 'homes#top'
  end
  
  resources :addresses, except: [:new, :show]
  
  resources :orders, only: [:new, :create, :index, :show]
  post 'orders/confirm'
  get 'orders/complete'
  
  resources :cart_items, only: [:index, :update, :destroy, :create]
  delete 'cart_items/destroy_all'

  get 'customers/my_page' => 'customers#show'
  get 'customers/information/edit' => 'customers#edit'
  patch 'customers/information' => 'customers#update'
  get 'customers/unsubscribe' => 'customers#unsubscribe'
  patch 'customers/withdraw' => 'customers#withdraw'
  
  resources :items, only: [:index, :show]

  root to: 'homes#top'
  get 'about' => 'homes#about'
  
  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
