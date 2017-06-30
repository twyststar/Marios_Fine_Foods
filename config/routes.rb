Rails.application.routes.draw do
  get 'home/home'
  get 'about/index' 
  root :to => 'home#home'

  resources :products do
    resources :reviews
  end
end
