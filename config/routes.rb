Rails.application.routes.draw do
  # resources :movies do
  #   resources :bookmarks
  # end

  # resources :lists do
  #   resources :bookmarks
  # end
  # root to: "lists#index"

  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end

end
