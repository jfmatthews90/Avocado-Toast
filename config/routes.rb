Rails.application.routes.draw do
  resources :posts
  resources :contacts, only: [:new, :create]

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  post 'static_pages/thank_you'

  root 'static_pages#landing_page'

end
