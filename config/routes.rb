Rails.application.routes.draw do
  get 'home/about' => "homes#about"
  root 'homes#top'
  devise_for :users
  resources :users
  resources :books

  resources :post_images, only: [:new, :create, :index, :show] do
    resources :post_comments, only: [:create, :destroy]
  end
  
end
