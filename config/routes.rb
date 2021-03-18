Rails.application.routes.draw do
  root 'lists#index'

  resources :lists, shallow: true do
    resources :items, except: %i[index show]
  end
end
