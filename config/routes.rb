Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bloggers, only: [:index, :show, :new, :create]
  resources :destinations, only: [:index, :show]
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  post "/like/:post_id", to: "posts#like", as: "like"
end
