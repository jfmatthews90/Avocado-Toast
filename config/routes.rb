Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :posts
  resources :contacts, only: [:new, :create]

  resources :posts, :users

  resources :posts do
  	resources :comments
	end
	resources :users

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  post 'static_pages/thank_you'

  root 'static_pages#landing_page'

end
