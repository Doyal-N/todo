Rails.application.routes.draw do
  root 'lists#index'

  resources :lists, only: %i[index show], shallow: true do
    resources :items, only: %i[show]
  end
end
