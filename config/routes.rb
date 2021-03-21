Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :posts
  resources :users, only: [:show, :edit, :update]
  get 'posts/like/:id' => 'posts#like', as: "like_posts"
end
