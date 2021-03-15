Rails.application.routes.draw do
  resources :fish_tweets
  get 'rare_fish_map/index'
  resources :rare_fishes
  devise_for :users
  get 'portfolio/index'
  get 'static_pages/home'
  resources :articles
  get 'welcome/index'
  root 'rare_fish_map#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
