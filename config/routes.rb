Rails.application.routes.draw do

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end

  # get "reviews/:id", to: "reviews#show"
end
