Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :movies, only: %I[index show]

  resources :lists, only: %I[index show new create edit update] do
    resources :bookmarks, only: %I[create]
  end
  resources :bookmarks, only: %I[destroy]
end
